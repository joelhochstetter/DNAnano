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
	<24.469637, 35.542221, 34.680733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329601, 35.218376, 34.869186>,  <24.245579, 35.024071, 34.982258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329601, 35.218376, 34.869186>,  <24.469637, 35.542221, 34.680733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329601, 35.218376, 34.869186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713928, 0.556232, 0.425339,
		-0.606418, -0.187448, -0.772736,
		-0.350091, -0.809611, 0.471133,
		24.224573, 34.975494, 35.010525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690262, 35.990559, 34.181248>,  <24.469637, 35.542221, 34.680733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690262, 35.990559, 34.181248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797125, 36.251251, 34.465183>,  <24.861242, 36.407665, 34.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797125, 36.251251, 34.465183>,  <24.690262, 35.990559, 34.181248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797125, 36.251251, 34.465183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936632, -0.002404, -0.350307,
		-0.226599, 0.758449, -0.611071,
		0.267159, 0.651728, 0.709843,
		24.877272, 36.446770, 34.678135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945763, 36.616638, 33.905315>,  <24.690262, 35.990559, 34.181248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945763, 36.616638, 33.905315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129688, 36.556820, 34.255447>,  <25.240044, 36.520927, 34.465527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129688, 36.556820, 34.255447>,  <24.945763, 36.616638, 33.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129688, 36.556820, 34.255447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887014, 0.030526, -0.460733,
		0.042180, 0.988284, 0.146684,
		0.459813, -0.149545, 0.875333,
		25.267632, 36.511955, 34.518047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436720, 37.229633, 33.912861>,  <24.945763, 36.616638, 33.905315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436720, 37.229633, 33.912861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589851, 36.975952, 34.181553>,  <25.681730, 36.823742, 34.342770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589851, 36.975952, 34.181553>,  <25.436720, 37.229633, 33.912861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589851, 36.975952, 34.181553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915877, 0.355694, -0.186149,
		-0.120875, 0.686488, 0.717024,
		0.382831, -0.634205, 0.671733,
		25.704700, 36.785690, 34.383072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831171, 37.523914, 34.572289>,  <25.436720, 37.229633, 33.912861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831171, 37.523914, 34.572289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960569, 37.178303, 34.417984>,  <26.038208, 36.970936, 34.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960569, 37.178303, 34.417984>,  <25.831171, 37.523914, 34.572289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960569, 37.178303, 34.417984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865529, 0.434944, -0.248361,
		0.382373, -0.253539, 0.888543,
		0.323497, -0.864026, -0.385756,
		26.057619, 36.919094, 34.302258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518419, 37.187519, 34.898968>,  <25.831171, 37.523914, 34.572289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518419, 37.187519, 34.898968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458504, 37.056656, 34.525761>,  <26.422554, 36.978138, 34.301834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458504, 37.056656, 34.525761>,  <26.518419, 37.187519, 34.898968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458504, 37.056656, 34.525761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949420, 0.215809, -0.228096,
		0.275979, -0.919996, 0.278288,
		-0.149790, -0.327162, -0.933021,
		26.413567, 36.958508, 34.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300894, 36.555771, 34.924068>,  <26.518419, 37.187519, 34.898968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300894, 36.555771, 34.924068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210787, 36.295635, 34.633877>,  <26.156723, 36.139553, 34.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210787, 36.295635, 34.633877>,  <26.300894, 36.555771, 34.924068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210787, 36.295635, 34.633877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315220, -0.753217, 0.577322,
		-0.921895, -0.098632, 0.374676,
		-0.225270, -0.650335, -0.725478,
		26.143206, 36.100536, 34.416233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830025, 35.951504, 35.063366>,  <26.300894, 36.555771, 34.924068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830025, 35.951504, 35.063366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056395, 35.826813, 34.758064>,  <26.192217, 35.751999, 34.574883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056395, 35.826813, 34.758064>,  <25.830025, 35.951504, 35.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056395, 35.826813, 34.758064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164590, -0.864410, 0.475084,
		-0.807860, -0.394486, -0.437885,
		0.565927, -0.311730, -0.763251,
		26.226171, 35.733295, 34.529087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471636, 35.282608, 34.768764>,  <25.830025, 35.951504, 35.063366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471636, 35.282608, 34.768764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817038, 35.260555, 34.568237>,  <26.024279, 35.247322, 34.447922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817038, 35.260555, 34.568237>,  <25.471636, 35.282608, 34.768764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817038, 35.260555, 34.568237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067336, -0.972504, 0.222940,
		-0.499828, -0.226266, -0.836048,
		0.863503, -0.055136, -0.501320,
		26.076088, 35.244015, 34.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478367, 34.752197, 34.303894>,  <25.471636, 35.282608, 34.768764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478367, 34.752197, 34.303894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874931, 34.803410, 34.314594>,  <26.112869, 34.834137, 34.321014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874931, 34.803410, 34.314594>,  <25.478367, 34.752197, 34.303894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874931, 34.803410, 34.314594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130279, -0.984751, -0.115296,
		0.011579, 0.117791, -0.992971,
		0.991410, 0.128029, 0.026748,
		26.172354, 34.841820, 34.322620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678890, 34.415215, 33.764904>,  <25.478367, 34.752197, 34.303894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678890, 34.415215, 33.764904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981134, 34.440792, 34.025661>,  <26.162481, 34.456139, 34.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981134, 34.440792, 34.025661>,  <25.678890, 34.415215, 33.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981134, 34.440792, 34.025661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092589, -0.995658, -0.009654,
		0.648444, 0.067652, -0.758250,
		0.755611, 0.063946, 0.651892,
		26.207817, 34.459976, 34.221230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003408, 33.819679, 33.688309>,  <25.678890, 34.415215, 33.764904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003408, 33.819679, 33.688309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120773, 33.921490, 34.056900>,  <26.191193, 33.982578, 34.278053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120773, 33.921490, 34.056900>,  <26.003408, 33.819679, 33.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120773, 33.921490, 34.056900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163806, -0.963035, 0.213850,
		0.941848, 0.088197, -0.324260,
		0.293413, 0.254530, 0.921479,
		26.208797, 33.997849, 34.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701952, 33.674412, 33.732235>,  <26.003408, 33.819679, 33.688309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701952, 33.674412, 33.732235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450525, 33.649639, 34.042351>,  <26.299669, 33.634773, 34.228420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450525, 33.649639, 34.042351>,  <26.701952, 33.674412, 33.732235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450525, 33.649639, 34.042351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003990, -0.997068, -0.076416,
		0.777746, -0.044939, 0.626970,
		-0.628566, -0.061934, 0.775287,
		26.261955, 33.631058, 34.274937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918629, 33.110237, 34.080315>,  <26.701952, 33.674412, 33.732235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918629, 33.110237, 34.080315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527859, 33.140949, 34.160030>,  <26.293396, 33.159378, 34.207859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527859, 33.140949, 34.160030>,  <26.918629, 33.110237, 34.080315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527859, 33.140949, 34.160030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091646, -0.993573, -0.066433,
		0.192912, -0.083164, 0.977685,
		-0.976927, 0.076785, 0.199294,
		26.234781, 33.163986, 34.219818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545713, 33.297276, 34.687714>,  <26.918629, 33.110237, 34.080315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545713, 33.297276, 34.687714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766197, 33.554745, 34.475357>,  <26.898487, 33.709229, 34.347942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766197, 33.554745, 34.475357>,  <26.545713, 33.297276, 34.687714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766197, 33.554745, 34.475357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466203, 0.765293, 0.443826,
		0.691970, 0.002864, 0.721921,
		0.551210, 0.643675, -0.530895,
		26.931561, 33.747849, 34.316090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822353, 33.822868, 35.189495>,  <26.545713, 33.297276, 34.687714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822353, 33.822868, 35.189495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802206, 33.972843, 34.819221>,  <26.790117, 34.062828, 34.597057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802206, 33.972843, 34.819221>,  <26.822353, 33.822868, 35.189495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802206, 33.972843, 34.819221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375370, 0.851796, 0.365432,
		0.925505, 0.365880, 0.097833,
		-0.050370, 0.374933, -0.925682,
		26.787094, 34.085323, 34.541515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082508, 34.545311, 35.129414>,  <26.822353, 33.822868, 35.189495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082508, 34.545311, 35.129414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865154, 34.516315, 34.794872>,  <26.734743, 34.498920, 34.594147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865154, 34.516315, 34.794872>,  <27.082508, 34.545311, 35.129414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865154, 34.516315, 34.794872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242385, 0.967382, 0.073637,
		0.803732, 0.242731, -0.543228,
		-0.543383, -0.072486, -0.836350,
		26.702139, 34.494568, 34.543968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471516, 34.966297, 34.516640>,  <27.082508, 34.545311, 35.129414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471516, 34.966297, 34.516640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080097, 34.932026, 34.441696>,  <26.845245, 34.911465, 34.396732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080097, 34.932026, 34.441696>,  <27.471516, 34.966297, 34.516640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080097, 34.932026, 34.441696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026353, 0.954007, -0.298623,
		0.204325, -0.287279, -0.935800,
		-0.978549, -0.085678, -0.187357,
		26.786533, 34.906322, 34.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307007, 35.258896, 33.902119>,  <27.471516, 34.966297, 34.516640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307007, 35.258896, 33.902119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932989, 35.243053, 34.043041>,  <26.708578, 35.233547, 34.127594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932989, 35.243053, 34.043041>,  <27.307007, 35.258896, 33.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932989, 35.243053, 34.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179898, 0.909307, -0.375231,
		-0.305493, -0.414238, -0.857369,
		-0.935046, -0.039609, 0.352307,
		26.652475, 35.231171, 34.148735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773825, 35.440044, 33.376038>,  <27.307007, 35.258896, 33.902119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773825, 35.440044, 33.376038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628134, 35.529091, 33.737762>,  <26.540718, 35.582520, 33.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628134, 35.529091, 33.737762>,  <26.773825, 35.440044, 33.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628134, 35.529091, 33.737762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226038, 0.920847, -0.317723,
		-0.903462, -0.320134, -0.285081,
		-0.364230, 0.222611, 0.904313,
		26.518866, 35.595875, 34.009056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061007, 35.621601, 33.350128>,  <26.773825, 35.440044, 33.376038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061007, 35.621601, 33.350128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231539, 35.802521, 33.663475>,  <26.333858, 35.911072, 33.851482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231539, 35.802521, 33.663475>,  <26.061007, 35.621601, 33.350128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231539, 35.802521, 33.663475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302467, 0.887449, -0.347776,
		-0.852500, -0.088677, 0.515151,
		0.426331, 0.452295, 0.783372,
		26.359438, 35.938210, 33.898487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672503, 36.089828, 33.800819>,  <26.061007, 35.621601, 33.350128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672503, 36.089828, 33.800819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044533, 36.236774, 33.801598>,  <26.267752, 36.324940, 33.802067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044533, 36.236774, 33.801598>,  <25.672503, 36.089828, 33.800819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044533, 36.236774, 33.801598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363652, 0.921413, -0.136952,
		-0.052107, 0.126667, 0.990576,
		0.930076, 0.367361, 0.001949,
		26.323555, 36.346981, 33.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707125, 36.440304, 33.169121>,  <25.672503, 36.089828, 33.800819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707125, 36.440304, 33.169121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652451, 36.679897, 32.853516>,  <25.619646, 36.823654, 32.664154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652451, 36.679897, 32.853516>,  <25.707125, 36.440304, 33.169121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652451, 36.679897, 32.853516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033512, 0.793232, 0.607996,
		0.990047, 0.109546, -0.088351,
		-0.136686, 0.598984, -0.789009,
		25.611444, 36.859592, 32.616814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220985, 36.937149, 33.006668>,  <25.707125, 36.440304, 33.169121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220985, 36.937149, 33.006668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850946, 37.056831, 32.913143>,  <25.628923, 37.128639, 32.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850946, 37.056831, 32.913143>,  <26.220985, 36.937149, 33.006668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850946, 37.056831, 32.913143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060434, 0.723902, 0.687250,
		0.374886, 0.621644, -0.687763,
		-0.925099, 0.299205, -0.233813,
		25.573418, 37.146591, 32.842999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408688, 37.657555, 33.127262>,  <26.220985, 36.937149, 33.006668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408688, 37.657555, 33.127262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441132, 37.880753, 33.457611>,  <26.460598, 38.014671, 33.655819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441132, 37.880753, 33.457611>,  <26.408688, 37.657555, 33.127262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441132, 37.880753, 33.457611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870098, -0.443804, 0.214401,
		0.486159, 0.701199, -0.521507,
		0.081109, 0.557995, 0.825871,
		26.465464, 38.048153, 33.705372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026134, 37.895199, 33.130688>,  <26.408688, 37.657555, 33.127262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026134, 37.895199, 33.130688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915159, 37.938656, 33.512520>,  <26.848574, 37.964729, 33.741619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915159, 37.938656, 33.512520>,  <27.026134, 37.895199, 33.130688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915159, 37.938656, 33.512520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876233, -0.378866, 0.297785,
		0.394010, 0.919053, 0.009915,
		-0.277437, 0.108642, 0.954581,
		26.831928, 37.971249, 33.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578857, 38.160480, 33.614262>,  <27.026134, 37.895199, 33.130688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578857, 38.160480, 33.614262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322590, 37.936386, 33.824280>,  <27.168829, 37.801929, 33.950291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322590, 37.936386, 33.824280>,  <27.578857, 38.160480, 33.614262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322590, 37.936386, 33.824280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761029, -0.372618, 0.531028,
		-0.101859, 0.739791, 0.665082,
		-0.640671, -0.560237, 0.525048,
		27.130388, 37.768314, 33.981792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649727, 38.204060, 34.363411>,  <27.578857, 38.160480, 33.614262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649727, 38.204060, 34.363411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475061, 37.844624, 34.346115>,  <27.370262, 37.628963, 34.335739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475061, 37.844624, 34.346115>,  <27.649727, 38.204060, 34.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475061, 37.844624, 34.346115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675630, -0.359294, 0.643763,
		-0.594011, 0.251896, 0.764002,
		-0.436663, -0.898585, -0.043236,
		27.344063, 37.575047, 34.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515791, 38.799274, 34.633362>,  <27.649727, 38.204060, 34.363411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515791, 38.799274, 34.633362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627520, 38.808533, 35.017330>,  <27.694557, 38.814087, 35.247711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627520, 38.808533, 35.017330>,  <27.515791, 38.799274, 34.633362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627520, 38.808533, 35.017330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774305, 0.596626, 0.210922,
		-0.567830, -0.802185, 0.184575,
		0.279321, 0.023149, 0.959919,
		27.711315, 38.815479, 35.305305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083965, 38.560738, 35.033634>,  <27.515791, 38.799274, 34.633362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083965, 38.560738, 35.033634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262844, 38.863491, 35.224270>,  <27.370171, 39.045143, 35.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262844, 38.863491, 35.224270>,  <27.083965, 38.560738, 35.033634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262844, 38.863491, 35.224270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870297, 0.491167, 0.036586,
		-0.206395, -0.431139, 0.878362,
		0.447196, 0.756885, 0.476594,
		27.397003, 39.090557, 35.367249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424088, 38.701626, 35.418079>,  <27.083965, 38.560738, 35.033634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424088, 38.701626, 35.418079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695656, 38.993748, 35.448334>,  <26.858597, 39.169022, 35.466488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695656, 38.993748, 35.448334>,  <26.424088, 38.701626, 35.418079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695656, 38.993748, 35.448334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733824, 0.678297, 0.037611,
		-0.023838, -0.081041, 0.996426,
		0.678921, 0.730305, 0.075640,
		26.899332, 39.212841, 35.471027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183508, 39.094837, 35.971134>,  <26.424088, 38.701626, 35.418079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183508, 39.094837, 35.971134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385328, 39.316849, 35.706596>,  <26.506420, 39.450054, 35.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385328, 39.316849, 35.706596>,  <26.183508, 39.094837, 35.971134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385328, 39.316849, 35.706596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826275, 0.532565, -0.183426,
		0.250400, 0.638997, 0.727312,
		0.504549, 0.555029, -0.661341,
		26.536694, 39.483356, 35.508194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091976, 39.715664, 36.195148>,  <26.183508, 39.094837, 35.971134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091976, 39.715664, 36.195148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184641, 39.765339, 35.809216>,  <26.240240, 39.795143, 35.577656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184641, 39.765339, 35.809216>,  <26.091976, 39.715664, 36.195148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184641, 39.765339, 35.809216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824314, 0.551726, -0.126906,
		0.516566, 0.824727, 0.230185,
		0.231662, 0.124190, -0.964837,
		26.254139, 39.802597, 35.519764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073147, 40.462700, 35.928852>,  <26.091976, 39.715664, 36.195148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073147, 40.462700, 35.928852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981440, 40.162350, 35.681103>,  <25.926416, 39.982140, 35.532452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981440, 40.162350, 35.681103>,  <26.073147, 40.462700, 35.928852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981440, 40.162350, 35.681103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906348, 0.396711, -0.145446,
		0.354924, 0.528021, -0.771507,
		-0.229267, -0.750876, -0.619373,
		25.912661, 39.937088, 35.495289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000557, 40.622444, 35.137871>,  <26.073147, 40.462700, 35.928852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000557, 40.622444, 35.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774523, 40.337555, 35.304447>,  <25.638903, 40.166622, 35.404392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774523, 40.337555, 35.304447>,  <26.000557, 40.622444, 35.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774523, 40.337555, 35.304447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805486, 0.585480, -0.091680,
		-0.178519, -0.387242, -0.904530,
		-0.565087, -0.712220, 0.416438,
		25.604998, 40.123890, 35.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229130, 40.839905, 35.092369>,  <26.000557, 40.622444, 35.137871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229130, 40.839905, 35.092369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400639, 40.483318, 35.033794>,  <25.503544, 40.269367, 34.998650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400639, 40.483318, 35.033794>,  <25.229130, 40.839905, 35.092369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400639, 40.483318, 35.033794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528598, -0.116116, -0.840893,
		0.732624, 0.437958, -0.521014,
		0.428774, -0.891465, -0.146435,
		25.529270, 40.215878, 34.989864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536148, 40.862179, 34.451035>,  <25.229130, 40.839905, 35.092369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536148, 40.862179, 34.451035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524010, 40.464088, 34.488152>,  <25.516727, 40.225235, 34.510422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524010, 40.464088, 34.488152>,  <25.536148, 40.862179, 34.451035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524010, 40.464088, 34.488152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264447, -0.081532, -0.960948,
		0.963923, -0.053699, -0.260710,
		-0.030346, -0.995223, 0.092791,
		25.514906, 40.165520, 34.515987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833874, 40.604668, 33.819546>,  <25.536148, 40.862179, 34.451035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833874, 40.604668, 33.819546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628864, 40.299038, 33.976265>,  <25.505859, 40.115658, 34.070297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628864, 40.299038, 33.976265>,  <25.833874, 40.604668, 33.819546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628864, 40.299038, 33.976265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402940, -0.188915, -0.895517,
		0.758262, -0.616842, -0.211055,
		-0.512521, -0.764079, 0.391797,
		25.475107, 40.069813, 34.093803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989107, 40.065075, 33.471767>,  <25.833874, 40.604668, 33.819546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989107, 40.065075, 33.471767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627113, 40.024914, 33.637138>,  <25.409916, 40.000816, 33.736362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627113, 40.024914, 33.637138>,  <25.989107, 40.065075, 33.471767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627113, 40.024914, 33.637138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368951, -0.298656, -0.880159,
		0.211841, -0.949065, 0.233237,
		-0.904985, -0.100401, 0.413426,
		25.355618, 39.994793, 33.761166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946537, 39.773590, 34.220139>,  <25.989107, 40.065075, 33.471767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946537, 39.773590, 34.220139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055531, 39.979198, 34.545479>,  <26.120926, 40.102562, 34.740685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055531, 39.979198, 34.545479>,  <25.946537, 39.773590, 34.220139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055531, 39.979198, 34.545479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786251, -0.606202, 0.119702,
		0.554584, 0.606882, -0.569326,
		0.272481, 0.514018, 0.813351,
		26.137276, 40.133404, 34.789486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667953, 39.920670, 34.289425>,  <25.946537, 39.773590, 34.220139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667953, 39.920670, 34.289425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552395, 39.928886, 34.672279>,  <26.483059, 39.933815, 34.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552395, 39.928886, 34.672279>,  <26.667953, 39.920670, 34.289425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552395, 39.928886, 34.672279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869779, -0.412118, 0.271373,
		0.400028, 0.910899, 0.101195,
		-0.288897, 0.020539, 0.957140,
		26.465725, 39.935047, 34.959423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149521, 40.151058, 34.583172>,  <26.667953, 39.920670, 34.289425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149521, 40.151058, 34.583172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956810, 39.951977, 34.871666>,  <26.841183, 39.832527, 35.044762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956810, 39.951977, 34.871666>,  <27.149521, 40.151058, 34.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956810, 39.951977, 34.871666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855262, -0.446301, 0.263330,
		0.190830, 0.743713, 0.640683,
		-0.481779, -0.497701, 0.721237,
		26.812277, 39.802666, 35.088036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309090, 40.344624, 35.412285>,  <27.149521, 40.151058, 34.583172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309090, 40.344624, 35.412285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241211, 39.981785, 35.258209>,  <27.200483, 39.764080, 35.165764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241211, 39.981785, 35.258209>,  <27.309090, 40.344624, 35.412285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241211, 39.981785, 35.258209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897329, -0.303819, 0.320146,
		-0.407434, -0.291317, 0.865524,
		-0.169699, -0.907099, -0.385193,
		27.190302, 39.709656, 35.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403114, 39.781834, 35.905224>,  <27.309090, 40.344624, 35.412285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403114, 39.781834, 35.905224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486412, 39.682442, 35.526829>,  <27.536390, 39.622807, 35.299793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486412, 39.682442, 35.526829>,  <27.403114, 39.781834, 35.905224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486412, 39.682442, 35.526829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939720, -0.217373, 0.263962,
		-0.271221, -0.943931, 0.188236,
		0.208244, -0.248481, -0.945987,
		27.548885, 39.607899, 35.243034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947933, 39.468750, 36.091213>,  <27.403114, 39.781834, 35.905224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947933, 39.468750, 36.091213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960114, 39.468136, 35.691399>,  <27.967422, 39.467766, 35.451511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960114, 39.468136, 35.691399>,  <27.947933, 39.468750, 36.091213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960114, 39.468136, 35.691399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929118, -0.368654, 0.028873,
		-0.368527, -0.929565, -0.009799,
		0.030451, -0.001536, -0.999535,
		27.969250, 39.467674, 35.391537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387604, 39.077343, 35.615208>,  <27.947933, 39.468750, 36.091213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387604, 39.077343, 35.615208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308941, 38.845123, 35.931255>,  <28.261744, 38.705791, 36.120884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308941, 38.845123, 35.931255>,  <28.387604, 39.077343, 35.615208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308941, 38.845123, 35.931255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180493, -0.813522, -0.552815,
		0.963716, 0.033896, 0.264769,
		-0.196657, -0.580546, 0.790122,
		28.249945, 38.670959, 36.168293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805035, 38.590973, 35.545479>,  <28.387604, 39.077343, 35.615208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805035, 38.590973, 35.545479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583757, 38.416229, 35.829205>,  <28.450991, 38.311382, 35.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583757, 38.416229, 35.829205>,  <28.805035, 38.590973, 35.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583757, 38.416229, 35.829205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221650, -0.897961, -0.380180,
		0.803026, -0.053091, 0.593574,
		-0.553191, -0.436860, 0.709319,
		28.417801, 38.285172, 36.042000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111246, 37.962337, 36.025326>,  <28.805035, 38.590973, 35.545479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111246, 37.962337, 36.025326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722666, 37.896034, 35.957428>,  <28.489517, 37.856251, 35.916691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722666, 37.896034, 35.957428>,  <29.111246, 37.962337, 36.025326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722666, 37.896034, 35.957428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236471, -0.734417, -0.636171,
		-0.019211, -0.658146, 0.752645,
		-0.971449, -0.165757, -0.169741,
		28.431231, 37.846306, 35.906506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899826, 37.198872, 36.084087>,  <29.111246, 37.962337, 36.025326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899826, 37.198872, 36.084087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663103, 37.410267, 35.840622>,  <28.521069, 37.537102, 35.694542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663103, 37.410267, 35.840622>,  <28.899826, 37.198872, 36.084087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663103, 37.410267, 35.840622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182485, -0.647645, -0.739767,
		-0.785152, -0.548871, 0.286840,
		-0.591807, 0.528485, -0.608661,
		28.485561, 37.568813, 35.658024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384336, 36.773258, 35.796761>,  <28.899826, 37.198872, 36.084087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384336, 36.773258, 35.796761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509398, 37.045818, 35.532051>,  <28.584435, 37.209354, 35.373226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509398, 37.045818, 35.532051>,  <28.384336, 36.773258, 35.796761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509398, 37.045818, 35.532051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396781, -0.726694, -0.560786,
		-0.863026, -0.087249, -0.497567,
		0.312651, 0.681399, -0.661774,
		28.603193, 37.250237, 35.333519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392700, 36.478260, 35.036488>,  <28.384336, 36.773258, 35.796761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392700, 36.478260, 35.036488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650694, 36.770985, 35.124531>,  <28.805490, 36.946621, 35.177357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650694, 36.770985, 35.124531>,  <28.392700, 36.478260, 35.036488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650694, 36.770985, 35.124531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753611, -0.561320, -0.342038,
		-0.126756, 0.386486, -0.913544,
		0.644983, 0.731812, 0.220109,
		28.844189, 36.990528, 35.190563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961065, 36.377708, 34.391239>,  <28.392700, 36.478260, 35.036488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961065, 36.377708, 34.391239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113369, 36.618263, 34.672195>,  <29.204750, 36.762596, 34.840771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113369, 36.618263, 34.672195>,  <28.961065, 36.377708, 34.391239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113369, 36.618263, 34.672195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920417, -0.319304, -0.225559,
		0.088630, 0.732380, -0.675103,
		0.380758, 0.601385, 0.702395,
		29.227596, 36.798679, 34.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470531, 36.979126, 34.328419>,  <28.961065, 36.377708, 34.391239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470531, 36.979126, 34.328419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561258, 36.753567, 34.646053>,  <29.615694, 36.618233, 34.836636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561258, 36.753567, 34.646053>,  <29.470531, 36.979126, 34.328419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561258, 36.753567, 34.646053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966725, 0.031308, -0.253895,
		0.118309, 0.825254, 0.552231,
		0.226817, -0.563894, 0.794089,
		29.629303, 36.584400, 34.884281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090927, 37.260086, 34.686295>,  <29.470531, 36.979126, 34.328419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090927, 37.260086, 34.686295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031132, 36.865463, 34.712719>,  <29.995255, 36.628689, 34.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031132, 36.865463, 34.712719>,  <30.090927, 37.260086, 34.686295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031132, 36.865463, 34.712719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912123, -0.163383, -0.375949,
		0.381687, 0.004053, 0.924283,
		-0.149489, -0.986554, 0.066058,
		29.986284, 36.569496, 34.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743023, 37.041824, 34.877777>,  <30.090927, 37.260086, 34.686295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743023, 37.041824, 34.877777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589758, 36.694431, 34.751961>,  <30.497799, 36.485996, 34.676472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589758, 36.694431, 34.751961>,  <30.743023, 37.041824, 34.877777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589758, 36.694431, 34.751961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912382, -0.302751, -0.275503,
		0.144042, -0.392539, 0.908386,
		-0.383161, -0.868478, -0.314537,
		30.474810, 36.433887, 34.657600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068638, 36.424004, 35.114532>,  <30.743023, 37.041824, 34.877777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068638, 36.424004, 35.114532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883698, 36.268902, 34.795567>,  <30.772734, 36.175842, 34.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883698, 36.268902, 34.795567>,  <31.068638, 36.424004, 35.114532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883698, 36.268902, 34.795567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736359, -0.668906, -0.101685,
		-0.493970, -0.634202, 0.594796,
		-0.462351, -0.387754, -0.797420,
		30.744991, 36.152576, 34.556339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279863, 35.712078, 35.205101>,  <31.068638, 36.424004, 35.114532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279863, 35.712078, 35.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183130, 35.783184, 34.823544>,  <31.125092, 35.825848, 34.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183130, 35.783184, 34.823544>,  <31.279863, 35.712078, 35.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183130, 35.783184, 34.823544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605408, -0.740614, -0.291499,
		-0.758287, -0.647990, 0.071483,
		-0.241830, 0.177764, -0.953896,
		31.110580, 35.836514, 34.537376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848362, 35.233116, 34.795677>,  <31.279863, 35.712078, 35.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848362, 35.233116, 34.795677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156807, 35.384571, 34.590927>,  <31.341873, 35.475445, 34.468075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156807, 35.384571, 34.590927>,  <30.848362, 35.233116, 34.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156807, 35.384571, 34.590927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288536, -0.924477, -0.249178,
		-0.567569, 0.044448, -0.822125,
		0.771111, 0.378638, -0.511879,
		31.388140, 35.498161, 34.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873520, 34.956264, 33.984230>,  <30.848362, 35.233116, 34.795677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873520, 34.956264, 33.984230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189924, 35.057045, 34.207233>,  <31.379766, 35.117516, 34.341038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189924, 35.057045, 34.207233>,  <30.873520, 34.956264, 33.984230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189924, 35.057045, 34.207233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382379, -0.914951, -0.129041,
		0.477584, 0.315254, -0.820078,
		0.791012, 0.251953, 0.557513,
		31.427227, 35.132629, 34.374489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836620, 34.663418, 33.407501>,  <30.873520, 34.956264, 33.984230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836620, 34.663418, 33.407501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874907, 34.320721, 33.204784>,  <30.897879, 34.115105, 33.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874907, 34.320721, 33.204784>,  <30.836620, 34.663418, 33.407501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874907, 34.320721, 33.204784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978133, -0.013492, 0.207544,
		-0.184649, -0.515571, 0.836714,
		0.095715, -0.856740, -0.506788,
		30.903622, 34.063698, 33.052750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195908, 34.103462, 33.778992>,  <30.836620, 34.663418, 33.407501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195908, 34.103462, 33.778992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249630, 34.060909, 33.384907>,  <31.281864, 34.035378, 33.148457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249630, 34.060909, 33.384907>,  <31.195908, 34.103462, 33.778992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249630, 34.060909, 33.384907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990445, 0.045833, 0.130071,
		0.031319, -0.993269, 0.111521,
		0.134307, -0.106381, -0.985213,
		31.289923, 34.028996, 33.089344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733700, 33.480209, 33.626808>,  <31.195908, 34.103462, 33.778992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733700, 33.480209, 33.626808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732725, 33.822868, 33.420448>,  <31.732140, 34.028465, 33.296635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732725, 33.822868, 33.420448>,  <31.733700, 33.480209, 33.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732725, 33.822868, 33.420448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995055, 0.053303, 0.083812,
		0.099296, -0.513141, -0.852541,
		-0.002436, 0.856647, -0.515896,
		31.731995, 34.079865, 33.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361217, 33.513199, 33.253403>,  <31.733700, 33.480209, 33.626808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361217, 33.513199, 33.253403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225456, 33.886974, 33.296539>,  <32.144001, 34.111240, 33.322422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225456, 33.886974, 33.296539>,  <32.361217, 33.513199, 33.253403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225456, 33.886974, 33.296539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916971, 0.303124, 0.259384,
		0.209690, 0.186920, -0.959735,
		-0.339403, 0.934439, 0.107838,
		32.123634, 34.167305, 33.328892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689224, 33.927971, 32.781887>,  <32.361217, 33.513199, 33.253403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689224, 33.927971, 32.781887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559593, 34.145947, 33.091213>,  <32.481815, 34.276733, 33.276810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559593, 34.145947, 33.091213>,  <32.689224, 33.927971, 32.781887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559593, 34.145947, 33.091213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938881, 0.285568, 0.192234,
		-0.116078, 0.788349, -0.604179,
		-0.324082, 0.544938, 0.773314,
		32.462368, 34.309429, 33.323208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645069, 33.278782, 32.260765>,  <32.689224, 33.927971, 32.781887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645069, 33.278782, 32.260765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297028, 33.163628, 32.100742>,  <32.088203, 33.094536, 32.004726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297028, 33.163628, 32.100742>,  <32.645069, 33.278782, 32.260765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297028, 33.163628, 32.100742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172059, 0.583202, -0.793896,
		0.461868, -0.759602, -0.457911,
		-0.870100, -0.287888, -0.400059,
		32.035999, 33.077263, 31.980724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281563, 33.373234, 32.183929>,  <32.645069, 33.278782, 32.260765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281563, 33.373234, 32.183929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017799, 33.274387, 31.899927>,  <32.859539, 33.215080, 31.729527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017799, 33.274387, 31.899927>,  <33.281563, 33.373234, 32.183929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017799, 33.274387, 31.899927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751747, -0.225709, -0.619622,
		-0.007135, -0.942331, 0.334605,
		-0.659413, -0.247117, -0.710006,
		32.819977, 33.200253, 31.686926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337345, 32.646606, 31.965065>,  <33.281563, 33.373234, 32.183929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337345, 32.646606, 31.965065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235245, 32.897953, 31.671124>,  <33.173985, 33.048759, 31.494759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235245, 32.897953, 31.671124>,  <33.337345, 32.646606, 31.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235245, 32.897953, 31.671124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724603, -0.378887, -0.575669,
		-0.640155, -0.679415, -0.358604,
		-0.255248, 0.628363, -0.734852,
		33.158669, 33.086460, 31.450668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150681, 32.211960, 31.267256>,  <33.337345, 32.646606, 31.965065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150681, 32.211960, 31.267256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275013, 32.587605, 31.208677>,  <33.349613, 32.812992, 31.173531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275013, 32.587605, 31.208677>,  <33.150681, 32.211960, 31.267256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275013, 32.587605, 31.208677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664069, -0.324814, -0.673430,
		-0.679996, 0.112075, -0.724600,
		0.310835, 0.939114, -0.146447,
		33.368263, 32.869339, 31.164743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099220, 32.306396, 30.618076>,  <33.150681, 32.211960, 31.267256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099220, 32.306396, 30.618076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352184, 32.601078, 30.713846>,  <33.503963, 32.777885, 30.771309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352184, 32.601078, 30.713846>,  <33.099220, 32.306396, 30.618076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352184, 32.601078, 30.713846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529436, -0.185445, -0.827833,
		-0.565465, 0.650293, -0.507314,
		0.632413, 0.736701, 0.239426,
		33.541908, 32.822090, 30.785673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221172, 32.632702, 30.024267>,  <33.099220, 32.306396, 30.618076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221172, 32.632702, 30.024267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534718, 32.729664, 30.252932>,  <33.722843, 32.787842, 30.390131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534718, 32.729664, 30.252932>,  <33.221172, 32.632702, 30.024267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534718, 32.729664, 30.252932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601236, -0.066255, -0.796320,
		-0.155154, 0.967911, -0.197676,
		0.783864, 0.242402, 0.571663,
		33.769878, 32.802383, 30.424431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552597, 33.078838, 29.645840>,  <33.221172, 32.632702, 30.024267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552597, 33.078838, 29.645840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833523, 32.964306, 29.906536>,  <34.002079, 32.895584, 30.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833523, 32.964306, 29.906536>,  <33.552597, 33.078838, 29.645840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833523, 32.964306, 29.906536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683791, 0.016762, -0.729485,
		0.197952, 0.957983, 0.207566,
		0.702314, -0.286335, 0.651742,
		34.044216, 32.878407, 30.102058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086540, 33.598572, 29.718235>,  <33.552597, 33.078838, 29.645840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086540, 33.598572, 29.718235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263863, 33.249756, 29.801207>,  <34.370255, 33.040466, 29.850988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263863, 33.249756, 29.801207>,  <34.086540, 33.598572, 29.718235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263863, 33.249756, 29.801207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630652, 0.138979, -0.763520,
		0.636993, 0.469285, 0.611564,
		0.443303, -0.872041, 0.207427,
		34.396854, 32.988144, 29.863434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765450, 33.807079, 29.494287>,  <34.086540, 33.598572, 29.718235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765450, 33.807079, 29.494287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798656, 33.409504, 29.523132>,  <34.818581, 33.170959, 29.540440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798656, 33.409504, 29.523132>,  <34.765450, 33.807079, 29.494287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798656, 33.409504, 29.523132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659111, 0.000486, -0.752046,
		0.747450, 0.109960, 0.655154,
		0.083013, -0.993936, 0.072113,
		34.823559, 33.111324, 29.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476120, 33.673889, 29.586027>,  <34.765450, 33.807079, 29.494287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476120, 33.673889, 29.586027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329357, 33.329842, 29.444281>,  <35.241299, 33.123413, 29.359234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329357, 33.329842, 29.444281>,  <35.476120, 33.673889, 29.586027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329357, 33.329842, 29.444281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530830, 0.119246, -0.839047,
		0.763939, -0.495956, 0.412826,
		-0.366903, -0.860121, -0.354365,
		35.219288, 33.071804, 29.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056221, 33.370480, 29.189228>,  <35.476120, 33.673889, 29.586027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056221, 33.370480, 29.189228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742832, 33.140701, 29.094412>,  <35.554798, 33.002834, 29.037523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742832, 33.140701, 29.094412>,  <36.056221, 33.370480, 29.189228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742832, 33.140701, 29.094412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400530, -0.175151, -0.899387,
		0.475129, -0.799585, 0.367308,
		-0.783471, -0.574443, -0.237039,
		35.507790, 32.968369, 29.023300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302097, 32.646988, 29.047583>,  <36.056221, 33.370480, 29.189228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302097, 32.646988, 29.047583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958282, 32.690109, 28.847754>,  <35.751995, 32.715981, 28.727856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958282, 32.690109, 28.847754>,  <36.302097, 32.646988, 29.047583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958282, 32.690109, 28.847754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435421, -0.357324, -0.826273,
		-0.267583, -0.927738, 0.260194,
		-0.859539, 0.107803, -0.499571,
		35.700420, 32.722450, 28.697882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415558, 32.146507, 28.508270>,  <36.302097, 32.646988, 29.047583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415558, 32.146507, 28.508270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114799, 32.368290, 28.365589>,  <35.934345, 32.501358, 28.279980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114799, 32.368290, 28.365589>,  <36.415558, 32.146507, 28.508270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114799, 32.368290, 28.365589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413683, -0.024504, -0.910091,
		-0.513343, -0.831854, -0.210943,
		-0.751894, 0.554452, -0.356702,
		35.889233, 32.534626, 28.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220104, 31.854399, 27.828808>,  <36.415558, 32.146507, 28.508270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220104, 31.854399, 27.828808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085228, 32.230919, 27.822439>,  <36.004303, 32.456833, 27.818619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085228, 32.230919, 27.822439>,  <36.220104, 31.854399, 27.828808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085228, 32.230919, 27.822439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500258, 0.164825, -0.850044,
		-0.797523, -0.294593, -0.526471,
		-0.337192, 0.941301, -0.015921,
		35.984070, 32.513309, 27.817663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291054, 31.977362, 27.124886>,  <36.220104, 31.854399, 27.828808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291054, 31.977362, 27.124886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211433, 32.336678, 27.281576>,  <36.163662, 32.552269, 27.375591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211433, 32.336678, 27.281576>,  <36.291054, 31.977362, 27.124886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211433, 32.336678, 27.281576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221117, 0.430586, -0.875044,
		-0.954717, -0.087565, -0.284338,
		-0.199055, 0.898291, 0.391726,
		36.151718, 32.606167, 27.399094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618965, 32.283825, 26.814825>,  <36.291054, 31.977362, 27.124886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618965, 32.283825, 26.814825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859482, 32.581890, 26.930183>,  <36.003792, 32.760731, 26.999399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859482, 32.581890, 26.930183>,  <35.618965, 32.283825, 26.814825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859482, 32.581890, 26.930183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012840, 0.351876, -0.935959,
		-0.798925, 0.566489, 0.202013,
		0.601294, 0.745167, 0.288396,
		36.039871, 32.805439, 27.016703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469894, 32.786572, 26.401619>,  <35.618965, 32.283825, 26.814825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469894, 32.786572, 26.401619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817398, 32.915760, 26.551792>,  <36.025898, 32.993275, 26.641897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817398, 32.915760, 26.551792>,  <35.469894, 32.786572, 26.401619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817398, 32.915760, 26.551792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162118, 0.530853, -0.831813,
		-0.467954, 0.783507, 0.408822,
		0.868756, 0.322974, 0.375435,
		36.078026, 33.012653, 26.664423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619640, 33.517273, 26.263031>,  <35.469894, 32.786572, 26.401619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619640, 33.517273, 26.263031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971489, 33.329506, 26.293760>,  <36.182598, 33.216846, 26.312197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971489, 33.329506, 26.293760>,  <35.619640, 33.517273, 26.263031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971489, 33.329506, 26.293760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246101, 0.310921, -0.918021,
		0.407054, 0.826420, 0.389020,
		0.879626, -0.469422, 0.076821,
		36.235378, 33.188679, 26.316807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164799, 34.084839, 26.149250>,  <35.619640, 33.517273, 26.263031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164799, 34.084839, 26.149250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330467, 33.721725, 26.122749>,  <36.429867, 33.503857, 26.106848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330467, 33.721725, 26.122749>,  <36.164799, 34.084839, 26.149250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330467, 33.721725, 26.122749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401367, 0.247480, -0.881849,
		0.816927, 0.338642, 0.466854,
		0.414168, -0.907786, -0.066253,
		36.454716, 33.449390, 26.102873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823029, 34.212212, 26.011673>,  <36.164799, 34.084839, 26.149250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823029, 34.212212, 26.011673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772194, 33.833832, 25.892323>,  <36.741692, 33.606804, 25.820713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772194, 33.833832, 25.892323>,  <36.823029, 34.212212, 26.011673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772194, 33.833832, 25.892323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291760, 0.251855, -0.922738,
		0.948011, -0.204324, 0.243982,
		-0.127089, -0.945950, -0.298375,
		36.734066, 33.550045, 25.802811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164845, 34.126373, 25.419079>,  <36.823029, 34.212212, 26.011673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164845, 34.126373, 25.419079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000340, 33.761875, 25.410172>,  <36.901638, 33.543175, 25.404827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000340, 33.761875, 25.410172>,  <37.164845, 34.126373, 25.419079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000340, 33.761875, 25.410172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195094, -0.064131, -0.978686,
		0.890394, -0.406842, 0.204153,
		-0.411263, -0.911244, -0.022270,
		36.876961, 33.488503, 25.403490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704052, 33.683224, 25.099688>,  <37.164845, 34.126373, 25.419079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704052, 33.683224, 25.099688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326294, 33.567757, 25.036711>,  <37.099640, 33.498478, 24.998924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326294, 33.567757, 25.036711>,  <37.704052, 33.683224, 25.099688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326294, 33.567757, 25.036711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135805, 0.093646, -0.986300,
		0.299456, -0.952839, -0.049237,
		-0.944395, -0.288667, -0.157443,
		37.042976, 33.481155, 24.989477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741680, 33.299427, 24.609816>,  <37.704052, 33.683224, 25.099688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741680, 33.299427, 24.609816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356567, 33.399059, 24.567850>,  <37.125500, 33.458839, 24.542671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356567, 33.399059, 24.567850>,  <37.741680, 33.299427, 24.609816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356567, 33.399059, 24.567850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135074, 0.107225, -0.985017,
		-0.234099, -0.962529, -0.136879,
		-0.962784, 0.249080, -0.104912,
		37.067734, 33.473782, 24.536377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521900, 33.033417, 23.951410>,  <37.741680, 33.299427, 24.609816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521900, 33.033417, 23.951410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246269, 33.317760, 24.007780>,  <37.080891, 33.488365, 24.041601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246269, 33.317760, 24.007780>,  <37.521900, 33.033417, 23.951410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246269, 33.317760, 24.007780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072934, 0.261500, -0.962444,
		-0.721013, -0.652916, -0.232038,
		-0.689073, 0.710858, 0.140925,
		37.039547, 33.531017, 24.050058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195385, 33.039532, 23.307737>,  <37.521900, 33.033417, 23.951410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195385, 33.039532, 23.307737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129421, 33.381706, 23.504120>,  <37.089844, 33.587009, 23.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129421, 33.381706, 23.504120>,  <37.195385, 33.039532, 23.307737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129421, 33.381706, 23.504120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014578, 0.495601, -0.868428,
		-0.986201, -0.150367, -0.069257,
		-0.164907, 0.855435, 0.490955,
		37.079948, 33.638336, 23.651405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587791, 33.390106, 22.951227>,  <37.195385, 33.039532, 23.307737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587791, 33.390106, 22.951227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781105, 33.673916, 23.156366>,  <36.897091, 33.844204, 23.279449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781105, 33.673916, 23.156366>,  <36.587791, 33.390106, 22.951227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781105, 33.673916, 23.156366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056342, 0.609792, -0.790557,
		-0.873650, 0.353166, 0.334677,
		0.483281, 0.709526, 0.512847,
		36.926090, 33.886772, 23.310221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145569, 34.019646, 22.995289>,  <36.587791, 33.390106, 22.951227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145569, 34.019646, 22.995289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531315, 34.113884, 23.043436>,  <36.762764, 34.170429, 23.072325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531315, 34.113884, 23.043436>,  <36.145569, 34.019646, 22.995289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531315, 34.113884, 23.043436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081125, 0.696380, -0.713073,
		-0.251820, 0.677900, 0.690680,
		0.964368, 0.235597, 0.120368,
		36.820625, 34.184563, 23.079546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228546, 34.756611, 22.753912>,  <36.145569, 34.019646, 22.995289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228546, 34.756611, 22.753912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608036, 34.638134, 22.798094>,  <36.835728, 34.567047, 22.824602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608036, 34.638134, 22.798094>,  <36.228546, 34.756611, 22.753912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608036, 34.638134, 22.798094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284999, 0.650251, -0.704236,
		0.136767, 0.699602, 0.701321,
		0.948720, -0.296192, 0.110454,
		36.892651, 34.549278, 22.831230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676537, 35.423885, 22.805008>,  <36.228546, 34.756611, 22.753912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676537, 35.423885, 22.805008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913937, 35.131962, 22.669279>,  <37.056377, 34.956806, 22.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913937, 35.131962, 22.669279>,  <36.676537, 35.423885, 22.805008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913937, 35.131962, 22.669279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382289, 0.626634, -0.679106,
		0.708248, 0.273329, 0.650904,
		0.593498, -0.729809, -0.339322,
		37.091988, 34.913021, 22.567482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340118, 35.728779, 22.619329>,  <36.676537, 35.423885, 22.805008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340118, 35.728779, 22.619329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353970, 35.391991, 22.403967>,  <37.362278, 35.189919, 22.274750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353970, 35.391991, 22.403967>,  <37.340118, 35.728779, 22.619329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353970, 35.391991, 22.403967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339989, 0.516519, -0.785886,
		0.939792, -0.155841, 0.304146,
		0.034624, -0.841975, -0.538404,
		37.364357, 35.139397, 22.242445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075645, 35.636864, 22.385168>,  <37.340118, 35.728779, 22.619329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075645, 35.636864, 22.385168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817749, 35.441319, 22.150112>,  <37.663010, 35.323990, 22.009079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817749, 35.441319, 22.150112>,  <38.075645, 35.636864, 22.385168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817749, 35.441319, 22.150112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476876, 0.343577, -0.809039,
		0.597409, -0.801853, 0.011608,
		-0.644742, -0.488863, -0.587640,
		37.624325, 35.294659, 21.973820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493214, 35.313644, 21.868313>,  <38.075645, 35.636864, 22.385168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493214, 35.313644, 21.868313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135178, 35.276760, 21.693815>,  <37.920357, 35.254631, 21.589117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135178, 35.276760, 21.693815>,  <38.493214, 35.313644, 21.868313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135178, 35.276760, 21.693815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435852, 0.025425, -0.899659,
		0.094049, -0.995415, 0.017433,
		-0.895091, -0.092211, -0.436245,
		37.866650, 35.249096, 21.562943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466721, 34.734215, 21.374037>,  <38.493214, 35.313644, 21.868313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466721, 34.734215, 21.374037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176418, 34.985477, 21.261824>,  <38.002235, 35.136234, 21.194496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176418, 34.985477, 21.261824>,  <38.466721, 34.734215, 21.374037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176418, 34.985477, 21.261824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340119, -0.026833, -0.940000,
		-0.597992, -0.777626, -0.194172,
		-0.725758, 0.628154, -0.280531,
		37.958691, 35.173923, 21.177664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421875, 34.476379, 20.718405>,  <38.466721, 34.734215, 21.374037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421875, 34.476379, 20.718405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213017, 34.817188, 20.733488>,  <38.087700, 35.021675, 20.742538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213017, 34.817188, 20.733488>,  <38.421875, 34.476379, 20.718405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213017, 34.817188, 20.733488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147353, 0.133673, -0.980010,
		-0.840029, -0.506153, -0.195345,
		-0.522147, 0.852021, 0.037707,
		38.056374, 35.072796, 20.744801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125412, 34.388783, 20.101969>,  <38.421875, 34.476379, 20.718405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125412, 34.388783, 20.101969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124969, 34.775143, 20.205526>,  <38.124706, 35.006958, 20.267662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124969, 34.775143, 20.205526>,  <38.125412, 34.388783, 20.101969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124969, 34.775143, 20.205526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203668, 0.253687, -0.945602,
		-0.979039, 0.051685, -0.197004,
		-0.001104, 0.965904, 0.258896,
		38.124638, 35.064915, 20.283195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737869, 34.690346, 19.524181>,  <38.125412, 34.388783, 20.101969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737869, 34.690346, 19.524181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968445, 34.950954, 19.721458>,  <38.106792, 35.107319, 19.839825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968445, 34.950954, 19.721458>,  <37.737869, 34.690346, 19.524181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968445, 34.950954, 19.721458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372457, 0.327725, -0.868258,
		-0.727318, 0.684192, -0.053749,
		0.576441, 0.651519, 0.493192,
		38.141376, 35.146412, 19.869415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521866, 35.376949, 19.221436>,  <37.737869, 34.690346, 19.524181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521866, 35.376949, 19.221436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880962, 35.431793, 19.388889>,  <38.096420, 35.464699, 19.489361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880962, 35.431793, 19.388889>,  <37.521866, 35.376949, 19.221436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880962, 35.431793, 19.388889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326350, 0.431309, -0.841111,
		-0.295888, 0.891724, 0.342459,
		0.897745, 0.137113, 0.418633,
		38.150288, 35.472927, 19.514479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768269, 36.034405, 18.985449>,  <37.521866, 35.376949, 19.221436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768269, 36.034405, 18.985449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099701, 35.844822, 19.104656>,  <38.298561, 35.731071, 19.176180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099701, 35.844822, 19.104656>,  <37.768269, 36.034405, 18.985449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099701, 35.844822, 19.104656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524898, 0.472462, -0.707999,
		0.194756, 0.743066, 0.640252,
		0.828585, -0.473954, 0.298019,
		38.348278, 35.702637, 19.194061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227627, 36.572239, 19.240303>,  <37.768269, 36.034405, 18.985449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227627, 36.572239, 19.240303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410095, 36.232960, 19.132626>,  <38.519577, 36.029392, 19.068018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410095, 36.232960, 19.132626>,  <38.227627, 36.572239, 19.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410095, 36.232960, 19.132626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482627, 0.489962, -0.725953,
		0.747648, 0.201239, 0.632871,
		0.456173, -0.848198, -0.269196,
		38.546947, 35.978500, 19.051867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822369, 36.805744, 19.083462>,  <38.227627, 36.572239, 19.240303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822369, 36.805744, 19.083462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834961, 36.444897, 18.911327>,  <38.842518, 36.228390, 18.808046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834961, 36.444897, 18.911327>,  <38.822369, 36.805744, 19.083462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834961, 36.444897, 18.911327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614625, 0.356999, -0.703412,
		0.788191, -0.242349, 0.565704,
		0.031484, -0.902119, -0.430337,
		38.844406, 36.174259, 18.782227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472992, 36.554394, 19.020807>,  <38.822369, 36.805744, 19.083462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472992, 36.554394, 19.020807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296215, 36.337509, 18.734957>,  <39.190147, 36.207378, 18.563446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296215, 36.337509, 18.734957>,  <39.472992, 36.554394, 19.020807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296215, 36.337509, 18.734957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678461, 0.319119, -0.661706,
		0.586838, -0.777281, 0.226840,
		-0.441942, -0.542216, -0.714625,
		39.163631, 36.174843, 18.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007042, 36.317623, 18.630259>,  <39.472992, 36.554394, 19.020807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007042, 36.317623, 18.630259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704342, 36.294647, 18.369785>,  <39.522724, 36.280861, 18.213501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704342, 36.294647, 18.369785>,  <40.007042, 36.317623, 18.630259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704342, 36.294647, 18.369785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615887, 0.271273, -0.739658,
		0.219130, -0.960787, -0.169912,
		-0.756746, -0.057435, -0.651181,
		39.477318, 36.277416, 18.174431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221424, 35.900547, 18.043434>,  <40.007042, 36.317623, 18.630259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221424, 35.900547, 18.043434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928761, 36.139729, 17.912518>,  <39.753162, 36.283237, 17.833967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928761, 36.139729, 17.912518>,  <40.221424, 35.900547, 18.043434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928761, 36.139729, 17.912518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543242, 0.221440, -0.809847,
		-0.411779, -0.770331, -0.486855,
		-0.731660, 0.597958, -0.327292,
		39.709263, 36.319115, 17.814329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393478, 35.920044, 17.442366>,  <40.221424, 35.900547, 18.043434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393478, 35.920044, 17.442366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098179, 36.187588, 17.407454>,  <39.921001, 36.348114, 17.386507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098179, 36.187588, 17.407454>,  <40.393478, 35.920044, 17.442366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098179, 36.187588, 17.407454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304662, 0.215194, -0.927832,
		-0.601810, -0.711558, -0.362643,
		-0.738245, 0.668862, -0.087279,
		39.876705, 36.388245, 17.381269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057518, 35.858727, 16.686367>,  <40.393478, 35.920044, 17.442366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057518, 35.858727, 16.686367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972435, 36.213505, 16.850355>,  <39.921387, 36.426373, 16.948748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972435, 36.213505, 16.850355>,  <40.057518, 35.858727, 16.686367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972435, 36.213505, 16.850355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286528, 0.457746, -0.841647,
		-0.934161, -0.061556, -0.351501,
		-0.212707, 0.886949, 0.409971,
		39.908623, 36.479591, 16.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601444, 36.248222, 16.094053>,  <40.057518, 35.858727, 16.686367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601444, 36.248222, 16.094053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767609, 36.518085, 16.338108>,  <39.867306, 36.680004, 16.484541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767609, 36.518085, 16.338108>,  <39.601444, 36.248222, 16.094053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767609, 36.518085, 16.338108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715890, 0.171334, -0.676865,
		-0.561192, 0.717968, -0.411809,
		0.415411, 0.674661, 0.610137,
		39.892231, 36.720482, 16.521149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768475, 36.925083, 15.768695>,  <39.601444, 36.248222, 16.094053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768475, 36.925083, 15.768695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020931, 36.828529, 16.063555>,  <40.172405, 36.770599, 16.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020931, 36.828529, 16.063555>,  <39.768475, 36.925083, 15.768695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020931, 36.828529, 16.063555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775664, 0.197390, -0.599485,
		-0.000801, 0.950143, 0.311813,
		0.631145, -0.241382, 0.737150,
		40.210274, 36.756115, 16.284700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175175, 37.457916, 15.791596>,  <39.768475, 36.925083, 15.768695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175175, 37.457916, 15.791596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336781, 37.108284, 15.899493>,  <40.433746, 36.898506, 15.964231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336781, 37.108284, 15.899493>,  <40.175175, 37.457916, 15.791596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336781, 37.108284, 15.899493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765328, 0.161474, -0.623056,
		0.501042, 0.458167, 0.734193,
		0.404017, -0.874076, 0.269743,
		40.457985, 36.846062, 15.980416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220169, 38.038845, 16.252455>,  <40.175175, 37.457916, 15.791596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220169, 38.038845, 16.252455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191635, 38.417511, 16.378151>,  <40.174515, 38.644711, 16.453568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191635, 38.417511, 16.378151>,  <40.220169, 38.038845, 16.252455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191635, 38.417511, 16.378151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340266, 0.319239, -0.884480,
		-0.937619, 0.043830, -0.344889,
		-0.071335, 0.946660, 0.314239,
		40.170235, 38.701508, 16.472422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657074, 38.539383, 15.865703>,  <40.220169, 38.038845, 16.252455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657074, 38.539383, 15.865703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979851, 38.726833, 16.009495>,  <40.173519, 38.839306, 16.095770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979851, 38.726833, 16.009495>,  <39.657074, 38.539383, 15.865703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979851, 38.726833, 16.009495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218462, 0.328654, -0.918837,
		-0.548739, 0.819983, 0.162827,
		0.806945, 0.468630, 0.359481,
		40.221935, 38.867424, 16.117338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728920, 38.926079, 15.386322>,  <39.657074, 38.539383, 15.865703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728920, 38.926079, 15.386322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081245, 38.931656, 15.575624>,  <40.292641, 38.935001, 15.689204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081245, 38.931656, 15.575624>,  <39.728920, 38.926079, 15.386322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081245, 38.931656, 15.575624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461941, 0.193841, -0.865469,
		-0.103802, 0.980934, 0.164298,
		0.880815, 0.013941, 0.473254,
		40.345490, 38.935837, 15.717600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114532, 39.433762, 15.060175>,  <39.728920, 38.926079, 15.386322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114532, 39.433762, 15.060175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404182, 39.238869, 15.255418>,  <40.577972, 39.121933, 15.372563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404182, 39.238869, 15.255418>,  <40.114532, 39.433762, 15.060175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404182, 39.238869, 15.255418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550094, -0.018841, -0.834890,
		0.415980, 0.873070, 0.254379,
		0.724125, -0.487230, 0.488108,
		40.621422, 39.092701, 15.401851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577011, 40.024597, 15.118157>,  <40.114532, 39.433762, 15.060175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577011, 40.024597, 15.118157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675983, 39.906200, 15.487192>,  <40.735367, 39.835163, 15.708612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675983, 39.906200, 15.487192>,  <40.577011, 40.024597, 15.118157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675983, 39.906200, 15.487192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044487, 0.947719, 0.315990,
		-0.967884, -0.119228, 0.221326,
		0.247430, -0.295996, 0.922586,
		40.750214, 39.817402, 15.763968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228962, 40.330235, 15.825238>,  <40.577011, 40.024597, 15.118157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228962, 40.330235, 15.825238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608711, 40.216015, 15.877608>,  <40.836563, 40.147484, 15.909030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608711, 40.216015, 15.877608>,  <40.228962, 40.330235, 15.825238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608711, 40.216015, 15.877608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222583, 0.905577, 0.361091,
		-0.221673, -0.313670, 0.923294,
		0.949378, -0.285553, 0.130925,
		40.893524, 40.130348, 15.916885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458546, 40.543919, 16.481766>,  <40.228962, 40.330235, 15.825238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458546, 40.543919, 16.481766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 40.518265, 16.260899>,  <40.990555, 40.502872, 16.128378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791050, 40.518265, 16.260899>,  <40.458546, 40.543919, 16.481766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791050, 40.518265, 16.260899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344650, 0.838819, 0.421426,
		0.436142, -0.540620, 0.719382,
		0.831262, -0.064133, -0.552169,
		41.040428, 40.499023, 16.095247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965534, 39.945557, 16.498999>,  <40.458546, 40.543919, 16.481766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965534, 39.945557, 16.498999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998589, 39.547150, 16.512405>,  <40.018421, 39.308105, 16.520451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998589, 39.547150, 16.512405>,  <39.965534, 39.945557, 16.498999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998589, 39.547150, 16.512405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379751, -0.000373, 0.925089,
		-0.921391, -0.089172, -0.378269,
		0.082633, -0.996016, 0.033519,
		40.023380, 39.248344, 16.522461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498608, 39.834469, 16.985397>,  <39.965534, 39.945557, 16.498999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498608, 39.834469, 16.985397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691845, 39.486023, 16.950121>,  <39.807789, 39.276955, 16.928955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691845, 39.486023, 16.950121>,  <39.498608, 39.834469, 16.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691845, 39.486023, 16.950121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451893, -0.334338, 0.827049,
		-0.749940, -0.359693, -0.555168,
		0.483098, -0.871114, -0.088190,
		39.836773, 39.224689, 16.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918064, 39.432453, 16.994152>,  <39.498608, 39.834469, 16.985397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918064, 39.432453, 16.994152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256664, 39.248322, 17.101139>,  <39.459824, 39.137840, 17.165331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256664, 39.248322, 17.101139>,  <38.918064, 39.432453, 16.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256664, 39.248322, 17.101139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374757, -0.158358, 0.913499,
		-0.378155, -0.873510, -0.306562,
		0.846496, -0.460330, 0.267470,
		39.510612, 39.110222, 17.181379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678104, 38.923008, 17.436930>,  <38.918064, 39.432453, 16.994152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678104, 38.923008, 17.436930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061852, 38.904488, 17.548265>,  <39.292099, 38.893375, 17.615067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061852, 38.904488, 17.548265>,  <38.678104, 38.923008, 17.436930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061852, 38.904488, 17.548265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279803, -0.283417, 0.917270,
		0.036417, -0.957879, -0.284855,
		0.959366, -0.046299, 0.278339,
		39.349663, 38.890598, 17.631767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742615, 38.204403, 17.748329>,  <38.678104, 38.923008, 17.436930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742615, 38.204403, 17.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031502, 38.443909, 17.886822>,  <39.204834, 38.587612, 17.969917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031502, 38.443909, 17.886822>,  <38.742615, 38.204403, 17.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031502, 38.443909, 17.886822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354313, -0.109633, 0.928678,
		0.594019, -0.793385, 0.132972,
		0.722221, 0.598766, 0.346231,
		39.248169, 38.623539, 17.990690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987499, 37.817909, 18.290718>,  <38.742615, 38.204403, 17.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987499, 37.817909, 18.290718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111145, 38.195305, 18.338501>,  <39.185333, 38.421741, 18.367170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111145, 38.195305, 18.338501>,  <38.987499, 37.817909, 18.290718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111145, 38.195305, 18.338501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347163, -0.004993, 0.937792,
		0.885396, -0.331356, 0.326002,
		0.309115, 0.943493, 0.119455,
		39.203880, 38.478352, 18.374338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430294, 37.759201, 18.940681>,  <38.987499, 37.817909, 18.290718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430294, 37.759201, 18.940681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298271, 38.125252, 18.848072>,  <39.219059, 38.344883, 18.792507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298271, 38.125252, 18.848072>,  <39.430294, 37.759201, 18.940681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298271, 38.125252, 18.848072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229511, 0.160110, 0.960046,
		0.915635, 0.370007, 0.157187,
		-0.330057, 0.915128, -0.231523,
		39.199253, 38.399792, 18.778616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743958, 38.121742, 19.452984>,  <39.430294, 37.759201, 18.940681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743958, 38.121742, 19.452984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453838, 38.361885, 19.318218>,  <39.279766, 38.505970, 19.237358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453838, 38.361885, 19.318218>,  <39.743958, 38.121742, 19.452984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453838, 38.361885, 19.318218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392758, 0.041081, 0.918724,
		0.565406, 0.798674, 0.206000,
		-0.725298, 0.600360, -0.336913,
		39.236248, 38.541992, 19.217144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782429, 38.746357, 19.803228>,  <39.743958, 38.121742, 19.452984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782429, 38.746357, 19.803228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 38.716209, 19.693253>,  <39.168987, 38.698120, 19.627266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 38.716209, 19.693253>,  <39.782429, 38.746357, 19.803228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399029, 38.716209, 19.693253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284371, 0.184578, 0.940778,
		-0.020156, 0.979924, -0.198351,
		-0.958502, -0.075368, -0.274942,
		39.111477, 38.693600, 19.610769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531303, 39.225594, 20.253469>,  <39.782429, 38.746357, 19.803228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531303, 39.225594, 20.253469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233646, 38.991356, 20.124884>,  <39.055054, 38.850815, 20.047733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233646, 38.991356, 20.124884>,  <39.531303, 39.225594, 20.253469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233646, 38.991356, 20.124884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344412, -0.076014, 0.935736,
		-0.572395, 0.807034, -0.145120,
		-0.744140, -0.585592, -0.321462,
		39.010403, 38.815678, 20.028444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987606, 39.143238, 20.639923>,  <39.531303, 39.225594, 20.253469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987606, 39.143238, 20.639923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809704, 38.829689, 20.466608>,  <38.702961, 38.641560, 20.362619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809704, 38.829689, 20.466608>,  <38.987606, 39.143238, 20.639923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809704, 38.829689, 20.466608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468758, -0.208497, 0.858367,
		-0.763188, 0.584873, -0.274715,
		-0.444759, -0.783870, -0.433286,
		38.676277, 38.594528, 20.336622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197739, 39.138210, 20.803440>,  <38.987606, 39.143238, 20.639923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197739, 39.138210, 20.803440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303757, 38.768105, 20.694897>,  <38.367367, 38.546040, 20.629770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303757, 38.768105, 20.694897>,  <38.197739, 39.138210, 20.803440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303757, 38.768105, 20.694897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349761, -0.354513, 0.867172,
		-0.898565, -0.134929, -0.417583,
		0.265045, -0.925265, -0.271360,
		38.383270, 38.490524, 20.613489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631748, 38.724087, 20.887980>,  <38.197739, 39.138210, 20.803440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631748, 38.724087, 20.887980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932747, 38.460686, 20.883652>,  <38.113346, 38.302647, 20.881054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932747, 38.460686, 20.883652>,  <37.631748, 38.724087, 20.887980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932747, 38.460686, 20.883652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374176, -0.440993, 0.815793,
		-0.541975, -0.609834, -0.578243,
		0.752500, -0.658503, -0.010822,
		38.158497, 38.263134, 20.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344406, 38.087353, 21.016806>,  <37.631748, 38.724087, 20.887980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344406, 38.087353, 21.016806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725739, 38.005821, 21.105911>,  <37.954536, 37.956902, 21.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725739, 38.005821, 21.105911>,  <37.344406, 38.087353, 21.016806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725739, 38.005821, 21.105911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292639, -0.441978, 0.847949,
		-0.074374, -0.873562, -0.480996,
		0.953326, -0.203824, 0.222766,
		38.011738, 37.944675, 21.172741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245468, 37.457211, 21.329578>,  <37.344406, 38.087353, 21.016806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245468, 37.457211, 21.329578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618324, 37.551731, 21.439320>,  <37.842037, 37.608444, 21.505165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618324, 37.551731, 21.439320>,  <37.245468, 37.457211, 21.329578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618324, 37.551731, 21.439320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122610, -0.506940, 0.853217,
		0.340700, -0.828958, -0.443567,
		0.932143, 0.236306, 0.274353,
		37.897968, 37.622623, 21.521626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474297, 36.856323, 21.640474>,  <37.245468, 37.457211, 21.329578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474297, 36.856323, 21.640474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706909, 37.160069, 21.757221>,  <37.846478, 37.342316, 21.827269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706909, 37.160069, 21.757221>,  <37.474297, 36.856323, 21.640474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706909, 37.160069, 21.757221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172448, -0.235551, 0.956440,
		0.795039, -0.606528, -0.006028,
		0.581527, 0.759367, 0.291867,
		37.881367, 37.387878, 21.844782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966053, 36.593102, 22.137251>,  <37.474297, 36.856323, 21.640474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966053, 36.593102, 22.137251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952488, 36.981018, 22.233877>,  <37.944347, 37.213768, 22.291853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952488, 36.981018, 22.233877>,  <37.966053, 36.593102, 22.137251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952488, 36.981018, 22.233877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179252, -0.243690, 0.953144,
		0.983219, -0.010977, 0.182102,
		-0.033914, 0.969791, 0.241568,
		37.942314, 37.271954, 22.306347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331612, 36.652893, 22.749975>,  <37.966053, 36.593102, 22.137251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331612, 36.652893, 22.749975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126293, 36.996178, 22.750261>,  <38.003101, 37.202148, 22.750433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126293, 36.996178, 22.750261>,  <38.331612, 36.652893, 22.749975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126293, 36.996178, 22.750261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289301, -0.173815, 0.941325,
		0.807980, 0.482972, 0.337500,
		-0.513296, 0.858211, 0.000715,
		37.972305, 37.253639, 22.750475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447872, 36.997581, 23.458574>,  <38.331612, 36.652893, 22.749975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447872, 36.997581, 23.458574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103046, 37.141476, 23.315777>,  <37.896152, 37.227814, 23.230099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103046, 37.141476, 23.315777>,  <38.447872, 36.997581, 23.458574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103046, 37.141476, 23.315777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446905, -0.207376, 0.870213,
		0.239015, 0.909718, 0.339538,
		-0.862060, 0.359735, -0.356992,
		37.844429, 37.249397, 23.208679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219673, 37.331367, 24.011608>,  <38.447872, 36.997581, 23.458574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219673, 37.331367, 24.011608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884621, 37.320992, 23.793362>,  <37.683590, 37.314766, 23.662415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884621, 37.320992, 23.793362>,  <38.219673, 37.331367, 24.011608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884621, 37.320992, 23.793362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545192, -0.021867, 0.838026,
		-0.033666, 0.999424, 0.004177,
		-0.837635, -0.025936, -0.545614,
		37.633331, 37.313210, 23.629677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654461, 37.977921, 24.181898>,  <38.219673, 37.331367, 24.011608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654461, 37.977921, 24.181898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482067, 37.650742, 24.029474>,  <37.378632, 37.454433, 23.938021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482067, 37.650742, 24.029474>,  <37.654461, 37.977921, 24.181898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482067, 37.650742, 24.029474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591487, -0.062834, 0.803862,
		-0.681464, 0.571845, -0.456728,
		-0.430986, -0.817952, -0.381058,
		37.352772, 37.405357, 23.915157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981075, 38.127914, 24.289642>,  <37.654461, 37.977921, 24.181898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981075, 38.127914, 24.289642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007515, 37.732422, 24.235901>,  <37.023376, 37.495129, 24.203657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007515, 37.732422, 24.235901>,  <36.981075, 38.127914, 24.289642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007515, 37.732422, 24.235901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779370, -0.135235, 0.611796,
		-0.623068, 0.064273, -0.779522,
		0.066097, -0.988727, -0.134353,
		37.027344, 37.435802, 24.195595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264263, 37.797615, 24.047903>,  <36.981075, 38.127914, 24.289642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264263, 37.797615, 24.047903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480339, 37.504177, 24.212839>,  <36.609985, 37.328114, 24.311800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480339, 37.504177, 24.212839>,  <36.264263, 37.797615, 24.047903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480339, 37.504177, 24.212839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785044, -0.262783, 0.560938,
		-0.303150, -0.626716, -0.717863,
		0.540191, -0.733603, 0.412337,
		36.642395, 37.284096, 24.336540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693745, 37.376751, 24.246763>,  <36.264263, 37.797615, 24.047903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693745, 37.376751, 24.246763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016174, 37.228882, 24.431623>,  <36.209633, 37.140160, 24.542540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016174, 37.228882, 24.431623>,  <35.693745, 37.376751, 24.246763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016174, 37.228882, 24.431623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571655, -0.284289, 0.769669,
		-0.153140, -0.884603, -0.440483,
		0.806076, -0.369671, 0.462152,
		36.257996, 37.117981, 24.570269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556793, 36.649944, 24.440577>,  <35.693745, 37.376751, 24.246763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556793, 36.649944, 24.440577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836060, 36.782093, 24.694639>,  <36.003620, 36.861382, 24.847076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836060, 36.782093, 24.694639>,  <35.556793, 36.649944, 24.440577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836060, 36.782093, 24.694639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577162, -0.265218, 0.772362,
		0.423622, -0.905822, 0.005513,
		0.698161, 0.330371, 0.635158,
		36.045509, 36.881203, 24.885187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624722, 36.053501, 24.923670>,  <35.556793, 36.649944, 24.440577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624722, 36.053501, 24.923670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751114, 36.393974, 25.091307>,  <35.826950, 36.598259, 25.191889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751114, 36.393974, 25.091307>,  <35.624722, 36.053501, 24.923670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751114, 36.393974, 25.091307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256047, -0.348830, 0.901531,
		0.913563, -0.392171, 0.107721,
		0.315978, 0.851187, 0.419092,
		35.845909, 36.649330, 25.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968090, 35.776310, 25.511404>,  <35.624722, 36.053501, 24.923670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968090, 35.776310, 25.511404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923065, 36.168442, 25.576256>,  <35.896049, 36.403721, 25.615168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923065, 36.168442, 25.576256>,  <35.968090, 35.776310, 25.511404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923065, 36.168442, 25.576256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228338, -0.184320, 0.955975,
		0.967053, 0.070589, 0.244594,
		-0.112565, 0.980328, 0.162129,
		35.889297, 36.462540, 25.624895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320198, 35.895580, 26.162088>,  <35.968090, 35.776310, 25.511404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320198, 35.895580, 26.162088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080196, 36.212917, 26.120920>,  <35.936195, 36.403320, 26.096218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080196, 36.212917, 26.120920>,  <36.320198, 35.895580, 26.162088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080196, 36.212917, 26.120920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316143, -0.116960, 0.941474,
		0.734877, 0.597430, 0.320988,
		-0.600008, 0.793346, -0.102922,
		35.900192, 36.450920, 26.090044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439983, 36.270302, 26.645067>,  <36.320198, 35.895580, 26.162088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439983, 36.270302, 26.645067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070370, 36.392265, 26.552818>,  <35.848602, 36.465443, 26.497469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070370, 36.392265, 26.552818>,  <36.439983, 36.270302, 26.645067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070370, 36.392265, 26.552818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322430, -0.297422, 0.898654,
		0.205419, 0.904748, 0.373141,
		-0.924036, 0.304913, -0.230622,
		35.793159, 36.483738, 26.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122852, 36.789600, 27.220169>,  <36.439983, 36.270302, 26.645067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122852, 36.789600, 27.220169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808727, 36.629124, 27.031563>,  <35.620251, 36.532837, 26.918398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808727, 36.629124, 27.031563>,  <36.122852, 36.789600, 27.220169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808727, 36.629124, 27.031563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525614, 0.029622, 0.850207,
		-0.327128, 0.915516, -0.234134,
		-0.785313, -0.401190, -0.471518,
		35.573132, 36.508766, 26.890108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518570, 37.121555, 27.515882>,  <36.122852, 36.789600, 27.220169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518570, 37.121555, 27.515882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383278, 36.792751, 27.332624>,  <35.302105, 36.595467, 27.222670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383278, 36.792751, 27.332624>,  <35.518570, 37.121555, 27.515882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383278, 36.792751, 27.332624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629586, -0.164189, 0.759384,
		-0.699445, 0.545287, -0.461994,
		-0.338228, -0.822012, -0.458146,
		35.281811, 36.546146, 27.195181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827713, 37.148975, 27.658129>,  <35.518570, 37.121555, 27.515882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827713, 37.148975, 27.658129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891102, 36.760983, 27.584356>,  <34.929134, 36.528187, 27.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891102, 36.760983, 27.584356>,  <34.827713, 37.148975, 27.658129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891102, 36.760983, 27.584356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480352, -0.238936, 0.843902,
		-0.862641, -0.045140, -0.503799,
		0.158470, -0.969986, -0.184433,
		34.938644, 36.469986, 27.529026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100948, 36.712250, 27.672657>,  <34.827713, 37.148975, 27.658129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100948, 36.712250, 27.672657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426807, 36.494385, 27.752337>,  <34.622322, 36.363667, 27.800144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426807, 36.494385, 27.752337>,  <34.100948, 36.712250, 27.672657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426807, 36.494385, 27.752337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398781, -0.276696, 0.874307,
		-0.421091, -0.791691, -0.442615,
		0.814651, -0.544669, 0.199197,
		34.671204, 36.330986, 27.812096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749050, 36.169647, 28.003788>,  <34.100948, 36.712250, 27.672657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749050, 36.169647, 28.003788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138088, 36.111057, 28.076010>,  <34.371510, 36.075901, 28.119343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138088, 36.111057, 28.076010>,  <33.749050, 36.169647, 28.003788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138088, 36.111057, 28.076010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220423, -0.333909, 0.916471,
		-0.073955, -0.931154, -0.357046,
		0.972597, -0.146479, 0.180554,
		34.429867, 36.067112, 28.130177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963379, 35.423008, 28.045076>,  <33.749050, 36.169647, 28.003788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963379, 35.423008, 28.045076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242683, 35.617393, 28.255322>,  <34.410267, 35.734024, 28.381468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242683, 35.617393, 28.255322>,  <33.963379, 35.423008, 28.045076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242683, 35.617393, 28.255322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233633, -0.539340, 0.809029,
		0.676641, -0.687716, -0.263065,
		0.698264, 0.485962, 0.525613,
		34.452164, 35.763184, 28.413006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247768, 34.863552, 28.435839>,  <33.963379, 35.423008, 28.045076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247768, 34.863552, 28.435839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376419, 35.197498, 28.614529>,  <34.453609, 35.397865, 28.721743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376419, 35.197498, 28.614529>,  <34.247768, 34.863552, 28.435839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376419, 35.197498, 28.614529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312238, -0.351887, 0.882430,
		0.893903, -0.423299, 0.147499,
		0.321629, 0.834861, 0.446723,
		34.472908, 35.447956, 28.748547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650875, 34.636608, 28.918390>,  <34.247768, 34.863552, 28.435839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650875, 34.636608, 28.918390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579575, 35.010910, 29.040098>,  <34.536793, 35.235493, 29.113123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579575, 35.010910, 29.040098>,  <34.650875, 34.636608, 28.918390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579575, 35.010910, 29.040098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219152, -0.339211, 0.914827,
		0.959270, 0.096391, 0.265539,
		-0.178255, 0.935759, 0.304271,
		34.526096, 35.291637, 29.131380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824635, 34.602829, 29.621511>,  <34.650875, 34.636608, 28.918390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824635, 34.602829, 29.621511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604420, 34.932613, 29.569099>,  <34.472290, 35.130486, 29.537653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604420, 34.932613, 29.569099>,  <34.824635, 34.602829, 29.621511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604420, 34.932613, 29.569099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337689, -0.076394, 0.938153,
		0.763464, 0.560734, 0.320470,
		-0.550536, 0.824465, -0.131029,
		34.439259, 35.179955, 29.529791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897202, 35.018925, 30.209379>,  <34.824635, 34.602829, 29.621511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897202, 35.018925, 30.209379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551094, 35.176304, 30.085110>,  <34.343430, 35.270729, 30.010548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551094, 35.176304, 30.085110>,  <34.897202, 35.018925, 30.209379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551094, 35.176304, 30.085110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338977, -0.002604, 0.940791,
		0.369341, 0.919344, 0.135622,
		-0.865264, 0.393445, -0.310674,
		34.291515, 35.294338, 29.991907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733185, 35.634876, 30.645376>,  <34.897202, 35.018925, 30.209379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733185, 35.634876, 30.645376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393181, 35.501522, 30.482241>,  <34.189178, 35.421509, 30.384359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393181, 35.501522, 30.482241>,  <34.733185, 35.634876, 30.645376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393181, 35.501522, 30.482241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461443, 0.097840, 0.881758,
		-0.254061, 0.937701, -0.237003,
		-0.850014, -0.333383, -0.407838,
		34.138176, 35.401508, 30.359890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219090, 36.206150, 30.525547>,  <34.733185, 35.634876, 30.645376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219090, 36.206150, 30.525547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511845, 36.365978, 30.746340>,  <35.687500, 36.461876, 30.878815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511845, 36.365978, 30.746340>,  <35.219090, 36.206150, 30.525547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511845, 36.365978, 30.746340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308594, 0.527863, -0.791284,
		-0.607541, 0.749471, 0.263034,
		0.731890, 0.399567, 0.551980,
		35.731411, 36.485847, 30.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259407, 36.767807, 30.239349>,  <35.219090, 36.206150, 30.525547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259407, 36.767807, 30.239349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595860, 36.766151, 30.455677>,  <35.797729, 36.765160, 30.585474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595860, 36.766151, 30.455677>,  <35.259407, 36.767807, 30.239349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595860, 36.766151, 30.455677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420835, 0.633109, -0.649670,
		-0.339709, 0.774051, 0.534268,
		0.841128, -0.004140, 0.540820,
		35.848198, 36.764908, 30.617924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455799, 37.437473, 30.287947>,  <35.259407, 36.767807, 30.239349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455799, 37.437473, 30.287947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784168, 37.214870, 30.339144>,  <35.981190, 37.081310, 30.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784168, 37.214870, 30.339144>,  <35.455799, 37.437473, 30.287947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784168, 37.214870, 30.339144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498229, 0.588515, -0.636725,
		0.279018, 0.586472, 0.760395,
		0.820925, -0.556508, 0.127991,
		36.030445, 37.047916, 30.377541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939831, 37.920116, 30.192080>,  <35.455799, 37.437473, 30.287947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939831, 37.920116, 30.192080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172981, 37.595329, 30.179712>,  <36.312874, 37.400455, 30.172293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172981, 37.595329, 30.179712>,  <35.939831, 37.920116, 30.192080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172981, 37.595329, 30.179712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606648, 0.460170, -0.648245,
		0.540582, 0.359093, 0.760804,
		0.582879, -0.811970, -0.030916,
		36.347847, 37.351738, 30.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606358, 38.089817, 30.266312>,  <35.939831, 37.920116, 30.192080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606358, 38.089817, 30.266312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615379, 37.743233, 30.066820>,  <36.620792, 37.535282, 29.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615379, 37.743233, 30.066820>,  <36.606358, 38.089817, 30.266312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615379, 37.743233, 30.066820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498553, 0.442149, -0.745620,
		0.866566, -0.231828, 0.441949,
		0.022552, -0.866464, -0.498730,
		36.622147, 37.483295, 29.917202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240925, 37.938183, 30.016766>,  <36.606358, 38.089817, 30.266312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240925, 37.938183, 30.016766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055424, 37.698639, 29.755600>,  <36.944122, 37.554913, 29.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055424, 37.698639, 29.755600>,  <37.240925, 37.938183, 30.016766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055424, 37.698639, 29.755600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641634, 0.281158, -0.713622,
		0.610934, -0.749875, 0.253864,
		-0.463751, -0.598863, -0.652915,
		36.916298, 37.518978, 29.559725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782764, 37.802753, 29.582846>,  <37.240925, 37.938183, 30.016766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782764, 37.802753, 29.582846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458576, 37.718513, 29.364201>,  <37.264065, 37.667969, 29.233013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458576, 37.718513, 29.364201>,  <37.782764, 37.802753, 29.582846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458576, 37.718513, 29.364201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415719, 0.450629, -0.790007,
		0.412691, -0.867516, -0.277674,
		-0.810472, -0.210594, -0.546613,
		37.215435, 37.655334, 29.200216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966106, 37.190636, 29.145105>,  <37.782764, 37.802753, 29.582846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966106, 37.190636, 29.145105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664299, 37.356541, 28.941666>,  <37.483215, 37.456085, 28.819601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664299, 37.356541, 28.941666>,  <37.966106, 37.190636, 29.145105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664299, 37.356541, 28.941666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627933, 0.230945, -0.743212,
		-0.190798, -0.880134, -0.434695,
		-0.754517, 0.414763, -0.508601,
		37.437943, 37.480968, 28.789085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983524, 36.891605, 28.443241>,  <37.966106, 37.190636, 29.145105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983524, 36.891605, 28.443241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766132, 37.226238, 28.415615>,  <37.635696, 37.427017, 28.399040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766132, 37.226238, 28.415615>,  <37.983524, 36.891605, 28.443241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766132, 37.226238, 28.415615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573418, 0.309908, -0.758385,
		-0.613045, -0.451767, -0.648137,
		-0.543477, 0.836578, -0.069064,
		37.603088, 37.477211, 28.394896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791096, 36.992310, 27.761719>,  <37.983524, 36.891605, 28.443241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791096, 36.992310, 27.761719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773987, 37.362877, 27.911345>,  <37.763721, 37.585217, 28.001120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773987, 37.362877, 27.911345>,  <37.791096, 36.992310, 27.761719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773987, 37.362877, 27.911345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384552, 0.360828, -0.849660,
		-0.922112, 0.107509, -0.371687,
		-0.042769, 0.926415, 0.374067,
		37.761154, 37.640800, 28.023565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628723, 37.333916, 27.229286>,  <37.791096, 36.992310, 27.761719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628723, 37.333916, 27.229286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 37.610783, 27.475080>,  <37.871010, 37.776901, 27.622557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 37.610783, 27.475080>,  <37.628723, 37.333916, 27.229286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780151, 37.610783, 27.475080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385159, 0.485875, -0.784588,
		-0.841626, 0.533698, -0.082654,
		0.378573, 0.692165, 0.614484,
		37.893723, 37.818432, 27.659426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367844, 37.788925, 26.986462>,  <37.628723, 37.333916, 27.229286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367844, 37.788925, 26.986462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671803, 37.961750, 27.180731>,  <37.854176, 38.065445, 27.297293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671803, 37.961750, 27.180731>,  <37.367844, 37.788925, 26.986462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671803, 37.961750, 27.180731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137924, 0.622962, -0.769997,
		-0.635246, 0.652103, 0.413792,
		0.759894, 0.432066, 0.485675,
		37.899769, 38.091370, 27.326433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188148, 38.484798, 26.865351>,  <37.367844, 37.788925, 26.986462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188148, 38.484798, 26.865351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576603, 38.460564, 26.957626>,  <37.809677, 38.446022, 27.012991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576603, 38.460564, 26.957626>,  <37.188148, 38.484798, 26.865351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576603, 38.460564, 26.957626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225505, 0.548235, -0.805348,
		-0.077680, 0.834127, 0.546075,
		0.971140, -0.060583, 0.230687,
		37.867947, 38.442390, 27.026833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452843, 39.198753, 26.768534>,  <37.188148, 38.484798, 26.865351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452843, 39.198753, 26.768534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760529, 38.945736, 26.732319>,  <37.945141, 38.793926, 26.710590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760529, 38.945736, 26.732319>,  <37.452843, 39.198753, 26.768534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760529, 38.945736, 26.732319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124918, 0.287808, -0.949506,
		0.626664, 0.719062, 0.300402,
		0.769212, -0.632547, -0.090535,
		37.991291, 38.755970, 26.705158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025314, 39.609783, 26.675144>,  <37.452843, 39.198753, 26.768534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025314, 39.609783, 26.675144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097340, 39.247555, 26.521515>,  <38.140556, 39.030216, 26.429337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097340, 39.247555, 26.521515>,  <38.025314, 39.609783, 26.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097340, 39.247555, 26.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375233, 0.424166, -0.824187,
		0.909273, 0.004288, 0.416178,
		0.180063, -0.905574, -0.384073,
		38.151360, 38.975883, 26.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571827, 39.680115, 26.269787>,  <38.025314, 39.609783, 26.675144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571827, 39.680115, 26.269787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481178, 39.307663, 26.155497>,  <38.426788, 39.084190, 26.086924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481178, 39.307663, 26.155497>,  <38.571827, 39.680115, 26.269787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481178, 39.307663, 26.155497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298519, 0.212836, -0.930369,
		0.927109, -0.296131, 0.229728,
		-0.226617, -0.931132, -0.285723,
		38.413193, 39.028324, 26.069780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219727, 39.355049, 26.039661>,  <38.571827, 39.680115, 26.269787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219727, 39.355049, 26.039661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905537, 39.177563, 25.867085>,  <38.717022, 39.071072, 25.763538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905537, 39.177563, 25.867085>,  <39.219727, 39.355049, 26.039661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905537, 39.177563, 25.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340881, 0.271667, -0.899998,
		0.516557, -0.853995, -0.062131,
		-0.785474, -0.443721, -0.431442,
		38.669895, 39.044445, 25.737652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467850, 38.846409, 25.503408>,  <39.219727, 39.355049, 26.039661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467850, 38.846409, 25.503408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081142, 38.890583, 25.411184>,  <38.849117, 38.917088, 25.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081142, 38.890583, 25.411184>,  <39.467850, 38.846409, 25.503408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081142, 38.890583, 25.411184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230468, -0.013759, -0.972983,
		-0.110622, -0.993788, -0.012150,
		-0.966771, 0.110433, -0.230559,
		38.791111, 38.923714, 25.342016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407707, 38.358437, 24.935564>,  <39.467850, 38.846409, 25.503408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407707, 38.358437, 24.935564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110695, 38.624382, 24.903030>,  <38.932487, 38.783947, 24.883511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110695, 38.624382, 24.903030>,  <39.407707, 38.358437, 24.935564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110695, 38.624382, 24.903030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159587, 0.057671, -0.985498,
		-0.650527, -0.744739, -0.148925,
		-0.742528, 0.664859, -0.081334,
		38.887936, 38.823841, 24.878630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963177, 38.115593, 24.460144>,  <39.407707, 38.358437, 24.935564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963177, 38.115593, 24.460144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856499, 38.500751, 24.443624>,  <38.792492, 38.731846, 24.433712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856499, 38.500751, 24.443624>,  <38.963177, 38.115593, 24.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856499, 38.500751, 24.443624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113814, -0.011087, -0.993440,
		-0.957036, -0.269649, -0.106634,
		-0.266698, 0.962895, -0.041300,
		38.776489, 38.789619, 24.431234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507034, 38.182255, 23.873144>,  <38.963177, 38.115593, 24.460144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507034, 38.182255, 23.873144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620800, 38.557190, 23.953644>,  <38.689060, 38.782150, 24.001944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620800, 38.557190, 23.953644>,  <38.507034, 38.182255, 23.873144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620800, 38.557190, 23.953644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087296, 0.183725, -0.979094,
		-0.954718, 0.296040, -0.029571,
		0.284418, 0.937340, 0.201249,
		38.706127, 38.838390, 24.014019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176022, 38.651012, 23.391378>,  <38.507034, 38.182255, 23.873144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176022, 38.651012, 23.391378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467667, 38.886135, 23.531588>,  <38.642654, 39.027210, 23.615713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467667, 38.886135, 23.531588>,  <38.176022, 38.651012, 23.391378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467667, 38.886135, 23.531588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208298, 0.297275, -0.931794,
		-0.651920, 0.752400, 0.094308,
		0.729117, 0.587811, 0.350523,
		38.686401, 39.062477, 23.636745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171143, 39.287300, 22.965563>,  <38.176022, 38.651012, 23.391378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171143, 39.287300, 22.965563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533756, 39.259666, 23.132143>,  <38.751324, 39.243088, 23.232092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533756, 39.259666, 23.132143>,  <38.171143, 39.287300, 22.965563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533756, 39.259666, 23.132143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422102, 0.161889, -0.891976,
		-0.005801, 0.984388, 0.175916,
		0.906530, -0.069080, 0.416451,
		38.805714, 39.238941, 23.257078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639236, 39.689556, 22.584354>,  <38.171143, 39.287300, 22.965563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639236, 39.689556, 22.584354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925911, 39.480026, 22.768515>,  <39.097916, 39.354309, 22.879011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925911, 39.480026, 22.768515>,  <38.639236, 39.689556, 22.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925911, 39.480026, 22.768515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538566, -0.003699, -0.842575,
		0.443063, 0.851819, 0.279462,
		0.716688, -0.523823, 0.460399,
		39.140919, 39.322880, 22.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309868, 40.038460, 22.412043>,  <38.639236, 39.689556, 22.584354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309868, 40.038460, 22.412043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404076, 39.668777, 22.532290>,  <39.460602, 39.446968, 22.604437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404076, 39.668777, 22.532290>,  <39.309868, 40.038460, 22.412043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404076, 39.668777, 22.532290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713274, -0.045722, -0.699393,
		0.660129, 0.379143, 0.648444,
		0.235521, -0.924208, 0.300615,
		39.474731, 39.391514, 22.622475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988750, 40.036770, 22.516630>,  <39.309868, 40.038460, 22.412043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988750, 40.036770, 22.516630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940441, 39.643810, 22.459639>,  <39.911453, 39.408035, 22.425444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940441, 39.643810, 22.459639>,  <39.988750, 40.036770, 22.516630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940441, 39.643810, 22.459639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776639, -0.004122, -0.629933,
		0.618259, -0.186735, 0.763469,
		-0.120777, -0.982402, -0.142477,
		39.904209, 39.349091, 22.416895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702824, 39.714691, 22.591352>,  <39.988750, 40.036770, 22.516630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702824, 39.714691, 22.591352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470695, 39.442928, 22.411734>,  <40.331421, 39.279873, 22.303963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470695, 39.442928, 22.411734>,  <40.702824, 39.714691, 22.591352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470695, 39.442928, 22.411734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732159, -0.193798, -0.652982,
		0.356614, -0.707710, 0.609896,
		-0.580318, -0.679403, -0.449045,
		40.296600, 39.239109, 22.277020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069008, 39.143688, 22.427109>,  <40.702824, 39.714691, 22.591352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069008, 39.143688, 22.427109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762634, 39.135220, 22.170080>,  <40.578812, 39.130138, 22.015863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762634, 39.135220, 22.170080>,  <41.069008, 39.143688, 22.427109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762634, 39.135220, 22.170080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635861, -0.172627, -0.752251,
		-0.094999, -0.984760, 0.145682,
		-0.765935, -0.021170, -0.642569,
		40.532852, 39.128868, 21.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120190, 38.445240, 22.105009>,  <41.069008, 39.143688, 22.427109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120190, 38.445240, 22.105009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900322, 38.690014, 21.877533>,  <40.768402, 38.836876, 21.741047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900322, 38.690014, 21.877533>,  <41.120190, 38.445240, 22.105009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900322, 38.690014, 21.877533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469092, -0.337201, -0.816241,
		-0.691246, -0.715426, -0.101705,
		-0.549665, 0.611932, -0.568690,
		40.735424, 38.873592, 21.706926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057468, 38.050797, 21.547113>,  <41.120190, 38.445240, 22.105009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057468, 38.050797, 21.547113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949947, 38.409367, 21.406166>,  <40.885437, 38.624508, 21.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949947, 38.409367, 21.406166>,  <41.057468, 38.050797, 21.547113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949947, 38.409367, 21.406166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677907, -0.083814, -0.730354,
		-0.684244, -0.435190, -0.585166,
		-0.268798, 0.896429, -0.352367,
		40.869308, 38.678295, 21.300455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124317, 37.936409, 20.859177>,  <41.057468, 38.050797, 21.547113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124317, 37.936409, 20.859177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116302, 38.333828, 20.903845>,  <41.111496, 38.572277, 20.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116302, 38.333828, 20.903845>,  <41.124317, 37.936409, 20.859177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116302, 38.333828, 20.903845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591112, 0.101851, -0.800133,
		-0.806341, 0.049979, -0.589335,
		-0.020034, 0.993543, 0.111670,
		41.110291, 38.631889, 20.937346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006241, 38.239944, 20.220779>,  <41.124317, 37.936409, 20.859177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006241, 38.239944, 20.220779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185631, 38.525223, 20.436270>,  <41.293262, 38.696388, 20.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185631, 38.525223, 20.436270>,  <41.006241, 38.239944, 20.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185631, 38.525223, 20.436270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728589, 0.057418, -0.682540,
		-0.517718, 0.698609, -0.493877,
		0.448471, 0.713197, 0.538725,
		41.320171, 38.739182, 20.597887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396278, 38.732464, 19.644024>,  <41.006241, 38.239944, 20.220779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396278, 38.732464, 19.644024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554008, 38.826809, 19.999298>,  <41.648647, 38.883415, 20.212463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554008, 38.826809, 19.999298>,  <41.396278, 38.732464, 19.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554008, 38.826809, 19.999298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903505, 0.077063, -0.421591,
		-0.167886, 0.968725, -0.182719,
		0.394325, 0.235867, 0.888186,
		41.672306, 38.897568, 20.265755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776733, 39.337063, 19.577213>,  <41.396278, 38.732464, 19.644024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776733, 39.337063, 19.577213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945381, 39.149982, 19.887955>,  <42.046570, 39.037735, 20.074400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945381, 39.149982, 19.887955>,  <41.776733, 39.337063, 19.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945381, 39.149982, 19.887955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854299, -0.082338, -0.513219,
		0.303995, 0.880046, 0.364838,
		0.421616, -0.467697, 0.776852,
		42.071865, 39.009674, 20.121010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459621, 39.411369, 19.494467>,  <41.776733, 39.337063, 19.577213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459621, 39.411369, 19.494467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465794, 39.119034, 19.767416>,  <42.469498, 38.943630, 19.931185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465794, 39.119034, 19.767416>,  <42.459621, 39.411369, 19.494467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465794, 39.119034, 19.767416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886214, -0.306032, -0.347805,
		0.463019, 0.610094, 0.642961,
		0.015427, -0.730842, 0.682372,
		42.470421, 38.899780, 19.972128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098351, 39.388779, 19.784912>,  <42.459621, 39.411369, 19.494467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098351, 39.388779, 19.784912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946167, 39.023354, 19.842407>,  <42.854858, 38.804100, 19.876904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946167, 39.023354, 19.842407>,  <43.098351, 39.388779, 19.784912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946167, 39.023354, 19.842407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832917, -0.406033, -0.376015,
		0.401875, -0.023335, 0.915397,
		-0.380455, -0.913561, 0.143739,
		42.832031, 38.749287, 19.885529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631245, 39.051094, 20.023510>,  <43.098351, 39.388779, 19.784912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631245, 39.051094, 20.023510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402393, 38.753235, 19.886005>,  <43.265083, 38.574520, 19.803503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402393, 38.753235, 19.886005>,  <43.631245, 39.051094, 20.023510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402393, 38.753235, 19.886005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778662, -0.361516, -0.512826,
		0.257599, -0.561076, 0.786662,
		-0.572126, -0.744647, -0.343763,
		43.230755, 38.529842, 19.782877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062351, 38.448483, 20.020679>,  <43.631245, 39.051094, 20.023510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062351, 38.448483, 20.020679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770958, 38.346840, 19.766203>,  <43.596123, 38.285854, 19.613518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770958, 38.346840, 19.766203>,  <44.062351, 38.448483, 20.020679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770958, 38.346840, 19.766203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684273, -0.314490, -0.657926,
		-0.032891, -0.914617, 0.402981,
		-0.728484, -0.254109, -0.636192,
		43.552414, 38.270607, 19.575346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162331, 38.237064, 19.315382>,  <44.062351, 38.448483, 20.020679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162331, 38.237064, 19.315382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480366, 38.025536, 19.434162>,  <44.671188, 37.898617, 19.505430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480366, 38.025536, 19.434162>,  <44.162331, 38.237064, 19.315382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480366, 38.025536, 19.434162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439778, -0.165534, 0.882720,
		-0.417650, -0.832431, -0.364180,
		0.795087, -0.528826, 0.296950,
		44.718891, 37.866886, 19.523247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906780, 37.649578, 19.717693>,  <44.162331, 38.237064, 19.315382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906780, 37.649578, 19.717693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292530, 37.675583, 19.820259>,  <44.523979, 37.691185, 19.881798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292530, 37.675583, 19.820259>,  <43.906780, 37.649578, 19.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292530, 37.675583, 19.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236323, -0.223786, 0.945554,
		0.118852, -0.972468, -0.200451,
		0.964378, 0.065010, 0.256414,
		44.581844, 37.695087, 19.897182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974388, 37.024956, 20.114374>,  <43.906780, 37.649578, 19.717693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974388, 37.024956, 20.114374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253006, 37.287086, 20.231249>,  <44.420177, 37.444363, 20.301374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253006, 37.287086, 20.231249>,  <43.974388, 37.024956, 20.114374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253006, 37.287086, 20.231249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330937, -0.067901, 0.941207,
		0.636635, -0.752290, 0.169574,
		0.696546, 0.655323, 0.292189,
		44.461971, 37.483685, 20.318905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198952, 36.648407, 20.661020>,  <43.974388, 37.024956, 20.114374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198952, 36.648407, 20.661020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340221, 37.021698, 20.687403>,  <44.424984, 37.245674, 20.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340221, 37.021698, 20.687403>,  <44.198952, 36.648407, 20.661020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340221, 37.021698, 20.687403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315275, 0.052345, 0.947555,
		0.880835, -0.355445, 0.312712,
		0.353173, 0.933230, 0.065955,
		44.446175, 37.301666, 20.707190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693871, 36.641888, 21.184566>,  <44.198952, 36.648407, 20.661020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693871, 36.641888, 21.184566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580765, 37.023785, 21.147655>,  <44.512901, 37.252922, 21.125509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580765, 37.023785, 21.147655>,  <44.693871, 36.641888, 21.184566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580765, 37.023785, 21.147655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028042, 0.087936, 0.995731,
		0.958779, 0.284148, 0.001907,
		-0.282767, 0.954739, -0.092279,
		44.495934, 37.310207, 21.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041584, 37.013065, 21.735880>,  <44.693871, 36.641888, 21.184566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041584, 37.013065, 21.735880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746765, 37.248535, 21.603081>,  <44.569874, 37.389816, 21.523401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746765, 37.248535, 21.603081>,  <45.041584, 37.013065, 21.735880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746765, 37.248535, 21.603081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221488, 0.253713, 0.941580,
		0.638519, 0.767521, -0.056613,
		-0.737046, 0.588677, -0.331997,
		44.525650, 37.425137, 21.503481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044029, 37.603577, 22.120144>,  <45.041584, 37.013065, 21.735880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044029, 37.603577, 22.120144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668743, 37.572029, 21.985361>,  <44.443573, 37.553101, 21.904491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668743, 37.572029, 21.985361>,  <45.044029, 37.603577, 22.120144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668743, 37.572029, 21.985361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345643, 0.165521, 0.923652,
		-0.017072, 0.983048, -0.182553,
		-0.938211, -0.078867, -0.336958,
		44.387280, 37.548370, 21.884274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677757, 38.118427, 22.441305>,  <45.044029, 37.603577, 22.120144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677757, 38.118427, 22.441305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355782, 37.915581, 22.318081>,  <44.162594, 37.793873, 22.244146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355782, 37.915581, 22.318081>,  <44.677757, 38.118427, 22.441305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355782, 37.915581, 22.318081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547097, 0.433356, 0.716161,
		-0.229674, 0.745009, -0.626268,
		-0.804944, -0.507113, -0.308062,
		44.114300, 37.763447, 22.225662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036465, 38.649456, 22.421661>,  <44.677757, 38.118427, 22.441305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036465, 38.649456, 22.421661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890099, 38.277294, 22.413240>,  <43.802277, 38.053997, 22.408188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890099, 38.277294, 22.413240>,  <44.036465, 38.649456, 22.421661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890099, 38.277294, 22.413240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761059, 0.286143, 0.582161,
		-0.535624, 0.229046, -0.812801,
		-0.365919, -0.930409, -0.021052,
		43.780323, 37.998173, 22.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230019, 38.629814, 22.280594>,  <44.036465, 38.649456, 22.421661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230019, 38.629814, 22.280594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323708, 38.299538, 22.485872>,  <43.379921, 38.101372, 22.609039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323708, 38.299538, 22.485872>,  <43.230019, 38.629814, 22.280594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323708, 38.299538, 22.485872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793666, 0.142464, 0.591438,
		-0.561458, -0.545833, -0.621957,
		0.234220, -0.825693, 0.513197,
		43.393974, 38.051830, 22.639832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609661, 38.445145, 22.536373>,  <43.230019, 38.629814, 22.280594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609661, 38.445145, 22.536373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841660, 38.179371, 22.724897>,  <42.980858, 38.019905, 22.838013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841660, 38.179371, 22.724897>,  <42.609661, 38.445145, 22.536373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841660, 38.179371, 22.724897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620264, 0.014866, 0.784252,
		-0.528091, -0.747199, -0.403502,
		0.579994, -0.664434, 0.471311,
		43.015659, 37.980042, 22.866291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192219, 37.863029, 22.764860>,  <42.609661, 38.445145, 22.536373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192219, 37.863029, 22.764860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515301, 37.877705, 23.000237>,  <42.709148, 37.886509, 23.141462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515301, 37.877705, 23.000237>,  <42.192219, 37.863029, 22.764860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515301, 37.877705, 23.000237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570086, -0.205949, 0.795353,
		0.150373, -0.977874, -0.145428,
		0.807706, 0.036693, 0.588443,
		42.757614, 37.888714, 23.176769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110359, 37.418865, 23.327768>,  <42.192219, 37.863029, 22.764860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110359, 37.418865, 23.327768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412376, 37.643410, 23.463285>,  <42.593586, 37.778137, 23.544596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412376, 37.643410, 23.463285>,  <42.110359, 37.418865, 23.327768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412376, 37.643410, 23.463285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287651, -0.180731, 0.940528,
		0.589204, -0.807597, 0.025015,
		0.755046, 0.561359, 0.338794,
		42.638889, 37.811817, 23.564924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485291, 37.078472, 23.812401>,  <42.110359, 37.418865, 23.327768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485291, 37.078472, 23.812401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544056, 37.462540, 23.907467>,  <42.579315, 37.692982, 23.964506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544056, 37.462540, 23.907467>,  <42.485291, 37.078472, 23.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544056, 37.462540, 23.907467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397718, -0.162653, 0.902975,
		0.905669, -0.227186, 0.357981,
		0.146916, 0.960172, 0.237666,
		42.588131, 37.750591, 23.978767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808178, 37.092682, 24.517109>,  <42.485291, 37.078472, 23.812401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808178, 37.092682, 24.517109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657619, 37.456799, 24.448185>,  <42.567284, 37.675270, 24.406832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657619, 37.456799, 24.448185>,  <42.808178, 37.092682, 24.517109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657619, 37.456799, 24.448185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302196, 0.055181, 0.951647,
		0.875786, 0.410270, 0.254317,
		-0.376399, 0.910293, -0.172309,
		42.544701, 37.729885, 24.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136890, 37.453537, 25.020958>,  <42.808178, 37.092682, 24.517109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136890, 37.453537, 25.020958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827652, 37.685715, 24.918659>,  <42.642109, 37.825020, 24.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827652, 37.685715, 24.918659>,  <43.136890, 37.453537, 25.020958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827652, 37.685715, 24.918659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243603, 0.100569, 0.964647,
		0.585643, 0.808066, 0.063648,
		-0.773097, 0.580444, -0.255745,
		42.595722, 37.859848, 24.841936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100327, 38.018108, 25.486551>,  <43.136890, 37.453537, 25.020958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100327, 38.018108, 25.486551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728180, 37.995106, 25.341717>,  <42.504890, 37.981304, 25.254816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728180, 37.995106, 25.341717>,  <43.100327, 38.018108, 25.486551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728180, 37.995106, 25.341717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366328, 0.106155, 0.924410,
		-0.014725, 0.992685, -0.119831,
		-0.930369, -0.057510, -0.362085,
		42.449070, 37.977852, 25.233091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639458, 38.550964, 25.787535>,  <43.100327, 38.018108, 25.486551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639458, 38.550964, 25.787535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372303, 38.278851, 25.666775>,  <42.212009, 38.115582, 25.594318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372303, 38.278851, 25.666775>,  <42.639458, 38.550964, 25.787535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372303, 38.278851, 25.666775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449935, 0.045932, 0.891879,
		-0.592867, 0.731505, -0.336762,
		-0.667883, -0.680287, -0.301898,
		42.171940, 38.074764, 25.576206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965416, 38.814671, 26.073566>,  <42.639458, 38.550964, 25.787535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965416, 38.814671, 26.073566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876637, 38.436901, 25.976570>,  <41.823368, 38.210239, 25.918373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876637, 38.436901, 25.976570>,  <41.965416, 38.814671, 26.073566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876637, 38.436901, 25.976570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717414, -0.010254, 0.696572,
		-0.660346, 0.328569, -0.675267,
		-0.221948, -0.944425, -0.242491,
		41.810051, 38.153572, 25.903824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215641, 38.865334, 26.024055>,  <41.965416, 38.814671, 26.073566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215641, 38.865334, 26.024055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342575, 38.487133, 26.053238>,  <41.418736, 38.260212, 26.070747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342575, 38.487133, 26.053238>,  <41.215641, 38.865334, 26.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342575, 38.487133, 26.053238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622643, -0.149707, 0.768052,
		-0.715274, -0.289153, -0.636218,
		0.317331, -0.945504, 0.072957,
		41.437775, 38.203484, 26.075125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595779, 38.553211, 26.091448>,  <41.215641, 38.865334, 26.024055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595779, 38.553211, 26.091448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880985, 38.323673, 26.252602>,  <41.052109, 38.185951, 26.349295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880985, 38.323673, 26.252602>,  <40.595779, 38.553211, 26.091448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880985, 38.323673, 26.252602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582372, -0.164709, 0.796061,
		-0.390460, -0.802228, -0.451632,
		0.713010, -0.573848, 0.402883,
		41.094887, 38.151520, 26.373466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334297, 37.810783, 26.205463>,  <40.595779, 38.553211, 26.091448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334297, 37.810783, 26.205463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649353, 37.827583, 26.451344>,  <40.838387, 37.837666, 26.598871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649353, 37.827583, 26.451344>,  <40.334297, 37.810783, 26.205463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649353, 37.827583, 26.451344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582239, -0.275595, 0.764883,
		0.201534, -0.960356, -0.192615,
		0.787643, 0.042002, 0.614699,
		40.885647, 37.840183, 26.635754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228859, 37.223927, 26.658920>,  <40.334297, 37.810783, 26.205463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228859, 37.223927, 26.658920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513748, 37.427746, 26.852045>,  <40.684681, 37.550037, 26.967920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513748, 37.427746, 26.852045>,  <40.228859, 37.223927, 26.658920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513748, 37.427746, 26.852045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470222, -0.164356, 0.867109,
		0.521183, -0.844601, 0.122541,
		0.712221, 0.509545, 0.482810,
		40.727413, 37.580608, 26.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488770, 36.791302, 27.250179>,  <40.228859, 37.223927, 26.658920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488770, 36.791302, 27.250179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567745, 37.176136, 27.325455>,  <40.615131, 37.407036, 27.370621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567745, 37.176136, 27.325455>,  <40.488770, 36.791302, 27.250179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567745, 37.176136, 27.325455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396015, -0.097332, 0.913071,
		0.896766, -0.254804, 0.361781,
		0.197441, 0.962082, 0.188190,
		40.626976, 37.464760, 27.381912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815159, 36.746326, 27.830662>,  <40.488770, 36.791302, 27.250179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815159, 36.746326, 27.830662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690231, 37.125847, 27.811739>,  <40.615273, 37.353558, 27.800386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690231, 37.125847, 27.811739>,  <40.815159, 36.746326, 27.830662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690231, 37.125847, 27.811739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359448, -0.071935, 0.930388,
		0.879347, 0.307585, 0.363510,
		-0.312322, 0.948797, -0.047305,
		40.596535, 37.410484, 27.797548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904713, 36.951500, 28.435429>,  <40.815159, 36.746326, 27.830662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904713, 36.951500, 28.435429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677471, 37.254509, 28.306791>,  <40.541126, 37.436314, 28.229609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677471, 37.254509, 28.306791>,  <40.904713, 36.951500, 28.435429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677471, 37.254509, 28.306791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134466, 0.300081, 0.944389,
		0.811897, 0.579754, -0.068616,
		-0.568104, 0.757520, -0.321592,
		40.507038, 37.481766, 28.210314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171150, 37.541103, 28.812754>,  <40.904713, 36.951500, 28.435429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171150, 37.541103, 28.812754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792736, 37.603626, 28.699202>,  <40.565689, 37.641140, 28.631069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792736, 37.603626, 28.699202>,  <41.171150, 37.541103, 28.812754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792736, 37.603626, 28.699202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269839, 0.105171, 0.957145,
		0.179467, 0.982093, -0.057317,
		-0.946033, 0.156309, -0.283882,
		40.508926, 37.650520, 28.614037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004890, 38.082699, 29.145927>,  <41.171150, 37.541103, 28.812754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004890, 38.082699, 29.145927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640579, 37.940151, 29.062523>,  <40.421993, 37.854622, 29.012480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640579, 37.940151, 29.062523>,  <41.004890, 38.082699, 29.145927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640579, 37.940151, 29.062523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206238, -0.044837, 0.977474,
		-0.357695, 0.933267, -0.032661,
		-0.910780, -0.356373, -0.208513,
		40.367344, 37.833241, 28.999969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581211, 38.507114, 29.501146>,  <41.004890, 38.082699, 29.145927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581211, 38.507114, 29.501146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392620, 38.159561, 29.440813>,  <40.279465, 37.951031, 29.404613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392620, 38.159561, 29.440813>,  <40.581211, 38.507114, 29.501146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392620, 38.159561, 29.440813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209419, -0.055829, 0.976231,
		-0.856651, 0.491860, -0.155638,
		-0.471479, -0.868883, -0.150831,
		40.251175, 37.898895, 29.395563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990116, 38.507431, 30.018557>,  <40.581211, 38.507114, 29.501146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990116, 38.507431, 30.018557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064651, 38.128052, 29.916012>,  <40.109371, 37.900425, 29.854485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064651, 38.128052, 29.916012>,  <39.990116, 38.507431, 30.018557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064651, 38.128052, 29.916012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063934, -0.272082, 0.960148,
		-0.980403, -0.162521, -0.111337,
		0.186337, -0.948450, -0.256360,
		40.120552, 37.843517, 29.839104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751480, 38.105919, 30.578501>,  <39.990116, 38.507431, 30.018557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751480, 38.105919, 30.578501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938744, 37.806141, 30.391241>,  <40.051102, 37.626274, 30.278885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938744, 37.806141, 30.391241>,  <39.751480, 38.105919, 30.578501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938744, 37.806141, 30.391241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199678, -0.426366, 0.882236,
		-0.860789, -0.506504, -0.049959,
		0.468157, -0.749443, -0.468149,
		40.079189, 37.581306, 30.250797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393509, 37.438629, 30.803680>,  <39.751480, 38.105919, 30.578501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393509, 37.438629, 30.803680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775566, 37.437569, 30.685226>,  <40.004799, 37.436932, 30.614155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775566, 37.437569, 30.685226>,  <39.393509, 37.438629, 30.803680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775566, 37.437569, 30.685226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284574, -0.268611, 0.920253,
		-0.081981, -0.963245, -0.255809,
		0.955143, -0.002647, -0.296135,
		40.062107, 37.436775, 30.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651184, 36.814842, 31.094570>,  <39.393509, 37.438629, 30.803680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651184, 36.814842, 31.094570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984451, 37.006245, 30.983675>,  <40.184414, 37.121086, 30.917137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984451, 37.006245, 30.983675>,  <39.651184, 36.814842, 31.094570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984451, 37.006245, 30.983675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465932, -0.337348, 0.817988,
		0.297883, -0.810698, -0.504018,
		0.833170, 0.478503, -0.277240,
		40.234402, 37.149796, 30.900503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130535, 36.449036, 31.331987>,  <39.651184, 36.814842, 31.094570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130535, 36.449036, 31.331987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344032, 36.785110, 31.293629>,  <40.472130, 36.986755, 31.270613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344032, 36.785110, 31.293629>,  <40.130535, 36.449036, 31.331987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344032, 36.785110, 31.293629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495006, -0.218470, 0.840976,
		0.685630, -0.496335, -0.532507,
		0.533742, 0.840192, -0.095899,
		40.504154, 37.037167, 31.264858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755058, 36.205944, 31.198336>,  <40.130535, 36.449036, 31.331987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755058, 36.205944, 31.198336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787918, 36.576702, 31.344822>,  <40.807632, 36.799156, 31.432714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787918, 36.576702, 31.344822>,  <40.755058, 36.205944, 31.198336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787918, 36.576702, 31.344822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648733, -0.328684, 0.686377,
		0.756569, 0.181191, -0.628309,
		0.082150, 0.926897, 0.366216,
		40.812565, 36.854771, 31.454687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388527, 36.256241, 31.455879>,  <40.755058, 36.205944, 31.198336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388527, 36.256241, 31.455879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220818, 36.571934, 31.635355>,  <41.120190, 36.761349, 31.743040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220818, 36.571934, 31.635355>,  <41.388527, 36.256241, 31.455879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220818, 36.571934, 31.635355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427659, -0.264260, 0.864450,
		0.800821, 0.554330, -0.226724,
		-0.419277, 0.789231, 0.448689,
		41.095036, 36.808704, 31.769962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876942, 36.481960, 31.939878>,  <41.388527, 36.256241, 31.455879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876942, 36.481960, 31.939878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521194, 36.630028, 32.047203>,  <41.307747, 36.718868, 32.111599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521194, 36.630028, 32.047203>,  <41.876942, 36.481960, 31.939878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521194, 36.630028, 32.047203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153638, -0.310758, 0.937990,
		0.430595, 0.875445, 0.219508,
		-0.889373, 0.370169, 0.268312,
		41.254383, 36.741077, 32.127697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102684, 36.963348, 32.495598>,  <41.876942, 36.481960, 31.939878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102684, 36.963348, 32.495598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705414, 36.938568, 32.535118>,  <41.467052, 36.923698, 32.558830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705414, 36.938568, 32.535118>,  <42.102684, 36.963348, 32.495598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705414, 36.938568, 32.535118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099682, -0.011233, 0.994956,
		-0.060533, 0.998016, 0.017332,
		-0.993176, -0.061955, 0.098804,
		41.407459, 36.919983, 32.564758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020126, 37.440521, 32.998455>,  <42.102684, 36.963348, 32.495598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020126, 37.440521, 32.998455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746227, 37.149029, 32.995129>,  <41.581886, 36.974133, 32.993134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746227, 37.149029, 32.995129>,  <42.020126, 37.440521, 32.998455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746227, 37.149029, 32.995129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210378, -0.208578, 0.955111,
		-0.697753, 0.652263, 0.296132,
		-0.684750, -0.728731, -0.008314,
		41.540802, 36.930408, 32.992634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746021, 37.447365, 33.670250>,  <42.020126, 37.440521, 32.998455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746021, 37.447365, 33.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647812, 37.089542, 33.520855>,  <41.588886, 36.874851, 33.431217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647812, 37.089542, 33.520855>,  <41.746021, 37.447365, 33.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647812, 37.089542, 33.520855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282210, -0.434551, 0.855291,
		-0.927402, 0.104595, 0.359146,
		-0.245526, -0.894553, -0.373486,
		41.574154, 36.821175, 33.408810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420258, 36.951447, 34.260696>,  <41.746021, 37.447365, 33.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420258, 36.951447, 34.260696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514843, 36.686649, 33.976204>,  <41.571594, 36.527771, 33.805508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514843, 36.686649, 33.976204>,  <41.420258, 36.951447, 34.260696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514843, 36.686649, 33.976204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332108, -0.632841, 0.699440,
		-0.913120, -0.401601, 0.070205,
		0.236467, -0.661988, -0.711234,
		41.585785, 36.488052, 33.762833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086376, 36.289234, 34.486813>,  <41.420258, 36.951447, 34.260696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086376, 36.289234, 34.486813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401100, 36.208172, 34.253620>,  <41.589935, 36.159534, 34.113705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401100, 36.208172, 34.253620>,  <41.086376, 36.289234, 34.486813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401100, 36.208172, 34.253620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314254, -0.681407, 0.661006,
		-0.531205, -0.703288, -0.472450,
		0.786807, -0.202660, -0.582977,
		41.637142, 36.147373, 34.078728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124271, 35.582195, 34.365036>,  <41.086376, 36.289234, 34.486813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124271, 35.582195, 34.365036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494560, 35.718262, 34.298923>,  <41.716736, 35.799900, 34.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494560, 35.718262, 34.298923>,  <41.124271, 35.582195, 34.365036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494560, 35.718262, 34.298923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356177, -0.637219, 0.683439,
		0.127163, -0.691547, -0.711050,
		0.925725, 0.340167, -0.165283,
		41.772278, 35.820312, 34.249340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468159, 34.957199, 34.117558>,  <41.124271, 35.582195, 34.365036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468159, 34.957199, 34.117558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714531, 35.156906, 34.361317>,  <41.862354, 35.276730, 34.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714531, 35.156906, 34.361317>,  <41.468159, 34.957199, 34.117558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714531, 35.156906, 34.361317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059397, -0.800765, 0.596026,
		0.785561, -0.330911, -0.522868,
		0.615926, 0.499272, 0.609395,
		41.899307, 35.306686, 34.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882229, 34.479546, 34.376530>,  <41.468159, 34.957199, 34.117558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882229, 34.479546, 34.376530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899677, 34.787083, 34.631710>,  <41.910145, 34.971603, 34.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899677, 34.787083, 34.631710>,  <41.882229, 34.479546, 34.376530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899677, 34.787083, 34.631710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082118, -0.639153, 0.764683,
		0.995668, 0.019034, -0.091014,
		0.043617, 0.768844, 0.637947,
		41.912762, 35.017735, 34.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695633, 34.389675, 34.225056>,  <41.882229, 34.479546, 34.376530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695633, 34.389675, 34.225056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975922, 34.104351, 34.219700>,  <43.144096, 33.933159, 34.216488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975922, 34.104351, 34.219700>,  <42.695633, 34.389675, 34.225056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975922, 34.104351, 34.219700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602888, 0.582011, 0.545700,
		-0.381460, -0.390457, 0.837873,
		0.700724, -0.713307, -0.013388,
		43.186138, 33.890358, 34.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404522, 34.277267, 34.890274>,  <42.695633, 34.389675, 34.225056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404522, 34.277267, 34.890274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266239, 34.593082, 35.093102>,  <42.183270, 34.782570, 35.214798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266239, 34.593082, 35.093102>,  <42.404522, 34.277267, 34.890274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266239, 34.593082, 35.093102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036520, -0.551302, 0.833506,
		0.937632, 0.269629, 0.219422,
		-0.345705, 0.789535, 0.507072,
		42.162529, 34.829945, 35.245224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708065, 34.334465, 35.537102>,  <42.404522, 34.277267, 34.890274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708065, 34.334465, 35.537102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372005, 34.534683, 35.620621>,  <42.170368, 34.654816, 35.670731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372005, 34.534683, 35.620621>,  <42.708065, 34.334465, 35.537102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372005, 34.534683, 35.620621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175046, -0.614646, 0.769136,
		0.513324, 0.609643, 0.604015,
		-0.840153, 0.500546, 0.208797,
		42.119961, 34.684849, 35.683258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837925, 34.633011, 36.232693>,  <42.708065, 34.334465, 35.537102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837925, 34.633011, 36.232693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449043, 34.585373, 36.152065>,  <42.215714, 34.556789, 36.103687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449043, 34.585373, 36.152065>,  <42.837925, 34.633011, 36.232693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449043, 34.585373, 36.152065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114984, -0.507085, 0.854192,
		-0.203942, 0.853628, 0.479297,
		-0.972207, -0.119094, -0.201570,
		42.157383, 34.549644, 36.091595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443954, 34.865166, 36.715061>,  <42.837925, 34.633011, 36.232693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443954, 34.865166, 36.715061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232883, 34.573006, 36.541595>,  <42.106239, 34.397709, 36.437515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232883, 34.573006, 36.541595>,  <42.443954, 34.865166, 36.715061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232883, 34.573006, 36.541595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072288, -0.470065, 0.879666,
		-0.846364, 0.495528, 0.195243,
		-0.527677, -0.730404, -0.433667,
		42.074581, 34.353886, 36.411495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919342, 34.618664, 37.257187>,  <42.443954, 34.865166, 36.715061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919342, 34.618664, 37.257187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880203, 34.364891, 36.950485>,  <41.856720, 34.212627, 36.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880203, 34.364891, 36.950485>,  <41.919342, 34.618664, 37.257187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880203, 34.364891, 36.950485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238325, -0.733099, 0.636998,
		-0.966244, 0.245067, -0.079470,
		-0.097847, -0.634436, -0.766757,
		41.850849, 34.174561, 36.720459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478477, 34.173630, 37.564995>,  <41.919342, 34.618664, 37.257187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478477, 34.173630, 37.564995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639610, 33.970016, 37.260731>,  <41.736290, 33.847847, 37.078171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639610, 33.970016, 37.260731>,  <41.478477, 34.173630, 37.564995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639610, 33.970016, 37.260731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020895, -0.835975, 0.548369,
		-0.915034, -0.205007, -0.347396,
		0.402834, -0.509035, -0.760662,
		41.760460, 33.817307, 37.032532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172073, 33.561844, 37.653484>,  <41.478477, 34.173630, 37.564995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172073, 33.561844, 37.653484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476124, 33.503613, 37.400181>,  <41.658554, 33.468674, 37.248199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476124, 33.503613, 37.400181>,  <41.172073, 33.561844, 37.653484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476124, 33.503613, 37.400181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215574, -0.862880, 0.457128,
		-0.612975, -0.483989, -0.624513,
		0.760125, -0.145579, -0.633259,
		41.704163, 33.459938, 37.210201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119514, 32.792747, 37.362579>,  <41.172073, 33.561844, 37.653484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119514, 32.792747, 37.362579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498432, 32.920650, 37.354630>,  <41.725780, 32.997391, 37.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498432, 32.920650, 37.354630>,  <41.119514, 32.792747, 37.362579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498432, 32.920650, 37.354630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265787, -0.749740, 0.606009,
		0.178872, -0.579351, -0.795209,
		0.947292, 0.319754, -0.019877,
		41.782619, 33.016575, 37.348667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664177, 32.307060, 37.149353>,  <41.119514, 32.792747, 37.362579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664177, 32.307060, 37.149353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844234, 32.552589, 37.408768>,  <41.952271, 32.699905, 37.564415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844234, 32.552589, 37.408768>,  <41.664177, 32.307060, 37.149353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844234, 32.552589, 37.408768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466694, -0.780909, 0.415184,
		0.761294, 0.115774, -0.637988,
		0.450143, 0.613822, 0.648532,
		41.979279, 32.736736, 37.603329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296989, 32.018948, 37.153385>,  <41.664177, 32.307060, 37.149353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296989, 32.018948, 37.153385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281143, 32.256039, 37.475155>,  <42.271633, 32.398293, 37.668217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281143, 32.256039, 37.475155>,  <42.296989, 32.018948, 37.153385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281143, 32.256039, 37.475155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520508, -0.674962, 0.522970,
		0.852937, 0.439430, -0.281780,
		-0.039618, 0.592729, 0.804427,
		42.269257, 32.433857, 37.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962833, 32.083542, 37.351250>,  <42.296989, 32.018948, 37.153385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962833, 32.083542, 37.351250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729511, 32.150730, 37.669128>,  <42.589520, 32.191044, 37.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729511, 32.150730, 37.669128>,  <42.962833, 32.083542, 37.351250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729511, 32.150730, 37.669128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622015, -0.536821, 0.570018,
		0.522357, 0.826807, 0.208647,
		-0.583301, 0.167972, 0.794698,
		42.554520, 32.201122, 37.907539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398605, 32.261902, 37.830757>,  <42.962833, 32.083542, 37.351250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398605, 32.261902, 37.830757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070213, 32.140797, 38.024391>,  <42.873180, 32.068134, 38.140572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070213, 32.140797, 38.024391>,  <43.398605, 32.261902, 37.830757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070213, 32.140797, 38.024391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564821, -0.554665, 0.611002,
		0.083516, 0.775037, 0.626372,
		-0.820976, -0.302760, 0.484081,
		42.823921, 32.049969, 38.169617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523003, 32.351494, 38.555038>,  <43.398605, 32.261902, 37.830757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523003, 32.351494, 38.555038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218895, 32.092041, 38.540794>,  <43.036430, 31.936369, 38.532249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218895, 32.092041, 38.540794>,  <43.523003, 32.351494, 38.555038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218895, 32.092041, 38.540794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481155, -0.599097, 0.639979,
		-0.436448, 0.469419, 0.767567,
		-0.760265, -0.648636, -0.035612,
		42.990814, 31.897449, 38.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309353, 32.179348, 39.295475>,  <43.523003, 32.351494, 38.555038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309353, 32.179348, 39.295475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272911, 31.895594, 39.015911>,  <43.251045, 31.725342, 38.848171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272911, 31.895594, 39.015911>,  <43.309353, 32.179348, 39.295475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272911, 31.895594, 39.015911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450384, -0.655298, 0.606414,
		-0.888175, -0.259532, 0.379195,
		-0.091102, -0.709385, -0.698909,
		43.245579, 31.682777, 38.806240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036087, 31.498133, 39.554462>,  <43.309353, 32.179348, 39.295475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036087, 31.498133, 39.554462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258270, 31.441973, 39.226620>,  <43.391579, 31.408278, 39.029915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258270, 31.441973, 39.226620>,  <43.036087, 31.498133, 39.554462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258270, 31.441973, 39.226620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567817, -0.656034, 0.497195,
		-0.607495, -0.741558, -0.284679,
		0.555457, -0.140398, -0.819607,
		43.424908, 31.399853, 38.980736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371143, 30.942545, 39.792587>,  <43.036087, 31.498133, 39.554462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371143, 30.942545, 39.792587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554718, 31.015648, 39.444801>,  <43.664864, 31.059509, 39.236130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554718, 31.015648, 39.444801>,  <43.371143, 30.942545, 39.792587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554718, 31.015648, 39.444801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755752, -0.594835, 0.273881,
		-0.467136, -0.782797, -0.411113,
		0.458937, 0.182760, -0.869468,
		43.692398, 31.070477, 39.183960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594555, 30.276560, 39.482250>,  <43.371143, 30.942545, 39.792587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594555, 30.276560, 39.482250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808338, 30.592447, 39.361782>,  <43.936607, 30.781981, 39.289501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808338, 30.592447, 39.361782>,  <43.594555, 30.276560, 39.482250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808338, 30.592447, 39.361782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805550, -0.368095, 0.464323,
		0.255826, -0.490766, -0.832888,
		0.534456, 0.789718, -0.301168,
		43.968674, 30.829363, 39.271431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786419, 30.424210, 38.707935>,  <43.594555, 30.276560, 39.482250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786419, 30.424210, 38.707935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507629, 30.545822, 38.967720>,  <43.340355, 30.618790, 39.123589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507629, 30.545822, 38.967720>,  <43.786419, 30.424210, 38.707935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507629, 30.545822, 38.967720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308785, 0.690165, -0.654465,
		-0.647212, -0.656686, -0.387144,
		-0.696971, 0.304033, 0.649457,
		43.298538, 30.637032, 39.162556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384899, 30.768694, 38.152809>,  <43.786419, 30.424210, 38.707935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384899, 30.768694, 38.152809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204594, 30.898008, 38.485626>,  <43.096413, 30.975597, 38.685318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204594, 30.898008, 38.485626>,  <43.384899, 30.768694, 38.152809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204594, 30.898008, 38.485626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456500, 0.717517, -0.526095,
		-0.767087, -0.616973, -0.175849,
		-0.450761, 0.323285, 0.832046,
		43.069366, 30.994993, 38.735241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714260, 30.934677, 37.999763>,  <43.384899, 30.768694, 38.152809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714260, 30.934677, 37.999763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759541, 31.136730, 38.341999>,  <42.786709, 31.257963, 38.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759541, 31.136730, 38.341999>,  <42.714260, 30.934677, 37.999763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759541, 31.136730, 38.341999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616779, 0.710839, -0.338070,
		-0.778953, -0.489436, 0.392026,
		0.113204, 0.505134, 0.855584,
		42.793503, 31.288271, 38.598675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966011, 31.121094, 38.264065>,  <42.714260, 30.934677, 37.999763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966011, 31.121094, 38.264065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266747, 31.359255, 38.377365>,  <42.447189, 31.502151, 38.445343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266747, 31.359255, 38.377365>,  <41.966011, 31.121094, 38.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266747, 31.359255, 38.377365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442354, 0.774056, -0.452946,
		-0.488935, 0.215249, 0.845347,
		0.751842, 0.595403, 0.283247,
		42.492298, 31.537876, 38.462337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683178, 31.692753, 38.712757>,  <41.966011, 31.121094, 38.264065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683178, 31.692753, 38.712757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025818, 31.797047, 38.534649>,  <42.231400, 31.859623, 38.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025818, 31.797047, 38.534649>,  <41.683178, 31.692753, 38.712757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025818, 31.797047, 38.534649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466708, 0.759538, -0.453084,
		0.220063, 0.595919, 0.772303,
		0.856596, 0.260733, -0.445266,
		42.282795, 31.875267, 38.401070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838326, 32.381126, 39.019905>,  <41.683178, 31.692753, 38.712757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838326, 32.381126, 39.019905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024784, 32.313076, 38.672626>,  <42.136662, 32.272247, 38.464260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024784, 32.313076, 38.672626>,  <41.838326, 32.381126, 39.019905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024784, 32.313076, 38.672626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499159, 0.759651, -0.416859,
		0.730443, 0.627685, 0.269192,
		0.466148, -0.170122, -0.868196,
		42.164627, 32.262039, 38.412167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061543, 33.103664, 38.806953>,  <41.838326, 32.381126, 39.019905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061543, 33.103664, 38.806953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085419, 32.858459, 38.491829>,  <42.099743, 32.711338, 38.302753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085419, 32.858459, 38.491829>,  <42.061543, 33.103664, 38.806953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085419, 32.858459, 38.491829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425830, 0.698171, -0.575522,
		0.902832, 0.369829, -0.219365,
		0.059691, -0.613012, -0.787816,
		42.103325, 32.674557, 38.255486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474388, 33.604958, 38.381706>,  <42.061543, 33.103664, 38.806953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474388, 33.604958, 38.381706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333900, 33.323463, 38.134674>,  <42.249607, 33.154568, 37.986454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333900, 33.323463, 38.134674>,  <42.474388, 33.604958, 38.381706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333900, 33.323463, 38.134674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210310, 0.702041, -0.680374,
		0.912367, -0.109078, -0.394573,
		-0.351221, -0.703733, -0.617579,
		42.228535, 33.112343, 37.949402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798958, 33.721703, 37.801373>,  <42.474388, 33.604958, 38.381706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798958, 33.721703, 37.801373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490448, 33.492821, 37.689861>,  <42.305340, 33.355492, 37.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490448, 33.492821, 37.689861>,  <42.798958, 33.721703, 37.801373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490448, 33.492821, 37.689861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168561, 0.605971, -0.777423,
		0.613792, -0.552604, -0.563816,
		-0.771263, -0.572213, -0.278792,
		42.259064, 33.321159, 37.606228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024361, 33.437099, 37.158154>,  <42.798958, 33.721703, 37.801373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024361, 33.437099, 37.158154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653824, 33.292820, 37.201591>,  <42.431503, 33.206253, 37.227654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653824, 33.292820, 37.201591>,  <43.024361, 33.437099, 37.158154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653824, 33.292820, 37.201591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316066, 0.587426, -0.745006,
		0.204933, -0.724450, -0.658160,
		-0.926339, -0.360698, 0.108592,
		42.375923, 33.184612, 37.234169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744198, 33.197937, 36.566006>,  <43.024361, 33.437099, 37.158154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744198, 33.197937, 36.566006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406845, 33.274254, 36.766922>,  <42.204433, 33.320045, 36.887474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406845, 33.274254, 36.766922>,  <42.744198, 33.197937, 36.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406845, 33.274254, 36.766922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282362, 0.637961, -0.716434,
		-0.457135, -0.746058, -0.484174,
		-0.843386, 0.190795, 0.502293,
		42.153828, 33.331493, 36.917610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223778, 33.036537, 36.059708>,  <42.744198, 33.197937, 36.566006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223778, 33.036537, 36.059708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051056, 33.281242, 36.324825>,  <41.947422, 33.428066, 36.483894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051056, 33.281242, 36.324825>,  <42.223778, 33.036537, 36.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051056, 33.281242, 36.324825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069937, 0.709910, -0.700811,
		-0.899253, -0.348965, -0.263755,
		-0.431801, 0.611760, 0.662795,
		41.921516, 33.464771, 36.523663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686218, 33.285137, 35.729172>,  <42.223778, 33.036537, 36.059708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686218, 33.285137, 35.729172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788952, 33.533470, 36.025444>,  <41.850594, 33.682472, 36.203205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788952, 33.533470, 36.025444>,  <41.686218, 33.285137, 35.729172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788952, 33.533470, 36.025444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034825, 0.771831, -0.634873,
		-0.965828, 0.137262, 0.219853,
		0.256833, 0.620835, 0.740676,
		41.866001, 33.719719, 36.247646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177803, 33.871273, 35.826206>,  <41.686218, 33.285137, 35.729172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177803, 33.871273, 35.826206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543636, 33.994568, 35.930920>,  <41.763134, 34.068546, 35.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543636, 33.994568, 35.930920>,  <41.177803, 33.871273, 35.826206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543636, 33.994568, 35.930920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074523, 0.764706, -0.640056,
		-0.397479, 0.565874, 0.722356,
		0.914580, 0.308241, 0.261784,
		41.818012, 34.087040, 36.009457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962700, 34.552021, 35.773102>,  <41.177803, 33.871273, 35.826206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962700, 34.552021, 35.773102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360172, 34.510223, 35.789497>,  <41.598656, 34.485146, 35.799335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360172, 34.510223, 35.789497>,  <40.962700, 34.552021, 35.773102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360172, 34.510223, 35.789497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112230, 0.918557, -0.379023,
		0.001952, 0.381228, 0.924479,
		0.993680, -0.104494, 0.040992,
		41.658276, 34.478874, 35.801796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079338, 35.344604, 35.949112>,  <40.962700, 34.552021, 35.773102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079338, 35.344604, 35.949112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392269, 35.125278, 35.830917>,  <41.580029, 34.993683, 35.759998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392269, 35.125278, 35.830917>,  <41.079338, 35.344604, 35.949112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392269, 35.125278, 35.830917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257784, 0.716894, -0.647773,
		0.567018, 0.430599, 0.702193,
		0.782328, -0.548313, -0.295491,
		41.626968, 34.960785, 35.742271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587852, 35.822388, 35.852833>,  <41.079338, 35.344604, 35.949112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587852, 35.822388, 35.852833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725983, 35.511959, 35.641754>,  <41.808861, 35.325703, 35.515106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725983, 35.511959, 35.641754>,  <41.587852, 35.822388, 35.852833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725983, 35.511959, 35.641754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240630, 0.616710, -0.749511,
		0.907108, 0.131848, 0.399713,
		0.345328, -0.776071, -0.527696,
		41.829582, 35.279137, 35.483444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219658, 36.082790, 35.561478>,  <41.587852, 35.822388, 35.852833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219658, 36.082790, 35.561478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120037, 35.752693, 35.358719>,  <42.060265, 35.554634, 35.237064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120037, 35.752693, 35.358719>,  <42.219658, 36.082790, 35.561478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120037, 35.752693, 35.358719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271830, 0.442791, -0.854427,
		0.929559, -0.350590, 0.114046,
		-0.249055, -0.825241, -0.506901,
		42.045322, 35.505119, 35.206650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871143, 35.892262, 35.182869>,  <42.219658, 36.082790, 35.561478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871143, 35.892262, 35.182869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541225, 35.744751, 35.011421>,  <42.343273, 35.656246, 34.908554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541225, 35.744751, 35.011421>,  <42.871143, 35.892262, 35.182869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541225, 35.744751, 35.011421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139171, 0.602313, -0.786035,
		0.548030, -0.707972, -0.445465,
		-0.824800, -0.368775, -0.428615,
		42.293785, 35.634117, 34.882835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974026, 36.265198, 34.646599>,  <42.871143, 35.892262, 35.182869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974026, 36.265198, 34.646599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673260, 36.009743, 34.581154>,  <42.492802, 35.856468, 34.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673260, 36.009743, 34.581154>,  <42.974026, 36.265198, 34.646599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673260, 36.009743, 34.581154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186360, 0.443952, -0.876457,
		0.632378, -0.628526, -0.452829,
		-0.751910, -0.638641, -0.163613,
		42.447685, 35.818150, 34.532070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976303, 36.215424, 33.963718>,  <42.974026, 36.265198, 34.646599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976303, 36.215424, 33.963718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611191, 36.074497, 34.046375>,  <42.392124, 35.989941, 34.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611191, 36.074497, 34.046375>,  <42.976303, 36.215424, 33.963718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611191, 36.074497, 34.046375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374255, 0.518804, -0.768619,
		0.163595, -0.778918, -0.605412,
		-0.912781, -0.352321, 0.206640,
		42.337357, 35.968800, 34.108368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657162, 35.911404, 33.323421>,  <42.976303, 36.215424, 33.963718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657162, 35.911404, 33.323421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343929, 35.985249, 33.560978>,  <42.155991, 36.029556, 33.703510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343929, 35.985249, 33.560978>,  <42.657162, 35.911404, 33.323421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343929, 35.985249, 33.560978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474157, 0.440715, -0.762197,
		-0.402448, -0.878458, -0.257580,
		-0.783078, 0.184611, 0.593892,
		42.109005, 36.040630, 33.739147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026543, 35.649204, 32.919453>,  <42.657162, 35.911404, 33.323421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026543, 35.649204, 32.919453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891891, 35.918697, 33.182590>,  <41.811100, 36.080395, 33.340473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891891, 35.918697, 33.182590>,  <42.026543, 35.649204, 32.919453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891891, 35.918697, 33.182590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573198, 0.407656, -0.710817,
		-0.747078, -0.616357, 0.248956,
		-0.336628, 0.673737, 0.657845,
		41.790901, 36.120819, 33.379944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711823, 35.712452, 32.536934>,  <42.026543, 35.649204, 32.919453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711823, 35.712452, 32.536934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047710, 35.919716, 32.471966>,  <43.249245, 36.044075, 32.432983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047710, 35.919716, 32.471966>,  <42.711823, 35.712452, 32.536934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047710, 35.919716, 32.471966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469213, -0.541821, 0.697330,
		0.273323, -0.661773, -0.698105,
		0.839722, 0.518156, -0.162421,
		43.299625, 36.075161, 32.423241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415306, 35.426060, 32.312008>,  <42.711823, 35.712452, 32.536934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415306, 35.426060, 32.312008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531681, 35.757511, 32.503311>,  <43.601505, 35.956383, 32.618092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531681, 35.757511, 32.503311>,  <43.415306, 35.426060, 32.312008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531681, 35.757511, 32.503311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505753, -0.557526, 0.658315,
		0.812140, 0.050354, -0.581286,
		0.290933, 0.828631, 0.478256,
		43.618961, 36.006100, 32.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185261, 35.487904, 32.342178>,  <43.415306, 35.426060, 32.312008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185261, 35.487904, 32.342178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990944, 35.676697, 32.636456>,  <43.874355, 35.789970, 32.813023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990944, 35.676697, 32.636456>,  <44.185261, 35.487904, 32.342178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990944, 35.676697, 32.636456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590319, -0.443570, 0.674366,
		0.644618, 0.761894, -0.063136,
		-0.485790, 0.471979, 0.735693,
		43.845207, 35.818291, 32.857162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735973, 35.658096, 32.817036>,  <44.185261, 35.487904, 32.342178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735973, 35.658096, 32.817036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393536, 35.696690, 33.020126>,  <44.188072, 35.719845, 33.141979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393536, 35.696690, 33.020126>,  <44.735973, 35.658096, 32.817036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393536, 35.696690, 33.020126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462822, -0.294043, 0.836262,
		0.229978, 0.950910, 0.207075,
		-0.856099, 0.096483, 0.507726,
		44.136707, 35.725636, 33.172443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786816, 36.067928, 33.510498>,  <44.735973, 35.658096, 32.817036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786816, 36.067928, 33.510498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489628, 35.802372, 33.544537>,  <44.311314, 35.643036, 33.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489628, 35.802372, 33.544537>,  <44.786816, 36.067928, 33.510498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489628, 35.802372, 33.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450216, -0.401622, 0.797499,
		-0.495281, 0.630827, 0.597289,
		-0.742968, -0.663895, 0.085093,
		44.266739, 35.603203, 33.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166553, 35.743023, 34.038094>,  <44.786816, 36.067928, 33.510498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166553, 35.743023, 34.038094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814220, 35.571808, 33.957191>,  <44.602821, 35.469078, 33.908649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814220, 35.571808, 33.957191>,  <45.166553, 35.743023, 34.038094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814220, 35.571808, 33.957191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131889, -0.632183, 0.763512,
		-0.454679, 0.645853, 0.613303,
		-0.880836, -0.428040, -0.202260,
		44.549969, 35.443398, 33.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635990, 35.705082, 34.672035>,  <45.166553, 35.743023, 34.038094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635990, 35.705082, 34.672035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521420, 35.408234, 34.429642>,  <44.452679, 35.230125, 34.284206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521420, 35.408234, 34.429642>,  <44.635990, 35.705082, 34.672035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521420, 35.408234, 34.429642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066141, -0.646285, 0.760224,
		-0.955816, 0.177669, 0.234198,
		-0.286427, -0.742125, -0.605979,
		44.435490, 35.185596, 34.247849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118004, 35.303314, 34.958851>,  <44.635990, 35.705082, 34.672035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118004, 35.303314, 34.958851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367149, 35.081478, 34.738132>,  <44.516636, 34.948376, 34.605701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367149, 35.081478, 34.738132>,  <44.118004, 35.303314, 34.958851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367149, 35.081478, 34.738132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244428, -0.532056, 0.810661,
		-0.743170, -0.639802, -0.195839,
		0.622859, -0.554590, -0.551793,
		44.554008, 34.915100, 34.572594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036457, 34.592155, 35.138218>,  <44.118004, 35.303314, 34.958851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036457, 34.592155, 35.138218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417679, 34.631458, 35.023659>,  <44.646412, 34.655041, 34.954922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417679, 34.631458, 35.023659>,  <44.036457, 34.592155, 35.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417679, 34.631458, 35.023659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292989, -0.537962, 0.790414,
		-0.076407, -0.837223, -0.541498,
		0.953058, 0.098260, -0.286401,
		44.703598, 34.660934, 34.937740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372421, 33.929321, 35.075821>,  <44.036457, 34.592155, 35.138218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372421, 33.929321, 35.075821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617867, 34.224319, 35.188660>,  <44.765133, 34.401318, 35.256363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617867, 34.224319, 35.188660>,  <44.372421, 33.929321, 35.075821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617867, 34.224319, 35.188660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265011, -0.528897, 0.806249,
		0.743807, -0.419965, -0.519982,
		0.613613, 0.737494, 0.282102,
		44.801949, 34.445568, 35.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020985, 33.621517, 35.108868>,  <44.372421, 33.929321, 35.075821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020985, 33.621517, 35.108868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019890, 33.925106, 35.369316>,  <45.019234, 34.107258, 35.525585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019890, 33.925106, 35.369316>,  <45.020985, 33.621517, 35.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019890, 33.925106, 35.369316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443323, -0.582721, 0.681103,
		0.896358, 0.290524, -0.334871,
		-0.002741, 0.758968, 0.651122,
		45.019066, 34.152798, 35.564651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616417, 33.625385, 35.506229>,  <45.020985, 33.621517, 35.108868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616417, 33.625385, 35.506229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351685, 33.779678, 35.763351>,  <45.192844, 33.872253, 35.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351685, 33.779678, 35.763351>,  <45.616417, 33.625385, 35.506229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351685, 33.779678, 35.763351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489522, -0.427035, 0.760269,
		0.567762, 0.817832, 0.093797,
		-0.661827, 0.385736, 0.642801,
		45.153137, 33.895401, 35.956192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110256, 32.995777, 35.706894>,  <45.616417, 33.625385, 35.506229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110256, 32.995777, 35.706894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501583, 33.077923, 35.717564>,  <45.736382, 33.127213, 35.723965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501583, 33.077923, 35.717564>,  <45.110256, 32.995777, 35.706894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501583, 33.077923, 35.717564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124041, 0.684249, -0.718621,
		-0.165835, 0.699734, 0.694890,
		0.978321, 0.205367, 0.026676,
		45.795078, 33.139534, 35.725567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795441, 33.461792, 36.232857>,  <45.110256, 32.995777, 35.706894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795441, 33.461792, 36.232857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920223, 33.568237, 36.597683>,  <44.995090, 33.632107, 36.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920223, 33.568237, 36.597683>,  <44.795441, 33.461792, 36.232857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920223, 33.568237, 36.597683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739378, 0.534866, -0.408948,
		-0.596661, 0.801936, -0.029907,
		0.311954, 0.266115, 0.912068,
		45.013809, 33.648071, 36.871304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792492, 34.195671, 36.429680>,  <44.795441, 33.461792, 36.232857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792492, 34.195671, 36.429680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098553, 33.987183, 36.580872>,  <45.282188, 33.862091, 36.671585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098553, 33.987183, 36.580872>,  <44.792492, 34.195671, 36.429680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098553, 33.987183, 36.580872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640922, 0.560723, -0.524222,
		0.061294, 0.643365, 0.763102,
		0.765155, -0.521220, 0.377978,
		45.328098, 33.830818, 36.694263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394806, 34.546551, 36.831257>,  <44.792492, 34.195671, 36.429680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394806, 34.546551, 36.831257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527733, 34.229240, 36.627186>,  <45.607487, 34.038857, 36.504742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527733, 34.229240, 36.627186>,  <45.394806, 34.546551, 36.831257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527733, 34.229240, 36.627186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495278, 0.607111, -0.621383,
		0.802663, -0.046187, 0.594642,
		0.332314, -0.793274, -0.510180,
		45.627426, 33.991257, 36.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045094, 34.658752, 36.576881>,  <45.394806, 34.546551, 36.831257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045094, 34.658752, 36.576881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874958, 34.398506, 36.325237>,  <45.772877, 34.242359, 36.174252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874958, 34.398506, 36.325237>,  <46.045094, 34.658752, 36.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874958, 34.398506, 36.325237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354403, 0.519871, -0.777259,
		0.832756, -0.553559, 0.009459,
		-0.425342, -0.650620, -0.629109,
		45.747356, 34.203320, 36.136505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640907, 34.587799, 36.108109>,  <46.045094, 34.658752, 36.576881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640907, 34.587799, 36.108109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308472, 34.516396, 35.897423>,  <46.109009, 34.473553, 35.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308472, 34.516396, 35.897423>,  <46.640907, 34.587799, 36.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308472, 34.516396, 35.897423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409852, 0.443580, -0.797030,
		0.375915, -0.878278, -0.295494,
		-0.831089, -0.178507, -0.526712,
		46.059147, 34.462841, 35.739410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949337, 34.292652, 35.548534>,  <46.640907, 34.587799, 36.108109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949337, 34.292652, 35.548534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598530, 34.465996, 35.465549>,  <46.388046, 34.570004, 35.415760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598530, 34.465996, 35.465549>,  <46.949337, 34.292652, 35.548534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598530, 34.465996, 35.465549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398769, 0.415694, -0.817424,
		-0.267998, -0.799624, -0.537381,
		-0.877018, 0.433359, -0.207460,
		46.335426, 34.596004, 35.403313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931034, 34.463650, 34.932110>,  <46.949337, 34.292652, 35.548534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.931034, 34.463650, 34.932110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620697, 34.691231, 35.041180>,  <46.434494, 34.827782, 35.106621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620697, 34.691231, 35.041180>,  <46.931034, 34.463650, 34.932110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.620697, 34.691231, 35.041180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231877, 0.659074, -0.715440,
		-0.586768, -0.491843, -0.643268,
		-0.775845, 0.568956, 0.272677,
		46.387943, 34.861919, 35.122982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.625767, 34.723503, 34.756062>,  <46.931034, 34.463650, 34.932110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.625767, 34.723503, 34.756062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864655, 35.031120, 34.847191>,  <48.007988, 35.215691, 34.901871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.864655, 35.031120, 34.847191>,  <47.625767, 34.723503, 34.756062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.864655, 35.031120, 34.847191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333841, -0.019937, 0.942419,
		0.729299, -0.638891, 0.244830,
		0.597221, 0.769039, 0.227828,
		48.043819, 35.261833, 34.915539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.454765, 33.586010, 23.949097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107128, 33.401814, 23.876837>,  <39.898548, 33.291298, 23.833481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107128, 33.401814, 23.876837>,  <40.454765, 33.586010, 23.949097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107128, 33.401814, 23.876837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308079, 0.218166, 0.926008,
		-0.387004, 0.860438, -0.331473,
		-0.869089, -0.460489, -0.180651,
		39.846401, 33.263668, 23.822641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940647, 33.947800, 24.279915>,  <40.454765, 33.586010, 23.949097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940647, 33.947800, 24.279915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742447, 33.604351, 24.227379>,  <39.623528, 33.398281, 24.195858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.742447, 33.604351, 24.227379>,  <39.940647, 33.947800, 24.279915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742447, 33.604351, 24.227379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363273, 0.067501, 0.929234,
		-0.788993, 0.508150, -0.345360,
		-0.495502, -0.858619, -0.131339,
		39.593796, 33.346764, 24.187977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282288, 34.072552, 24.524055>,  <39.940647, 33.947800, 24.279915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282288, 34.072552, 24.524055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344341, 33.677399, 24.522318>,  <39.381573, 33.440308, 24.521275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.344341, 33.677399, 24.522318>,  <39.282288, 34.072552, 24.524055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344341, 33.677399, 24.522318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246927, -0.043034, 0.968078,
		-0.956535, -0.149112, -0.250611,
		0.155137, -0.987883, -0.004344,
		39.390881, 33.381035, 24.521015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797966, 33.807720, 24.890158>,  <39.282288, 34.072552, 24.524055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797966, 33.807720, 24.890158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023689, 33.477505, 24.893076>,  <39.159122, 33.279377, 24.894827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023689, 33.477505, 24.893076>,  <38.797966, 33.807720, 24.890158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023689, 33.477505, 24.893076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159654, -0.100457, 0.982048,
		-0.809983, -0.555338, -0.188488,
		0.564304, -0.825535, 0.007294,
		39.192982, 33.229843, 24.895264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370621, 33.246670, 25.190584>,  <38.797966, 33.807720, 24.890158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370621, 33.246670, 25.190584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756660, 33.152237, 25.235910>,  <38.988285, 33.095577, 25.263105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756660, 33.152237, 25.235910>,  <38.370621, 33.246670, 25.190584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756660, 33.152237, 25.235910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183299, -0.299974, 0.936172,
		-0.187020, -0.924273, -0.332779,
		0.965104, -0.236081, 0.113317,
		39.046192, 33.081413, 25.269905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343994, 32.568993, 25.476057>,  <38.370621, 33.246670, 25.190584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343994, 32.568993, 25.476057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704102, 32.720776, 25.561411>,  <38.920166, 32.811844, 25.612623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704102, 32.720776, 25.561411>,  <38.343994, 32.568993, 25.476057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704102, 32.720776, 25.561411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059957, -0.377407, 0.924105,
		0.431191, -0.844734, -0.317015,
		0.900266, 0.379458, 0.213383,
		38.974182, 32.834614, 25.625425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511154, 32.144722, 25.889515>,  <38.343994, 32.568993, 25.476057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511154, 32.144722, 25.889515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772911, 32.436974, 25.967442>,  <38.929966, 32.612324, 26.014198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.772911, 32.436974, 25.967442>,  <38.511154, 32.144722, 25.889515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772911, 32.436974, 25.967442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224907, -0.057915, 0.972657,
		0.721931, -0.680318, 0.126423,
		0.654394, 0.730626, 0.194819,
		38.969231, 32.656162, 26.025887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062550, 31.887285, 26.403107>,  <38.511154, 32.144722, 25.889515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062550, 31.887285, 26.403107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022213, 32.285206, 26.397448>,  <38.998013, 32.523960, 26.394053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022213, 32.285206, 26.397448>,  <39.062550, 31.887285, 26.403107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022213, 32.285206, 26.397448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055048, 0.008619, 0.998447,
		0.993379, 0.101460, 0.053892,
		-0.100838, 0.994802, -0.014148,
		38.991962, 32.583645, 26.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367271, 32.002949, 27.013641>,  <39.062550, 31.887285, 26.403107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367271, 32.002949, 27.013641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184887, 32.351917, 26.943241>,  <39.075455, 32.561298, 26.901001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184887, 32.351917, 26.943241>,  <39.367271, 32.002949, 27.013641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184887, 32.351917, 26.943241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118274, 0.136602, 0.983540,
		0.882105, 0.469273, 0.040900,
		-0.455962, 0.872423, -0.176000,
		39.048100, 32.613644, 26.890442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688988, 32.532848, 27.449909>,  <39.367271, 32.002949, 27.013641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688988, 32.532848, 27.449909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314690, 32.617203, 27.336836>,  <39.090111, 32.667816, 27.268991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314690, 32.617203, 27.336836>,  <39.688988, 32.532848, 27.449909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314690, 32.617203, 27.336836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230980, 0.239263, 0.943081,
		0.266517, 0.947777, -0.175179,
		-0.935744, 0.210884, -0.282685,
		39.033966, 32.680470, 27.252029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554321, 33.100353, 27.924610>,  <39.688988, 32.532848, 27.449909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554321, 33.100353, 27.924610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195507, 33.008053, 27.773836>,  <38.980217, 32.952671, 27.683372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195507, 33.008053, 27.773836>,  <39.554321, 33.100353, 27.924610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195507, 33.008053, 27.773836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430684, 0.265011, 0.862717,
		-0.099185, 0.936227, -0.337107,
		-0.897036, -0.230755, -0.376933,
		38.926395, 32.938828, 27.660757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178570, 33.659164, 28.103321>,  <39.554321, 33.100353, 27.924610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178570, 33.659164, 28.103321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923473, 33.354706, 28.056082>,  <38.770416, 33.172031, 28.027739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923473, 33.354706, 28.056082>,  <39.178570, 33.659164, 28.103321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923473, 33.354706, 28.056082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429402, 0.224041, 0.874882,
		-0.639452, 0.608660, -0.469717,
		-0.637742, -0.761143, -0.118097,
		38.732151, 33.126362, 28.020653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573822, 33.919846, 28.370314>,  <39.178570, 33.659164, 28.103321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573822, 33.919846, 28.370314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477047, 33.531948, 28.357229>,  <38.418980, 33.299210, 28.349379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477047, 33.531948, 28.357229>,  <38.573822, 33.919846, 28.370314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477047, 33.531948, 28.357229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613050, 0.126644, 0.779827,
		-0.752087, 0.208725, -0.625139,
		-0.241940, -0.969740, -0.032712,
		38.404465, 33.241028, 28.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830181, 33.878166, 28.422638>,  <38.573822, 33.919846, 28.370314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830181, 33.878166, 28.422638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951839, 33.504639, 28.497982>,  <38.024834, 33.280521, 28.543188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951839, 33.504639, 28.497982>,  <37.830181, 33.878166, 28.422638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951839, 33.504639, 28.497982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674625, -0.071536, 0.734686,
		-0.672588, -0.350525, -0.651734,
		0.304148, -0.933817, 0.188358,
		38.043083, 33.224495, 28.554489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247711, 33.461571, 28.551420>,  <37.830181, 33.878166, 28.422638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247711, 33.461571, 28.551420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511719, 33.232689, 28.746132>,  <37.670124, 33.095360, 28.862959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511719, 33.232689, 28.746132>,  <37.247711, 33.461571, 28.551420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511719, 33.232689, 28.746132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567688, 0.044510, 0.822039,
		-0.492044, -0.818900, -0.295459,
		0.660017, -0.572208, 0.486781,
		37.709724, 33.061028, 28.892166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886013, 33.058487, 29.112484>,  <37.247711, 33.461571, 28.551420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886013, 33.058487, 29.112484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263519, 33.051144, 29.244526>,  <37.490025, 33.046738, 29.323751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263519, 33.051144, 29.244526>,  <36.886013, 33.058487, 29.112484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263519, 33.051144, 29.244526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328461, 0.061694, 0.942501,
		-0.037671, -0.997926, 0.052194,
		0.943766, -0.018362, 0.330104,
		37.546650, 33.045635, 29.343557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881088, 32.590897, 29.668205>,  <36.886013, 33.058487, 29.112484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881088, 32.590897, 29.668205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187313, 32.836834, 29.743971>,  <37.371048, 32.984398, 29.789431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187313, 32.836834, 29.743971>,  <36.881088, 32.590897, 29.668205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187313, 32.836834, 29.743971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386420, 0.204044, 0.899470,
		0.514387, -0.761794, 0.393797,
		0.765563, 0.614846, 0.189415,
		37.416981, 33.021286, 29.800795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065289, 32.424763, 30.438232>,  <36.881088, 32.590897, 29.668205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065289, 32.424763, 30.438232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221020, 32.784222, 30.357388>,  <37.314457, 32.999897, 30.308880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221020, 32.784222, 30.357388>,  <37.065289, 32.424763, 30.438232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221020, 32.784222, 30.357388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167844, 0.284966, 0.943728,
		0.905678, -0.333497, 0.261778,
		0.389329, 0.898651, -0.202112,
		37.337818, 33.053818, 30.296755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459843, 32.624664, 30.995989>,  <37.065289, 32.424763, 30.438232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459843, 32.624664, 30.995989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420601, 32.996853, 30.854792>,  <37.397057, 33.220165, 30.770073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420601, 32.996853, 30.854792>,  <37.459843, 32.624664, 30.995989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420601, 32.996853, 30.854792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008031, 0.355435, 0.934667,
		0.995143, 0.088864, -0.042344,
		-0.098109, 0.930467, -0.352995,
		37.391167, 33.275993, 30.748894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996033, 33.112263, 31.403757>,  <37.459843, 32.624664, 30.995989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996033, 33.112263, 31.403757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738861, 33.363354, 31.228212>,  <37.584557, 33.514008, 31.122885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738861, 33.363354, 31.228212>,  <37.996033, 33.112263, 31.403757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738861, 33.363354, 31.228212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013146, 0.563855, 0.825769,
		0.765811, 0.536682, -0.354268,
		-0.642931, 0.627726, -0.438862,
		37.545982, 33.551670, 31.096554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254890, 33.737640, 31.531837>,  <37.996033, 33.112263, 31.403757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254890, 33.737640, 31.531837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869663, 33.817097, 31.459122>,  <37.638527, 33.864773, 31.415493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869663, 33.817097, 31.459122>,  <38.254890, 33.737640, 31.531837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869663, 33.817097, 31.459122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006695, 0.657241, 0.753651,
		0.269189, 0.727031, -0.631635,
		-0.963064, 0.198646, -0.181790,
		37.580746, 33.876690, 31.404585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093990, 34.397106, 31.745020>,  <38.254890, 33.737640, 31.531837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093990, 34.397106, 31.745020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728531, 34.234638, 31.751604>,  <37.509254, 34.137157, 31.755554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728531, 34.234638, 31.751604>,  <38.093990, 34.397106, 31.745020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728531, 34.234638, 31.751604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231640, 0.553469, 0.800009,
		-0.334052, 0.727114, -0.599762,
		-0.913648, -0.406174, 0.016458,
		37.454437, 34.112785, 31.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824879, 34.797424, 32.306858>,  <38.093990, 34.397106, 31.745020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824879, 34.797424, 32.306858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220707, 34.817127, 32.361012>,  <38.458202, 34.828949, 32.393505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220707, 34.817127, 32.361012>,  <37.824879, 34.797424, 32.306858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220707, 34.817127, 32.361012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143195, -0.233066, -0.961860,
		-0.015826, 0.971213, -0.237688,
		0.989568, 0.049258, 0.135384,
		38.517578, 34.831905, 32.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112232, 35.378292, 31.871540>,  <37.824879, 34.797424, 32.306858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112232, 35.378292, 31.871540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400631, 35.116913, 31.963781>,  <38.573669, 34.960087, 32.019127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400631, 35.116913, 31.963781>,  <38.112232, 35.378292, 31.871540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400631, 35.116913, 31.963781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335438, 0.037927, -0.941299,
		0.606341, 0.756023, 0.246535,
		0.720994, -0.653445, 0.230602,
		38.616928, 34.920879, 32.032963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703083, 35.700089, 31.626343>,  <38.112232, 35.378292, 31.871540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703083, 35.700089, 31.626343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833332, 35.323589, 31.662167>,  <38.911480, 35.097691, 31.683661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833332, 35.323589, 31.662167>,  <38.703083, 35.700089, 31.626343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833332, 35.323589, 31.662167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628566, 0.144739, -0.764170,
		0.706312, 0.305121, 0.638767,
		0.325619, -0.941250, 0.089557,
		38.931019, 35.041214, 31.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434101, 35.713139, 31.637592>,  <38.703083, 35.700089, 31.626343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434101, 35.713139, 31.637592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388344, 35.322647, 31.563951>,  <39.360889, 35.088352, 31.519768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388344, 35.322647, 31.563951>,  <39.434101, 35.713139, 31.637592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388344, 35.322647, 31.563951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709869, 0.049317, -0.702605,
		0.694982, -0.211062, 0.687352,
		-0.114395, -0.976228, -0.184101,
		39.354027, 35.029778, 31.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051350, 35.392815, 31.533585>,  <39.434101, 35.713139, 31.637592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051350, 35.392815, 31.533585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 35.132366, 31.353899>,  <39.659828, 34.976097, 31.246088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 35.132366, 31.353899>,  <40.051350, 35.392815, 31.533585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806648, 35.132366, 31.353899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637227, -0.069147, -0.767568,
		0.468722, -0.755813, 0.457216,
		-0.611754, -0.651126, -0.449214,
		39.623123, 34.937027, 31.219135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444351, 34.803505, 31.269156>,  <40.051350, 35.392815, 31.533585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444351, 34.803505, 31.269156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124107, 34.880005, 31.042021>,  <39.931961, 34.925907, 30.905741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124107, 34.880005, 31.042021>,  <40.444351, 34.803505, 31.269156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124107, 34.880005, 31.042021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587336, 0.062998, -0.806888,
		-0.118549, -0.979517, -0.162768,
		-0.800614, 0.191255, -0.567837,
		39.883923, 34.937382, 30.871670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373268, 34.264507, 30.697260>,  <40.444351, 34.803505, 31.269156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373268, 34.264507, 30.697260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165066, 34.572224, 30.549063>,  <40.040146, 34.756855, 30.460144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165066, 34.572224, 30.549063>,  <40.373268, 34.264507, 30.697260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165066, 34.572224, 30.549063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472814, -0.101632, -0.875282,
		-0.710999, -0.630764, -0.310831,
		-0.520506, 0.769290, -0.370495,
		40.008915, 34.803009, 30.437914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314388, 34.034122, 29.983677>,  <40.373268, 34.264507, 30.697260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314388, 34.034122, 29.983677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.175110, 34.407547, 29.949673>,  <40.091545, 34.631603, 29.929270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.175110, 34.407547, 29.949673>,  <40.314388, 34.034122, 29.983677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175110, 34.407547, 29.949673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360839, 0.049778, -0.931299,
		-0.865192, -0.354947, -0.354197,
		-0.348193, 0.933560, -0.085011,
		40.070652, 34.687614, 29.924170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949028, 34.005760, 29.371111>,  <40.314388, 34.034122, 29.983677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949028, 34.005760, 29.371111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045311, 34.388050, 29.438820>,  <40.103081, 34.617424, 29.479445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045311, 34.388050, 29.438820>,  <39.949028, 34.005760, 29.371111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045311, 34.388050, 29.438820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458261, 0.041833, -0.887833,
		-0.855604, 0.291275, -0.427902,
		0.240703, 0.955724, 0.169273,
		40.117523, 34.674767, 29.489601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750629, 34.349297, 28.725668>,  <39.949028, 34.005760, 29.371111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750629, 34.349297, 28.725668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.016235, 34.583431, 28.911768>,  <40.175598, 34.723911, 29.023428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.016235, 34.583431, 28.911768>,  <39.750629, 34.349297, 28.725668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016235, 34.583431, 28.911768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483514, 0.138481, -0.864313,
		-0.570344, 0.798875, -0.191066,
		0.664019, 0.585339, 0.465248,
		40.215443, 34.759033, 29.051342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765827, 34.861340, 28.267698>,  <39.750629, 34.349297, 28.725668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765827, 34.861340, 28.267698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083874, 34.855122, 28.510201>,  <40.274700, 34.851391, 28.655703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083874, 34.855122, 28.510201>,  <39.765827, 34.861340, 28.267698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083874, 34.855122, 28.510201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599073, 0.175641, -0.781193,
		-0.094338, 0.984332, 0.148969,
		0.795118, -0.015547, 0.606256,
		40.322411, 34.850456, 28.692078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121956, 35.419865, 28.069019>,  <39.765827, 34.861340, 28.267698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121956, 35.419865, 28.069019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369469, 35.169754, 28.259233>,  <40.517979, 35.019688, 28.373362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369469, 35.169754, 28.259233>,  <40.121956, 35.419865, 28.069019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369469, 35.169754, 28.259233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653677, 0.074114, -0.753136,
		0.435674, 0.776877, 0.454589,
		0.618785, -0.625276, 0.475537,
		40.555103, 34.982170, 28.401894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767330, 35.565815, 27.739168>,  <40.121956, 35.419865, 28.069019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767330, 35.565815, 27.739168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795898, 35.215557, 27.930229>,  <40.813038, 35.005402, 28.044867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795898, 35.215557, 27.930229>,  <40.767330, 35.565815, 27.739168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795898, 35.215557, 27.930229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595033, -0.346931, -0.724966,
		0.800522, 0.335995, 0.496257,
		0.071418, -0.875640, 0.477654,
		40.817326, 34.952866, 28.073524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427742, 35.469742, 27.816160>,  <40.767330, 35.565815, 27.739168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427742, 35.469742, 27.816160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.254074, 35.110020, 27.837147>,  <41.149872, 34.894188, 27.849739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.254074, 35.110020, 27.837147>,  <41.427742, 35.469742, 27.816160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254074, 35.110020, 27.837147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419999, -0.253604, -0.871370,
		0.796930, -0.356286, 0.487813,
		-0.434169, -0.899302, 0.052465,
		41.123825, 34.840229, 27.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971436, 34.958843, 27.649502>,  <41.427742, 35.469742, 27.816160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971436, 34.958843, 27.649502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620872, 34.771572, 27.604383>,  <41.410534, 34.659210, 27.577312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.620872, 34.771572, 27.604383>,  <41.971436, 34.958843, 27.649502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620872, 34.771572, 27.604383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315928, -0.382186, -0.868403,
		0.363457, -0.796709, 0.482860,
		-0.876407, -0.468176, -0.112794,
		41.357952, 34.631119, 27.570545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127922, 34.175106, 27.533430>,  <41.971436, 34.958843, 27.649502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127922, 34.175106, 27.533430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778564, 34.286285, 27.373466>,  <41.568951, 34.352993, 27.277489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778564, 34.286285, 27.373466>,  <42.127922, 34.175106, 27.533430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778564, 34.286285, 27.373466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310611, -0.314543, -0.896986,
		-0.375103, -0.907639, 0.188386,
		-0.873395, 0.277947, -0.399908,
		41.516544, 34.369671, 27.253494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016476, 33.615231, 27.083857>,  <42.127922, 34.175106, 27.533430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016476, 33.615231, 27.083857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742275, 33.881981, 26.966990>,  <41.577755, 34.042030, 26.896870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742275, 33.881981, 26.966990>,  <42.016476, 33.615231, 27.083857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742275, 33.881981, 26.966990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043732, -0.362852, -0.930820,
		-0.726759, -0.650853, 0.219571,
		-0.685499, 0.666879, -0.292170,
		41.536625, 34.082047, 26.879339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630955, 33.275547, 26.548246>,  <42.016476, 33.615231, 27.083857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630955, 33.275547, 26.548246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.585575, 33.670258, 26.501936>,  <41.558346, 33.907085, 26.474150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.585575, 33.670258, 26.501936>,  <41.630955, 33.275547, 26.548246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585575, 33.670258, 26.501936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127153, -0.101148, -0.986712,
		-0.985373, -0.126666, -0.113996,
		-0.113453, 0.986775, -0.115775,
		41.551540, 33.966290, 26.467203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.357861, 33.191029, 25.889093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.459282, 33.569424, 25.969910>,  <41.520134, 33.796459, 26.018400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.459282, 33.569424, 25.969910>,  <41.357861, 33.191029, 25.889093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459282, 33.569424, 25.969910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244342, 0.139461, -0.959608,
		-0.935953, 0.292678, -0.195783,
		0.253552, 0.945986, 0.202042,
		41.535347, 33.853218, 26.030521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014023, 33.560932, 25.380533>,  <41.357861, 33.191029, 25.889093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014023, 33.560932, 25.380533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299091, 33.820705, 25.486620>,  <41.470131, 33.976570, 25.550272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299091, 33.820705, 25.486620>,  <41.014023, 33.560932, 25.380533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299091, 33.820705, 25.486620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170283, 0.206612, -0.963491,
		-0.680516, 0.731816, 0.036660,
		0.712672, 0.649429, 0.265219,
		41.512894, 34.015533, 25.566185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858791, 34.142368, 24.982635>,  <41.014023, 33.560932, 25.380533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858791, 34.142368, 24.982635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239635, 34.191845, 25.094477>,  <41.468143, 34.221531, 25.161581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239635, 34.191845, 25.094477>,  <40.858791, 34.142368, 24.982635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239635, 34.191845, 25.094477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220214, 0.356966, -0.907789,
		-0.212093, 0.925892, 0.312634,
		0.952115, 0.123689, 0.279604,
		41.525269, 34.228951, 25.178358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118973, 34.798248, 24.685478>,  <40.858791, 34.142368, 24.982635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118973, 34.798248, 24.685478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439503, 34.573002, 24.766262>,  <41.631821, 34.437855, 24.814732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439503, 34.573002, 24.766262>,  <41.118973, 34.798248, 24.685478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439503, 34.573002, 24.766262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376392, 0.212172, -0.901838,
		0.464987, 0.798678, 0.381969,
		0.801322, -0.563113, 0.201959,
		41.679901, 34.404068, 24.826849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643723, 35.120869, 24.307247>,  <41.118973, 34.798248, 24.685478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643723, 35.120869, 24.307247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799583, 34.757168, 24.365814>,  <41.893101, 34.538948, 24.400955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799583, 34.757168, 24.365814>,  <41.643723, 35.120869, 24.307247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799583, 34.757168, 24.365814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480048, 0.064844, -0.874842,
		0.785955, 0.411170, 0.461750,
		0.389651, -0.909249, 0.146417,
		41.916477, 34.484394, 24.409739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302086, 35.157478, 24.084726>,  <41.643723, 35.120869, 24.307247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302086, 35.157478, 24.084726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247021, 34.761368, 24.092791>,  <42.213982, 34.523701, 24.097630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247021, 34.761368, 24.092791>,  <42.302086, 35.157478, 24.084726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247021, 34.761368, 24.092791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302570, -0.061426, -0.951146,
		0.943133, -0.124841, 0.308083,
		-0.137666, -0.990273, 0.020159,
		42.205719, 34.464287, 24.098839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860962, 34.967541, 23.852869>,  <42.302086, 35.157478, 24.084726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860962, 34.967541, 23.852869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652851, 34.629219, 23.805683>,  <42.527985, 34.426224, 23.777372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.652851, 34.629219, 23.805683>,  <42.860962, 34.967541, 23.852869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652851, 34.629219, 23.805683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561340, -0.234611, -0.793634,
		0.643587, -0.479130, 0.596850,
		-0.520282, -0.845808, -0.117962,
		42.496765, 34.375477, 23.770294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259991, 34.444256, 23.519705>,  <42.860962, 34.967541, 23.852869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259991, 34.444256, 23.519705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.907940, 34.277195, 23.429426>,  <42.696709, 34.176960, 23.375259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.907940, 34.277195, 23.429426>,  <43.259991, 34.444256, 23.519705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907940, 34.277195, 23.429426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272354, -0.054814, -0.960634,
		0.388836, -0.906954, 0.161992,
		-0.880130, -0.417648, -0.225698,
		42.643902, 34.151901, 23.361717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390198, 33.762978, 23.156874>,  <43.259991, 34.444256, 23.519705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390198, 33.762978, 23.156874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020943, 33.879753, 23.056807>,  <42.799389, 33.949818, 22.996767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020943, 33.879753, 23.056807>,  <43.390198, 33.762978, 23.156874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020943, 33.879753, 23.056807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229950, -0.102216, -0.967820,
		-0.308116, -0.950959, 0.027228,
		-0.923140, 0.291939, -0.250168,
		42.743999, 33.967335, 22.981756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180981, 33.313618, 22.629044>,  <43.390198, 33.762978, 23.156874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180981, 33.313618, 22.629044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.962318, 33.644348, 22.576084>,  <42.831120, 33.842785, 22.544308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.962318, 33.644348, 22.576084>,  <43.180981, 33.313618, 22.629044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962318, 33.644348, 22.576084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360130, 0.089401, -0.928609,
		-0.755960, -0.555309, -0.346636,
		-0.546654, 0.826825, -0.132400,
		42.798321, 33.892395, 22.536364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919899, 33.293442, 21.988424>,  <43.180981, 33.313618, 22.629044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919899, 33.293442, 21.988424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866051, 33.684872, 22.050730>,  <42.833740, 33.919731, 22.088114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866051, 33.684872, 22.050730>,  <42.919899, 33.293442, 21.988424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866051, 33.684872, 22.050730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234623, 0.184205, -0.954474,
		-0.962719, -0.091950, -0.254395,
		-0.134625, 0.978577, 0.155764,
		42.825665, 33.978443, 22.097460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416836, 33.548229, 21.584053>,  <42.919899, 33.293442, 21.988424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416836, 33.548229, 21.584053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.643661, 33.865555, 21.672682>,  <42.779758, 34.055950, 21.725859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.643661, 33.865555, 21.672682>,  <42.416836, 33.548229, 21.584053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643661, 33.865555, 21.672682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168962, 0.151249, -0.973948,
		-0.806156, 0.589730, -0.048271,
		0.567066, 0.793311, 0.221572,
		42.813782, 34.103546, 21.739153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335312, 33.935665, 21.002058>,  <42.416836, 33.548229, 21.584053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335312, 33.935665, 21.002058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645767, 34.122280, 21.171741>,  <42.832039, 34.234249, 21.273552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645767, 34.122280, 21.171741>,  <42.335312, 33.935665, 21.002058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645767, 34.122280, 21.171741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265136, 0.368933, -0.890838,
		-0.572113, 0.803886, 0.162647,
		0.776138, 0.466536, 0.424210,
		42.878609, 34.262241, 21.299004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382748, 34.537521, 20.750242>,  <42.335312, 33.935665, 21.002058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382748, 34.537521, 20.750242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749157, 34.535400, 20.910679>,  <42.969002, 34.534126, 21.006941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.749157, 34.535400, 20.910679>,  <42.382748, 34.537521, 20.750242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749157, 34.535400, 20.910679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349907, 0.499468, -0.792526,
		-0.196131, 0.866316, 0.459378,
		0.916023, -0.005301, 0.401091,
		43.023964, 34.533810, 21.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738335, 35.315922, 20.697985>,  <42.382748, 34.537521, 20.750242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738335, 35.315922, 20.697985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.014969, 35.027191, 20.708435>,  <43.180950, 34.853954, 20.714705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.014969, 35.027191, 20.708435>,  <42.738335, 35.315922, 20.697985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014969, 35.027191, 20.708435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510333, 0.462715, -0.724883,
		0.511152, 0.514648, 0.688376,
		0.691581, -0.721826, 0.026124,
		43.222443, 34.810642, 20.716272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310966, 35.657230, 20.870874>,  <42.738335, 35.315922, 20.697985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310966, 35.657230, 20.870874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463219, 35.318954, 20.721243>,  <43.554569, 35.115990, 20.631464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463219, 35.318954, 20.721243>,  <43.310966, 35.657230, 20.870874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463219, 35.318954, 20.721243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492766, 0.527801, -0.691815,
		0.782497, 0.078994, 0.617623,
		0.380632, -0.845687, -0.374077,
		43.577408, 35.065247, 20.609020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064510, 35.796764, 20.671560>,  <43.310966, 35.657230, 20.870874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064510, 35.796764, 20.671560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.962761, 35.467884, 20.467884>,  <43.901711, 35.270554, 20.345678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.962761, 35.467884, 20.467884>,  <44.064510, 35.796764, 20.671560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962761, 35.467884, 20.467884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490824, 0.343909, -0.800511,
		0.833299, -0.453552, 0.316077,
		-0.254372, -0.822203, -0.509193,
		43.886448, 35.221222, 20.315126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693085, 35.485889, 20.302458>,  <44.064510, 35.796764, 20.671560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693085, 35.485889, 20.302458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356628, 35.367748, 20.121243>,  <44.154755, 35.296864, 20.012512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356628, 35.367748, 20.121243>,  <44.693085, 35.485889, 20.302458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356628, 35.367748, 20.121243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356690, 0.326695, -0.875239,
		0.406516, -0.897794, -0.169444,
		-0.841140, -0.295359, -0.453040,
		44.104286, 35.279140, 19.985331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881695, 35.047554, 19.658625>,  <44.693085, 35.485889, 20.302458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881695, 35.047554, 19.658625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.507801, 35.183300, 19.616488>,  <44.283463, 35.264748, 19.591206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.507801, 35.183300, 19.616488>,  <44.881695, 35.047554, 19.658625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507801, 35.183300, 19.616488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166160, 0.155389, -0.973779,
		-0.314100, -0.927730, -0.201637,
		-0.934736, 0.339368, -0.105344,
		44.227379, 35.285110, 19.584885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578686, 34.648457, 19.087765>,  <44.881695, 35.047554, 19.658625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578686, 34.648457, 19.087765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.391708, 34.999813, 19.127615>,  <44.279522, 35.210625, 19.151525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.391708, 34.999813, 19.127615>,  <44.578686, 34.648457, 19.087765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391708, 34.999813, 19.127615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250542, 0.239714, -0.937958,
		-0.847774, -0.413485, -0.332127,
		-0.467447, 0.878389, 0.099628,
		44.251472, 35.263329, 19.157503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921959, 34.647221, 18.590122>,  <44.578686, 34.648457, 19.087765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921959, 34.647221, 18.590122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.981712, 35.034130, 18.672155>,  <44.017563, 35.266277, 18.721375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.981712, 35.034130, 18.672155>,  <43.921959, 34.647221, 18.590122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981712, 35.034130, 18.672155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235917, 0.166553, -0.957394,
		-0.960223, 0.191399, -0.203317,
		0.149381, 0.967278, 0.205082,
		44.026527, 35.324314, 18.733681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547863, 34.929050, 18.017790>,  <43.921959, 34.647221, 18.590122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547863, 34.929050, 18.017790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.783787, 35.214676, 18.168648>,  <43.925343, 35.386051, 18.259163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.783787, 35.214676, 18.168648>,  <43.547863, 34.929050, 18.017790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783787, 35.214676, 18.168648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237538, 0.292956, -0.926149,
		-0.771816, 0.635838, 0.003171,
		0.589810, 0.714063, 0.377144,
		43.960732, 35.428894, 18.281792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362362, 35.616604, 17.691866>,  <43.547863, 34.929050, 18.017790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362362, 35.616604, 17.691866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.739067, 35.608459, 17.826126>,  <43.965092, 35.603573, 17.906681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.739067, 35.608459, 17.826126>,  <43.362362, 35.616604, 17.691866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739067, 35.608459, 17.826126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324704, 0.314568, -0.891972,
		-0.087420, 0.949016, 0.302862,
		0.941767, -0.020364, 0.335649,
		44.021599, 35.602352, 17.926821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461452, 36.033356, 17.069090>,  <43.362362, 35.616604, 17.691866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461452, 36.033356, 17.069090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118641, 35.987511, 16.868147>,  <42.912952, 35.960003, 16.747581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118641, 35.987511, 16.868147>,  <43.461452, 36.033356, 17.069090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118641, 35.987511, 16.868147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453921, -0.293424, 0.841343,
		-0.243835, 0.949086, 0.199447,
		-0.857030, -0.114616, -0.502358,
		42.861530, 35.953125, 16.717440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943104, 36.371365, 17.447626>,  <43.461452, 36.033356, 17.069090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943104, 36.371365, 17.447626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.773933, 36.096359, 17.211504>,  <42.672432, 35.931355, 17.069830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.773933, 36.096359, 17.211504>,  <42.943104, 36.371365, 17.447626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773933, 36.096359, 17.211504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479526, -0.382947, 0.789561,
		-0.768890, 0.616990, -0.167723,
		-0.422922, -0.687513, -0.590307,
		42.647057, 35.890106, 17.034412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192902, 36.338604, 17.604572>,  <42.943104, 36.371365, 17.447626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192902, 36.338604, 17.604572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245579, 35.989670, 17.416237>,  <42.277184, 35.780308, 17.303236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245579, 35.989670, 17.416237>,  <42.192902, 36.338604, 17.604572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245579, 35.989670, 17.416237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650525, -0.434443, 0.622959,
		-0.747981, 0.224255, -0.624687,
		0.131689, -0.872336, -0.470838,
		42.285084, 35.727970, 17.274986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565292, 36.090462, 17.463928>,  <42.192902, 36.338604, 17.604572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565292, 36.090462, 17.463928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785488, 35.756863, 17.448906>,  <41.917606, 35.556702, 17.439892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785488, 35.756863, 17.448906>,  <41.565292, 36.090462, 17.463928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785488, 35.756863, 17.448906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722005, -0.498184, 0.480126,
		-0.419135, -0.237188, -0.876395,
		0.550486, -0.833999, -0.037556,
		41.950634, 35.506664, 17.437639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157276, 35.547264, 17.310150>,  <41.565292, 36.090462, 17.463928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157276, 35.547264, 17.310150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468243, 35.357891, 17.475792>,  <41.654823, 35.244267, 17.575176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468243, 35.357891, 17.475792>,  <41.157276, 35.547264, 17.310150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468243, 35.357891, 17.475792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627592, -0.540114, 0.560718,
		-0.041799, -0.695801, -0.717017,
		0.777419, -0.473431, 0.414103,
		41.701469, 35.215862, 17.600023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892372, 34.751209, 17.382690>,  <41.157276, 35.547264, 17.310150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892372, 34.751209, 17.382690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209023, 34.805241, 17.621044>,  <41.399014, 34.837658, 17.764057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209023, 34.805241, 17.621044>,  <40.892372, 34.751209, 17.382690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209023, 34.805241, 17.621044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379860, -0.655075, 0.653133,
		0.478572, -0.743392, -0.467266,
		0.791628, 0.135076, 0.595886,
		41.446510, 34.845764, 17.799810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923565, 34.144806, 17.705734>,  <40.892372, 34.751209, 17.382690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923565, 34.144806, 17.705734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118130, 34.411747, 17.931314>,  <41.234871, 34.571911, 18.066662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118130, 34.411747, 17.931314>,  <40.923565, 34.144806, 17.705734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118130, 34.411747, 17.931314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451764, -0.360378, 0.816111,
		0.747871, -0.651739, 0.126194,
		0.486414, 0.667356, 0.563948,
		41.264053, 34.611954, 18.100498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145660, 33.707611, 18.205891>,  <40.923565, 34.144806, 17.705734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145660, 33.707611, 18.205891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149097, 34.077190, 18.358856>,  <41.151157, 34.298939, 18.450636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149097, 34.077190, 18.358856>,  <41.145660, 33.707611, 18.205891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149097, 34.077190, 18.358856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304195, -0.361889, 0.881193,
		0.952571, -0.123897, 0.277953,
		0.008589, 0.923951, 0.382414,
		41.151672, 34.354374, 18.473581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402771, 33.629047, 18.900379>,  <41.145660, 33.707611, 18.205891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402771, 33.629047, 18.900379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.230610, 33.990013, 18.908487>,  <41.127312, 34.206593, 18.913353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.230610, 33.990013, 18.908487>,  <41.402771, 33.629047, 18.900379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230610, 33.990013, 18.908487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274170, -0.152096, 0.949578,
		0.859991, 0.403141, 0.312876,
		-0.430401, 0.902410, 0.020272,
		41.101490, 34.260735, 18.914570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695969, 34.057209, 19.360817>,  <41.402771, 33.629047, 18.900379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695969, 34.057209, 19.360817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325226, 34.205177, 19.335239>,  <41.102779, 34.293957, 19.319893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325226, 34.205177, 19.335239>,  <41.695969, 34.057209, 19.360817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325226, 34.205177, 19.335239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153559, -0.218160, 0.963756,
		0.342560, 0.903088, 0.259008,
		-0.926862, 0.369917, -0.063944,
		41.047169, 34.316151, 19.316055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726490, 34.532494, 19.896288>,  <41.695969, 34.057209, 19.360817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726490, 34.532494, 19.896288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.331142, 34.496964, 19.846924>,  <41.093933, 34.475647, 19.817307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.331142, 34.496964, 19.846924>,  <41.726490, 34.532494, 19.896288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331142, 34.496964, 19.846924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125345, 0.016552, 0.991975,
		-0.086066, 0.995910, -0.027492,
		-0.988373, -0.088822, -0.123408,
		41.034630, 34.470318, 19.809902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496513, 34.995003, 20.362099>,  <41.726490, 34.532494, 19.896288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496513, 34.995003, 20.362099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199799, 34.736160, 20.291674>,  <41.021770, 34.580856, 20.249418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199799, 34.736160, 20.291674>,  <41.496513, 34.995003, 20.362099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199799, 34.736160, 20.291674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288602, 0.071050, 0.954809,
		-0.605355, 0.759081, -0.239461,
		-0.741791, -0.647107, -0.176062,
		40.977261, 34.542027, 20.238855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163589, 35.065552, 20.864586>,  <41.496513, 34.995003, 20.362099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163589, 35.065552, 20.864586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924931, 34.766342, 20.748335>,  <40.781734, 34.586815, 20.678585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924931, 34.766342, 20.748335>,  <41.163589, 35.065552, 20.864586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924931, 34.766342, 20.748335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376830, -0.058593, 0.924427,
		-0.708527, 0.661075, -0.246920,
		-0.596648, -0.748029, -0.290628,
		40.745937, 34.541935, 20.661146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446712, 35.161224, 21.101845>,  <41.163589, 35.065552, 20.864586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446712, 35.161224, 21.101845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465191, 34.764767, 21.052048>,  <40.476276, 34.526894, 21.022169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465191, 34.764767, 21.052048>,  <40.446712, 35.161224, 21.101845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465191, 34.764767, 21.052048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292404, -0.132583, 0.947060,
		-0.955179, -0.007347, -0.295939,
		0.046195, -0.991145, -0.124492,
		40.479050, 34.467422, 21.014700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771877, 34.779636, 21.438614>,  <40.446712, 35.161224, 21.101845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771877, 34.779636, 21.438614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006786, 34.460331, 21.385117>,  <40.147732, 34.268749, 21.353018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006786, 34.460331, 21.385117>,  <39.771877, 34.779636, 21.438614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006786, 34.460331, 21.385117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338137, -0.392098, 0.855525,
		-0.735376, -0.457201, -0.500190,
		0.587270, -0.798265, -0.133743,
		40.182968, 34.220852, 21.344994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389275, 34.199795, 21.754211>,  <39.771877, 34.779636, 21.438614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389275, 34.199795, 21.754211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751003, 34.030060, 21.735693>,  <39.968040, 33.928219, 21.724581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751003, 34.030060, 21.735693>,  <39.389275, 34.199795, 21.754211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751003, 34.030060, 21.735693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249372, -0.613216, 0.749520,
		-0.346443, -0.666259, -0.660361,
		0.904318, -0.424341, -0.046298,
		40.022297, 33.902756, 21.721804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260166, 33.533268, 21.733809>,  <39.389275, 34.199795, 21.754211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260166, 33.533268, 21.733809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626968, 33.578445, 21.886827>,  <39.847050, 33.605553, 21.978640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626968, 33.578445, 21.886827>,  <39.260166, 33.533268, 21.733809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626968, 33.578445, 21.886827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239946, -0.609940, 0.755247,
		0.318630, -0.784358, -0.532220,
		0.917006, 0.112941, 0.382549,
		39.902069, 33.612328, 22.001593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506489, 32.931473, 21.930574>,  <39.260166, 33.533268, 21.733809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506489, 32.931473, 21.930574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740726, 33.189041, 22.127531>,  <39.881268, 33.343582, 22.245705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740726, 33.189041, 22.127531>,  <39.506489, 32.931473, 21.930574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740726, 33.189041, 22.127531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095270, -0.548557, 0.830667,
		0.804986, -0.533344, -0.259886,
		0.585594, 0.643917, 0.492393,
		39.916405, 33.382217, 22.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964207, 32.479401, 22.300753>,  <39.506489, 32.931473, 21.930574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964207, 32.479401, 22.300753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.962227, 32.839973, 22.473906>,  <39.961040, 33.056316, 22.577797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.962227, 32.839973, 22.473906>,  <39.964207, 32.479401, 22.300753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962227, 32.839973, 22.473906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038865, -0.432388, 0.900850,
		0.999232, 0.021284, -0.032894,
		-0.004951, 0.901437, 0.432884,
		39.960743, 33.110405, 22.603771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480656, 32.431805, 22.848211>,  <39.964207, 32.479401, 22.300753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480656, 32.431805, 22.848211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237576, 32.736332, 22.938629>,  <40.091728, 32.919048, 22.992880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237576, 32.736332, 22.938629>,  <40.480656, 32.431805, 22.848211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237576, 32.736332, 22.938629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055298, -0.324504, 0.944266,
		0.792236, 0.561335, 0.239302,
		-0.607704, 0.761315, 0.226043,
		40.055264, 32.964725, 23.006443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689198, 32.662868, 23.417265>,  <40.480656, 32.431805, 22.848211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689198, 32.662868, 23.417265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312225, 32.796394, 23.425255>,  <40.086044, 32.876511, 23.430048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.312225, 32.796394, 23.425255>,  <40.689198, 32.662868, 23.417265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312225, 32.796394, 23.425255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125514, -0.408454, 0.904108,
		0.309960, 0.849550, 0.426837,
		-0.942428, 0.333812, 0.019974,
		40.029495, 32.896538, 23.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.346848, 34.258415, 29.090586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.101429, 34.477680, 28.863226>,  <40.954178, 34.609238, 28.726810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.101429, 34.477680, 28.863226>,  <41.346848, 34.258415, 29.090586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101429, 34.477680, 28.863226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388107, 0.417535, 0.821607,
		0.687701, 0.724694, -0.043431,
		-0.613548, 0.548164, -0.568397,
		40.917366, 34.642128, 28.692707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460556, 34.887527, 29.397089>,  <41.346848, 34.258415, 29.090586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460556, 34.887527, 29.397089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116154, 34.883747, 29.193689>,  <40.909512, 34.881477, 29.071650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116154, 34.883747, 29.193689>,  <41.460556, 34.887527, 29.397089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116154, 34.883747, 29.193689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474224, 0.376207, 0.795977,
		0.183777, 0.926487, -0.328401,
		-0.861010, -0.009454, -0.508500,
		40.857849, 34.880913, 29.041140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074177, 35.484818, 29.740875>,  <41.460556, 34.887527, 29.397089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074177, 35.484818, 29.740875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.812954, 35.281593, 29.516235>,  <40.656219, 35.159660, 29.381453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.812954, 35.281593, 29.516235>,  <41.074177, 35.484818, 29.740875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812954, 35.281593, 29.516235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735738, 0.249902, 0.629475,
		-0.179467, 0.824271, -0.536999,
		-0.653056, -0.508060, -0.561598,
		40.617039, 35.129173, 29.347755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510563, 35.924480, 29.739410>,  <41.074177, 35.484818, 29.740875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510563, 35.924480, 29.739410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345997, 35.574333, 29.637848>,  <40.247257, 35.364246, 29.576910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345997, 35.574333, 29.637848>,  <40.510563, 35.924480, 29.739410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345997, 35.574333, 29.637848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651883, 0.087905, 0.753207,
		-0.637013, 0.475398, -0.606803,
		-0.411414, -0.875368, -0.253908,
		40.222572, 35.311722, 29.561676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746887, 35.932552, 29.716700>,  <40.510563, 35.924480, 29.739410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746887, 35.932552, 29.716700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853714, 35.558071, 29.808083>,  <39.917809, 35.333382, 29.862913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853714, 35.558071, 29.808083>,  <39.746887, 35.932552, 29.716700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853714, 35.558071, 29.808083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611237, 0.018716, 0.791226,
		-0.745027, -0.350951, -0.567246,
		0.267065, -0.936206, 0.228459,
		39.933834, 35.277210, 29.876619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135635, 35.615456, 29.999796>,  <39.746887, 35.932552, 29.716700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135635, 35.615456, 29.999796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430862, 35.364670, 30.099531>,  <39.607998, 35.214199, 30.159372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430862, 35.364670, 30.099531>,  <39.135635, 35.615456, 29.999796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430862, 35.364670, 30.099531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550057, -0.345087, 0.760495,
		-0.390769, -0.698441, -0.599567,
		0.738063, -0.626974, 0.249333,
		39.652283, 35.176579, 30.174332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765041, 34.974415, 30.151762>,  <39.135635, 35.615456, 29.999796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765041, 34.974415, 30.151762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106506, 34.970741, 30.360064>,  <39.311386, 34.968536, 30.485044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106506, 34.970741, 30.360064>,  <38.765041, 34.974415, 30.151762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106506, 34.970741, 30.360064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497337, -0.311293, 0.809785,
		0.154674, -0.950270, -0.270303,
		0.853658, -0.009179, 0.520754,
		39.362602, 34.967987, 30.516289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778568, 34.271339, 30.579746>,  <38.765041, 34.974415, 30.151762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778568, 34.271339, 30.579746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024292, 34.509407, 30.786972>,  <39.171726, 34.652248, 30.911308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024292, 34.509407, 30.786972>,  <38.778568, 34.271339, 30.579746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024292, 34.509407, 30.786972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362485, -0.370317, 0.855260,
		0.700876, -0.713187, -0.011748,
		0.614311, 0.595173, 0.518066,
		39.208584, 34.687958, 30.942392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994225, 33.860638, 31.114931>,  <38.778568, 34.271339, 30.579746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994225, 33.860638, 31.114931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065266, 34.241180, 31.215630>,  <39.107891, 34.469505, 31.276049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065266, 34.241180, 31.215630>,  <38.994225, 33.860638, 31.114931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065266, 34.241180, 31.215630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289298, -0.194039, 0.937366,
		0.940620, -0.239304, 0.240765,
		0.177598, 0.951358, 0.251747,
		39.118546, 34.526588, 31.291153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064747, 33.750690, 31.831057>,  <38.994225, 33.860638, 31.114931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064747, 33.750690, 31.831057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064323, 34.147266, 31.778830>,  <39.064072, 34.385212, 31.747494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064323, 34.147266, 31.778830>,  <39.064747, 33.750690, 31.831057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064323, 34.147266, 31.778830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315516, 0.123569, 0.940840,
		0.948920, 0.042188, 0.312685,
		-0.001054, 0.991439, -0.130568,
		39.064007, 34.444698, 31.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620319, 34.103012, 32.271107>,  <39.064747, 33.750690, 31.831057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620319, 34.103012, 32.271107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321377, 34.359268, 32.200638>,  <39.142010, 34.513020, 32.158356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321377, 34.359268, 32.200638>,  <39.620319, 34.103012, 32.271107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321377, 34.359268, 32.200638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101482, 0.151983, 0.983159,
		0.656623, 0.752653, -0.048573,
		-0.747360, 0.640636, -0.176177,
		39.097168, 34.551460, 32.147785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839462, 34.781765, 32.431252>,  <39.620319, 34.103012, 32.271107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839462, 34.781765, 32.431252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443626, 34.735657, 32.465706>,  <39.206123, 34.707993, 32.486378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443626, 34.735657, 32.465706>,  <39.839462, 34.781765, 32.431252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443626, 34.735657, 32.465706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077715, 0.075684, 0.994099,
		-0.121106, 0.990447, -0.065939,
		-0.989593, -0.115267, 0.086138,
		39.146748, 34.701077, 32.491547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687313, 35.357742, 32.843571>,  <39.839462, 34.781765, 32.431252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687313, 35.357742, 32.843571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448711, 35.037014, 32.857857>,  <39.305550, 34.844578, 32.866428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448711, 35.037014, 32.857857>,  <39.687313, 35.357742, 32.843571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448711, 35.037014, 32.857857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166254, -0.079900, 0.982841,
		-0.785204, 0.592205, 0.180965,
		-0.596502, -0.801816, 0.035718,
		39.269760, 34.796471, 32.868572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412415, 35.248013, 32.848587>,  <39.687313, 35.357742, 32.843571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412415, 35.248013, 32.848587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684498, 35.238323, 33.141636>,  <40.847748, 35.232510, 33.317467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684498, 35.238323, 33.141636>,  <40.412415, 35.248013, 32.848587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684498, 35.238323, 33.141636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644629, 0.495569, -0.582121,
		-0.348963, 0.868231, 0.352704,
		0.680205, -0.024224, 0.732622,
		40.888557, 35.231056, 33.361423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127865, 35.682434, 33.010155>,  <40.412415, 35.248013, 32.848587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127865, 35.682434, 33.010155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.253231, 36.037708, 33.144550>,  <41.328453, 36.250874, 33.225189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.253231, 36.037708, 33.144550>,  <41.127865, 35.682434, 33.010155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253231, 36.037708, 33.144550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481854, 0.453632, -0.749689,
		-0.818282, 0.073068, 0.570154,
		0.313419, 0.888188, 0.335991,
		41.347256, 36.304165, 33.245346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574711, 36.074043, 32.895473>,  <41.127865, 35.682434, 33.010155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574711, 36.074043, 32.895473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854778, 36.355381, 32.944576>,  <41.022820, 36.524185, 32.974037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854778, 36.355381, 32.944576>,  <40.574711, 36.074043, 32.895473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854778, 36.355381, 32.944576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375234, 0.508769, -0.774825,
		-0.607425, 0.496446, 0.620143,
		0.700168, 0.703346, 0.122756,
		41.064827, 36.566383, 32.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176517, 36.730846, 32.880997>,  <40.574711, 36.074043, 32.895473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176517, 36.730846, 32.880997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551815, 36.782887, 32.752766>,  <40.776993, 36.814110, 32.675827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551815, 36.782887, 32.752766>,  <40.176517, 36.730846, 32.880997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551815, 36.782887, 32.752766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331179, 0.605805, -0.723409,
		0.100095, 0.784904, 0.611479,
		0.938244, 0.130099, -0.320582,
		40.833290, 36.821915, 32.656590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243565, 37.459911, 32.615768>,  <40.176517, 36.730846, 32.880997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243565, 37.459911, 32.615768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551804, 37.256119, 32.462612>,  <40.736748, 37.133842, 32.370720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551804, 37.256119, 32.462612>,  <40.243565, 37.459911, 32.615768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551804, 37.256119, 32.462612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061190, 0.538861, -0.840169,
		0.634376, 0.670863, 0.384071,
		0.770599, -0.509482, -0.382890,
		40.782982, 37.103275, 32.347744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836941, 37.913654, 32.376228>,  <40.243565, 37.459911, 32.615768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836941, 37.913654, 32.376228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886635, 37.573513, 32.171696>,  <40.916451, 37.369427, 32.048977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886635, 37.573513, 32.171696>,  <40.836941, 37.913654, 32.376228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886635, 37.573513, 32.171696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102762, 0.501524, -0.859019,
		0.986917, 0.159267, -0.025076,
		0.124237, -0.850357, -0.511330,
		40.923904, 37.318405, 32.018295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177414, 38.083317, 31.759352>,  <40.836941, 37.913654, 32.376228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177414, 38.083317, 31.759352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049904, 37.714420, 31.671852>,  <40.973396, 37.493084, 31.619352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049904, 37.714420, 31.671852>,  <41.177414, 38.083317, 31.759352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049904, 37.714420, 31.671852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223787, 0.297498, -0.928124,
		0.921033, -0.246910, -0.301220,
		-0.318776, -0.922242, -0.218750,
		40.954269, 37.437748, 31.606228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253395, 38.052719, 31.082266>,  <41.177414, 38.083317, 31.759352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253395, 38.052719, 31.082266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003265, 37.751995, 31.165932>,  <40.853188, 37.571560, 31.216131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003265, 37.751995, 31.165932>,  <41.253395, 38.052719, 31.082266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003265, 37.751995, 31.165932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405401, 0.083947, -0.910277,
		0.666794, -0.654017, -0.357278,
		-0.625329, -0.751807, 0.209164,
		40.815666, 37.526451, 31.228682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165913, 37.923096, 30.431160>,  <41.253395, 38.052719, 31.082266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165913, 37.923096, 30.431160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.900024, 37.667641, 30.586227>,  <40.740494, 37.514366, 30.679268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.900024, 37.667641, 30.586227>,  <41.165913, 37.923096, 30.431160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900024, 37.667641, 30.586227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435670, -0.090179, -0.895578,
		0.606914, -0.764202, -0.218293,
		-0.664716, -0.638642, 0.387671,
		40.700611, 37.476048, 30.702528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240551, 37.264885, 30.037962>,  <41.165913, 37.923096, 30.431160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240551, 37.264885, 30.037962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881729, 37.304237, 30.210295>,  <40.666435, 37.327847, 30.313694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881729, 37.304237, 30.210295>,  <41.240551, 37.264885, 30.037962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881729, 37.304237, 30.210295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440206, -0.113048, -0.890752,
		-0.038920, -0.988708, 0.144714,
		-0.897053, 0.098372, 0.430835,
		40.612614, 37.333752, 30.339544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846462, 36.725033, 29.747824>,  <41.240551, 37.264885, 30.037962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846462, 36.725033, 29.747824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597515, 36.999310, 29.898811>,  <40.448147, 37.163876, 29.989405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597515, 36.999310, 29.898811>,  <40.846462, 36.725033, 29.747824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597515, 36.999310, 29.898811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373608, 0.163529, -0.913058,
		-0.687807, -0.709282, 0.154406,
		-0.622366, 0.685695, 0.377470,
		40.410805, 37.205017, 30.012053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166817, 36.571499, 29.639879>,  <40.846462, 36.725033, 29.747824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166817, 36.571499, 29.639879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182770, 36.970139, 29.668699>,  <40.192341, 37.209324, 29.685991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182770, 36.970139, 29.668699>,  <40.166817, 36.571499, 29.639879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182770, 36.970139, 29.668699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113119, 0.076148, -0.990659,
		-0.992781, 0.031359, 0.115772,
		0.039882, 0.996603, 0.072051,
		40.194733, 37.269119, 29.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611877, 36.781254, 29.264849>,  <40.166817, 36.571499, 29.639879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611877, 36.781254, 29.264849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835617, 37.110271, 29.305941>,  <39.969860, 37.307682, 29.330595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835617, 37.110271, 29.305941>,  <39.611877, 36.781254, 29.264849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835617, 37.110271, 29.305941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236865, 0.277361, -0.931110,
		-0.794370, 0.496483, 0.349973,
		0.559350, 0.822542, 0.102728,
		40.003422, 37.357033, 29.336760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258629, 37.277267, 28.856047>,  <39.611877, 36.781254, 29.264849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258629, 37.277267, 28.856047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612667, 37.460350, 28.889763>,  <39.825092, 37.570198, 28.909992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612667, 37.460350, 28.889763>,  <39.258629, 37.277267, 28.856047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612667, 37.460350, 28.889763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040053, 0.105532, -0.993609,
		-0.463676, 0.882818, 0.075074,
		0.885099, 0.457706, 0.084293,
		39.878197, 37.597660, 28.915051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229858, 37.878067, 28.350824>,  <39.258629, 37.277267, 28.856047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229858, 37.878067, 28.350824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617214, 37.815422, 28.428484>,  <39.849628, 37.777836, 28.475079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617214, 37.815422, 28.428484>,  <39.229858, 37.878067, 28.350824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617214, 37.815422, 28.428484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215871, 0.136205, -0.966875,
		0.124982, 0.978223, 0.165708,
		0.968390, -0.156613, 0.194147,
		39.907730, 37.768436, 28.486729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861702, 38.566399, 28.045420>,  <39.229858, 37.878067, 28.350824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861702, 38.566399, 28.045420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563496, 38.437176, 27.812239>,  <38.384571, 38.359642, 27.672329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563496, 38.437176, 27.812239>,  <38.861702, 38.566399, 28.045420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563496, 38.437176, 27.812239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501975, -0.303212, 0.809990,
		-0.438435, 0.896490, 0.063882,
		-0.745517, -0.323061, -0.582954,
		38.339840, 38.340256, 27.637352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256943, 38.870922, 28.341631>,  <38.861702, 38.566399, 28.045420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256943, 38.870922, 28.341631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148106, 38.544678, 28.137379>,  <38.082802, 38.348930, 28.014828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148106, 38.544678, 28.137379>,  <38.256943, 38.870922, 28.341631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148106, 38.544678, 28.137379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640649, -0.242407, 0.728566,
		-0.718007, 0.525373, -0.456563,
		-0.272095, -0.815611, -0.510630,
		38.066479, 38.299995, 27.984190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548534, 38.837936, 28.414043>,  <38.256943, 38.870922, 28.341631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548534, 38.837936, 28.414043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632065, 38.463680, 28.300220>,  <37.682182, 38.239128, 28.231926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632065, 38.463680, 28.300220>,  <37.548534, 38.837936, 28.414043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632065, 38.463680, 28.300220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702919, -0.345901, 0.621496,
		-0.679925, 0.070240, -0.729910,
		0.208823, -0.935638, -0.284559,
		37.694710, 38.182987, 28.214853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899158, 38.556721, 28.269081>,  <37.548534, 38.837936, 28.414043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899158, 38.556721, 28.269081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135124, 38.237362, 28.317354>,  <37.276703, 38.045746, 28.346317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135124, 38.237362, 28.317354>,  <36.899158, 38.556721, 28.269081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135124, 38.237362, 28.317354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737311, -0.471672, 0.483630,
		-0.329208, -0.374278, -0.866913,
		0.589911, -0.798399, 0.120681,
		37.312096, 37.997841, 28.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429897, 38.014740, 28.179873>,  <36.899158, 38.556721, 28.269081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429897, 38.014740, 28.179873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749561, 37.882462, 28.380665>,  <36.941360, 37.803093, 28.501141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749561, 37.882462, 28.380665>,  <36.429897, 38.014740, 28.179873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749561, 37.882462, 28.380665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600176, -0.485719, 0.635504,
		0.033662, -0.809145, -0.586644,
		0.799159, -0.330698, 0.501980,
		36.989307, 37.783253, 28.531260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235401, 37.329208, 28.395861>,  <36.429897, 38.014740, 28.179873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235401, 37.329208, 28.395861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520008, 37.433090, 28.657026>,  <36.690773, 37.495419, 28.813726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520008, 37.433090, 28.657026>,  <36.235401, 37.329208, 28.395861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520008, 37.433090, 28.657026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433539, -0.568995, 0.698776,
		0.552981, -0.780255, -0.292257,
		0.711516, 0.259706, 0.652914,
		36.733463, 37.511002, 28.852901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418728, 36.732391, 28.707375>,  <36.235401, 37.329208, 28.395861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418728, 36.732391, 28.707375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.550045, 37.005730, 28.968224>,  <36.628838, 37.169731, 29.124733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.550045, 37.005730, 28.968224>,  <36.418728, 36.732391, 28.707375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550045, 37.005730, 28.968224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397321, -0.526436, 0.751666,
		0.856947, -0.505870, 0.098681,
		0.328296, 0.683345, 0.652120,
		36.648533, 37.210732, 29.163860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746399, 36.397472, 29.296206>,  <36.418728, 36.732391, 28.707375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746399, 36.397472, 29.296206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696499, 36.740047, 29.496588>,  <36.666557, 36.945591, 29.616817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696499, 36.740047, 29.496588>,  <36.746399, 36.397472, 29.296206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696499, 36.740047, 29.496588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057934, -0.510328, 0.858026,
		0.990495, 0.078018, 0.113281,
		-0.124752, 0.856434, 0.500957,
		36.659073, 36.996979, 29.646875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980621, 36.238579, 29.926146>,  <36.746399, 36.397472, 29.296206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980621, 36.238579, 29.926146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759937, 36.560158, 30.014942>,  <36.627529, 36.753105, 30.068220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759937, 36.560158, 30.014942>,  <36.980621, 36.238579, 29.926146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759937, 36.560158, 30.014942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273927, -0.426065, 0.862225,
		0.787771, 0.414886, 0.455287,
		-0.551708, 0.803951, 0.221994,
		36.594425, 36.801342, 30.081541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068623, 36.361904, 30.606600>,  <36.980621, 36.238579, 29.926146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068623, 36.361904, 30.606600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.731419, 36.560734, 30.524368>,  <36.529099, 36.680031, 30.475029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.731419, 36.560734, 30.524368>,  <37.068623, 36.361904, 30.606600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731419, 36.560734, 30.524368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409862, -0.346065, 0.843950,
		0.348359, 0.795714, 0.495465,
		-0.843006, 0.497070, -0.205577,
		36.478516, 36.709854, 30.462694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945057, 36.528122, 31.255512>,  <37.068623, 36.361904, 30.606600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945057, 36.528122, 31.255512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623573, 36.624077, 31.037704>,  <36.430683, 36.681652, 30.907021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623573, 36.624077, 31.037704>,  <36.945057, 36.528122, 31.255512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623573, 36.624077, 31.037704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592077, -0.231525, 0.771908,
		0.059105, 0.942788, 0.328113,
		-0.803711, 0.239892, -0.544518,
		36.382462, 36.696045, 30.874350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688770, 36.933609, 31.767485>,  <36.945057, 36.528122, 31.255512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688770, 36.933609, 31.767485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401798, 36.831814, 31.508091>,  <36.229614, 36.770737, 31.352455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.401798, 36.831814, 31.508091>,  <36.688770, 36.933609, 31.767485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401798, 36.831814, 31.508091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584347, -0.286938, 0.759081,
		-0.379250, 0.923528, 0.057150,
		-0.717431, -0.254486, -0.648482,
		36.186569, 36.755466, 31.313547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.005749, 40.060703, 24.298752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933437, 39.673977, 24.226542>,  <38.890049, 39.441940, 24.183216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933437, 39.673977, 24.226542>,  <39.005749, 40.060703, 24.298752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933437, 39.673977, 24.226542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455040, -0.080504, 0.886825,
		-0.871928, 0.242464, -0.425386,
		-0.180778, -0.966815, -0.180524,
		38.879204, 39.383934, 24.172384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300468, 40.000198, 24.466347>,  <39.005749, 40.060703, 24.298752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300468, 40.000198, 24.466347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474861, 39.640240, 24.470446>,  <38.579498, 39.424263, 24.472904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474861, 39.640240, 24.470446>,  <38.300468, 40.000198, 24.466347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474861, 39.640240, 24.470446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403945, -0.185502, 0.895778,
		-0.804207, -0.394682, -0.444384,
		0.435981, -0.899898, 0.010248,
		38.605656, 39.370270, 24.473520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883678, 39.623177, 24.897579>,  <38.300468, 40.000198, 24.466347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883678, 39.623177, 24.897579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165466, 39.339832, 24.879904>,  <38.334538, 39.169827, 24.869299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165466, 39.339832, 24.879904>,  <37.883678, 39.623177, 24.897579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165466, 39.339832, 24.879904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274650, -0.329494, 0.903328,
		-0.654438, -0.624231, -0.426669,
		0.704470, -0.708357, -0.044188,
		38.376808, 39.127327, 24.866648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530491, 38.956036, 25.024286>,  <37.883678, 39.623177, 24.897579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530491, 38.956036, 25.024286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919075, 38.942028, 25.118130>,  <38.152225, 38.933624, 25.174437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919075, 38.942028, 25.118130>,  <37.530491, 38.956036, 25.024286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919075, 38.942028, 25.118130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221689, -0.485914, 0.845424,
		0.084394, -0.873305, -0.479808,
		0.971458, -0.035020, 0.234610,
		38.210514, 38.931522, 25.188513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629772, 38.351856, 25.279375>,  <37.530491, 38.956036, 25.024286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629772, 38.351856, 25.279375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944317, 38.558647, 25.414650>,  <38.133041, 38.682724, 25.495815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944317, 38.558647, 25.414650>,  <37.629772, 38.351856, 25.279375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944317, 38.558647, 25.414650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043455, -0.499788, 0.865057,
		0.616242, -0.694940, -0.370547,
		0.786357, 0.516982, 0.338188,
		38.180225, 38.713741, 25.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160973, 37.804222, 25.610502>,  <37.629772, 38.351856, 25.279375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160973, 37.804222, 25.610502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235268, 38.174709, 25.741722>,  <38.279846, 38.397003, 25.820454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235268, 38.174709, 25.741722>,  <38.160973, 37.804222, 25.610502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235268, 38.174709, 25.741722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015721, -0.331017, 0.943494,
		0.982473, -0.180402, -0.046922,
		0.185740, 0.926220, 0.328051,
		38.290989, 38.452576, 25.840137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715450, 37.826664, 26.076742>,  <38.160973, 37.804222, 25.610502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715450, 37.826664, 26.076742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508625, 38.151592, 26.184656>,  <38.384529, 38.346550, 26.249405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508625, 38.151592, 26.184656>,  <38.715450, 37.826664, 26.076742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508625, 38.151592, 26.184656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121285, -0.381540, 0.916361,
		0.847311, 0.441095, 0.295802,
		-0.517063, 0.812319, 0.269785,
		38.353508, 38.395287, 26.265591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914585, 37.935646, 26.800062>,  <38.715450, 37.826664, 26.076742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914585, 37.935646, 26.800062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633015, 38.216026, 26.754200>,  <38.464073, 38.384254, 26.726683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633015, 38.216026, 26.754200>,  <38.914585, 37.935646, 26.800062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633015, 38.216026, 26.754200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288853, -0.135045, 0.947801,
		0.648882, 0.700304, 0.297535,
		-0.703929, 0.700955, -0.114657,
		38.421837, 38.426311, 26.719803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137074, 38.498169, 27.249285>,  <38.914585, 37.935646, 26.800062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137074, 38.498169, 27.249285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744518, 38.456421, 27.184803>,  <38.508984, 38.431370, 27.146114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744518, 38.456421, 27.184803>,  <39.137074, 38.498169, 27.249285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744518, 38.456421, 27.184803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114422, -0.356357, 0.927317,
		-0.154232, 0.928502, 0.337781,
		-0.981387, -0.104372, -0.161203,
		38.450104, 38.425110, 27.136442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676003, 38.386684, 27.834532>,  <39.137074, 38.498169, 27.249285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676003, 38.386684, 27.834532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934731, 38.104710, 27.950935>,  <40.089970, 37.935524, 28.020779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934731, 38.104710, 27.950935>,  <39.676003, 38.386684, 27.834532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934731, 38.104710, 27.950935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553635, 0.171596, -0.814888,
		0.524506, 0.688204, 0.501268,
		0.646825, -0.704933, 0.291010,
		40.128777, 37.893230, 28.038239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295769, 38.697140, 27.795053>,  <39.676003, 38.386684, 27.834532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295769, 38.697140, 27.795053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372143, 38.304977, 27.775665>,  <40.417965, 38.069679, 27.764032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372143, 38.304977, 27.775665>,  <40.295769, 38.697140, 27.795053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372143, 38.304977, 27.775665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545679, 0.147057, -0.824990,
		0.815954, 0.131067, 0.563064,
		0.190931, -0.980406, -0.048471,
		40.429420, 38.010857, 27.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955116, 38.699631, 27.696299>,  <40.295769, 38.697140, 27.795053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955116, 38.699631, 27.696299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835987, 38.330437, 27.598812>,  <40.764511, 38.108921, 27.540321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835987, 38.330437, 27.598812>,  <40.955116, 38.699631, 27.696299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835987, 38.330437, 27.598812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662698, -0.016137, -0.748713,
		0.687120, -0.384493, 0.616467,
		-0.297823, -0.922987, -0.243715,
		40.746639, 38.053539, 27.525698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546501, 38.434242, 27.448118>,  <40.955116, 38.699631, 27.696299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546501, 38.434242, 27.448118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301418, 38.131832, 27.356024>,  <41.154369, 37.950386, 27.300766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301418, 38.131832, 27.356024>,  <41.546501, 38.434242, 27.448118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301418, 38.131832, 27.356024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599603, -0.254909, -0.758616,
		0.514846, -0.602861, 0.609502,
		-0.612707, -0.756029, -0.230238,
		41.117607, 37.905022, 27.286953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930500, 37.829220, 27.414970>,  <41.546501, 38.434242, 27.448118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930500, 37.829220, 27.414970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608330, 37.842800, 27.178280>,  <41.415028, 37.850948, 27.036266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608330, 37.842800, 27.178280>,  <41.930500, 37.829220, 27.414970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608330, 37.842800, 27.178280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580364, -0.157433, -0.798995,
		-0.120284, -0.986946, 0.107096,
		-0.805425, 0.033952, -0.591724,
		41.366703, 37.852985, 27.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057171, 37.323269, 26.864286>,  <41.930500, 37.829220, 27.414970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057171, 37.323269, 26.864286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771805, 37.558151, 26.711327>,  <41.600586, 37.699081, 26.619551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771805, 37.558151, 26.711327>,  <42.057171, 37.323269, 26.864286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771805, 37.558151, 26.711327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299259, -0.238137, -0.923978,
		-0.633631, -0.773614, -0.005838,
		-0.713411, 0.587207, -0.382402,
		41.557781, 37.734314, 26.596605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651756, 36.991951, 26.412874>,  <42.057171, 37.323269, 26.864286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651756, 36.991951, 26.412874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610279, 37.376308, 26.310165>,  <41.585392, 37.606922, 26.248541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610279, 37.376308, 26.310165>,  <41.651756, 36.991951, 26.412874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610279, 37.376308, 26.310165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213567, -0.230631, -0.949315,
		-0.971410, -0.153275, -0.181300,
		-0.103693, 0.960893, -0.256772,
		41.579170, 37.664577, 26.233133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465260, 36.921886, 25.667017>,  <41.651756, 36.991951, 26.412874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465260, 36.921886, 25.667017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598522, 37.290440, 25.747080>,  <41.678478, 37.511570, 25.795116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598522, 37.290440, 25.747080>,  <41.465260, 36.921886, 25.667017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598522, 37.290440, 25.747080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470706, 0.021408, -0.882030,
		-0.816972, 0.388067, -0.426568,
		0.333155, 0.921382, 0.200156,
		41.698467, 37.566853, 25.807127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165607, 37.338608, 25.171911>,  <41.465260, 36.921886, 25.667017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165607, 37.338608, 25.171911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496571, 37.535397, 25.280252>,  <41.695148, 37.653469, 25.345257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496571, 37.535397, 25.280252>,  <41.165607, 37.338608, 25.171911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496571, 37.535397, 25.280252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316165, -0.009455, -0.948657,
		-0.464153, 0.870559, -0.163368,
		0.827407, 0.491974, 0.270851,
		41.744793, 37.682987, 25.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322479, 37.917103, 24.672432>,  <41.165607, 37.338608, 25.171911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322479, 37.917103, 24.672432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677269, 37.909584, 24.857008>,  <41.890144, 37.905071, 24.967752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677269, 37.909584, 24.857008>,  <41.322479, 37.917103, 24.672432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677269, 37.909584, 24.857008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444566, 0.305325, -0.842103,
		-0.125060, 0.952063, 0.279171,
		0.886973, -0.018796, 0.461439,
		41.943359, 37.903946, 24.995440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560436, 38.476173, 24.330170>,  <41.322479, 37.917103, 24.672432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560436, 38.476173, 24.330170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869461, 38.286598, 24.499178>,  <42.054878, 38.172852, 24.600584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869461, 38.286598, 24.499178>,  <41.560436, 38.476173, 24.330170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869461, 38.286598, 24.499178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541014, 0.143057, -0.828757,
		0.332334, 0.868860, 0.366928,
		0.772566, -0.473937, 0.422523,
		42.101231, 38.144417, 24.625935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133057, 38.940105, 24.206127>,  <41.560436, 38.476173, 24.330170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133057, 38.940105, 24.206127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264893, 38.566319, 24.260008>,  <42.343994, 38.342049, 24.292336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264893, 38.566319, 24.260008>,  <42.133057, 38.940105, 24.206127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264893, 38.566319, 24.260008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609572, 0.101673, -0.786184,
		0.720966, 0.341228, 0.603134,
		0.329591, -0.934466, 0.134700,
		42.363770, 38.285980, 24.300417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881203, 38.945721, 24.207737>,  <42.133057, 38.940105, 24.206127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881203, 38.945721, 24.207737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785484, 38.565681, 24.127686>,  <42.728054, 38.337658, 24.079655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785484, 38.565681, 24.127686>,  <42.881203, 38.945721, 24.207737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785484, 38.565681, 24.127686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617151, 0.010291, -0.786777,
		0.749575, -0.311780, 0.583892,
		-0.239292, -0.950099, -0.200129,
		42.713696, 38.280651, 24.067646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520962, 38.620605, 24.085722>,  <42.881203, 38.945721, 24.207737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520962, 38.620605, 24.085722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258698, 38.364685, 23.925339>,  <43.101337, 38.211132, 23.829109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258698, 38.364685, 23.925339>,  <43.520962, 38.620605, 24.085722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258698, 38.364685, 23.925339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508781, 0.018006, -0.860708,
		0.557899, -0.768332, 0.313712,
		-0.655660, -0.639798, -0.400958,
		43.062000, 38.172745, 23.805052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.868423, 34.466053, 21.360020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127300, 34.714100, 21.537374>,  <37.282627, 34.862930, 21.643787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127300, 34.714100, 21.537374>,  <36.868423, 34.466053, 21.360020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127300, 34.714100, 21.537374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185453, -0.436076, 0.880593,
		0.739424, -0.652142, -0.167223,
		0.647194, 0.620120, 0.443387,
		37.321457, 34.900135, 21.670391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444141, 33.970818, 21.634201>,  <36.868423, 34.466053, 21.360020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444141, 33.970818, 21.634201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413570, 34.333057, 21.801077>,  <37.395229, 34.550400, 21.901201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413570, 34.333057, 21.801077>,  <37.444141, 33.970818, 21.634201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413570, 34.333057, 21.801077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022167, -0.419851, 0.907322,
		0.996829, 0.060097, 0.052163,
		-0.076429, 0.905601, 0.417187,
		37.390640, 34.604736, 21.926233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869480, 33.968388, 22.144356>,  <37.444141, 33.970818, 21.634201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869480, 33.968388, 22.144356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627338, 34.265709, 22.258230>,  <37.482052, 34.444103, 22.326555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627338, 34.265709, 22.258230>,  <37.869480, 33.968388, 22.144356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627338, 34.265709, 22.258230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047292, -0.390619, 0.919337,
		0.794549, 0.543063, 0.271616,
		-0.605356, 0.743303, 0.284684,
		37.445732, 34.488701, 22.343636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089512, 34.056942, 22.828594>,  <37.869480, 33.968388, 22.144356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089512, 34.056942, 22.828594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724453, 34.220158, 22.818918>,  <37.505417, 34.318085, 22.813112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724453, 34.220158, 22.818918>,  <38.089512, 34.056942, 22.828594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724453, 34.220158, 22.818918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097954, -0.160873, 0.982102,
		0.396840, 0.898681, 0.186788,
		-0.912646, 0.408034, -0.024188,
		37.450661, 34.342567, 22.811663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938004, 34.621445, 23.380087>,  <38.089512, 34.056942, 22.828594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938004, 34.621445, 23.380087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585247, 34.459473, 23.283512>,  <37.373592, 34.362289, 23.225567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585247, 34.459473, 23.283512>,  <37.938004, 34.621445, 23.380087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585247, 34.459473, 23.283512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236971, -0.061979, 0.969537,
		-0.407563, 0.912242, -0.041298,
		-0.881894, -0.404935, -0.241436,
		37.320679, 34.337994, 23.211081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542492, 34.859142, 23.938374>,  <37.938004, 34.621445, 23.380087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542492, 34.859142, 23.938374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361164, 34.559860, 23.744593>,  <37.252365, 34.380291, 23.628325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361164, 34.559860, 23.744593>,  <37.542492, 34.859142, 23.938374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361164, 34.559860, 23.744593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418579, -0.301155, 0.856795,
		-0.786950, 0.591187, -0.176660,
		-0.453323, -0.748200, -0.484453,
		37.225166, 34.335400, 23.599257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847904, 34.867382, 24.114147>,  <37.542492, 34.859142, 23.938374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847904, 34.867382, 24.114147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902710, 34.492306, 23.986418>,  <36.935593, 34.267262, 23.909781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902710, 34.492306, 23.986418>,  <36.847904, 34.867382, 24.114147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902710, 34.492306, 23.986418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350563, -0.347402, 0.869722,
		-0.926462, -0.007225, -0.376319,
		0.137018, -0.937688, -0.319321,
		36.943817, 34.210999, 23.890621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177197, 34.434940, 24.163307>,  <36.847904, 34.867382, 24.114147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177197, 34.434940, 24.163307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474899, 34.167892, 24.155685>,  <36.653519, 34.007664, 24.151112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474899, 34.167892, 24.155685>,  <36.177197, 34.434940, 24.163307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474899, 34.167892, 24.155685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317062, -0.378276, 0.869701,
		-0.587840, -0.641238, -0.493212,
		0.744255, -0.667624, -0.019054,
		36.698177, 33.967606, 24.149969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869774, 33.840893, 24.366028>,  <36.177197, 34.434940, 24.163307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869774, 33.840893, 24.366028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248386, 33.726639, 24.426018>,  <36.475555, 33.658085, 24.462011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248386, 33.726639, 24.426018>,  <35.869774, 33.840893, 24.366028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248386, 33.726639, 24.426018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279397, -0.493333, 0.823747,
		-0.161303, -0.821605, -0.546760,
		0.946530, -0.285636, 0.149978,
		36.532345, 33.640949, 24.471010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771076, 33.293781, 24.758995>,  <35.869774, 33.840893, 24.366028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771076, 33.293781, 24.758995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165466, 33.339203, 24.807909>,  <36.402100, 33.366455, 24.837257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165466, 33.339203, 24.807909>,  <35.771076, 33.293781, 24.758995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165466, 33.339203, 24.807909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026821, -0.615410, 0.787751,
		0.164708, -0.779984, -0.603735,
		0.985978, 0.113556, 0.122283,
		36.461258, 33.373268, 24.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979290, 32.655773, 25.169674>,  <35.771076, 33.293781, 24.758995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979290, 32.655773, 25.169674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278278, 32.917343, 25.216442>,  <36.457672, 33.074284, 25.244503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278278, 32.917343, 25.216442>,  <35.979290, 32.655773, 25.169674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278278, 32.917343, 25.216442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288465, -0.478065, 0.829603,
		0.598390, -0.586380, -0.545974,
		0.747474, 0.653921, 0.116919,
		36.502522, 33.113518, 25.251518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505493, 32.350239, 25.465887>,  <35.979290, 32.655773, 25.169674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505493, 32.350239, 25.465887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582733, 32.730240, 25.564039>,  <36.629078, 32.958241, 25.622931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582733, 32.730240, 25.564039>,  <36.505493, 32.350239, 25.465887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582733, 32.730240, 25.564039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074942, -0.263635, 0.961707,
		0.978313, -0.167315, -0.122103,
		0.193099, 0.950001, 0.245379,
		36.640663, 33.015240, 25.637653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968124, 32.252018, 26.028603>,  <36.505493, 32.350239, 25.465887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968124, 32.252018, 26.028603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835445, 32.629372, 26.028963>,  <36.755836, 32.855785, 26.029179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835445, 32.629372, 26.028963>,  <36.968124, 32.252018, 26.028603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835445, 32.629372, 26.028963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043373, -0.016203, 0.998928,
		0.942387, 0.331305, 0.046292,
		-0.331700, 0.943385, 0.000900,
		36.735935, 32.912388, 26.029234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399338, 32.749241, 26.447311>,  <36.968124, 32.252018, 26.028603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399338, 32.749241, 26.447311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018959, 32.867855, 26.412060>,  <36.790733, 32.939026, 26.390909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018959, 32.867855, 26.412060>,  <37.399338, 32.749241, 26.447311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018959, 32.867855, 26.412060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094731, -0.007931, 0.995471,
		0.294497, 0.954988, 0.035634,
		-0.950946, 0.296539, -0.088131,
		36.733677, 32.956818, 26.385620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925983, 33.180473, 26.869875>,  <37.399338, 32.749241, 26.447311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925983, 33.180473, 26.869875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271778, 33.021873, 26.993450>,  <38.479256, 32.926712, 27.067595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271778, 33.021873, 26.993450>,  <37.925983, 33.180473, 26.869875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271778, 33.021873, 26.993450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361891, 0.064416, -0.929992,
		0.348841, 0.915772, 0.199177,
		0.864491, -0.396499, 0.308939,
		38.531124, 32.902924, 27.086132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381039, 33.627987, 26.529148>,  <37.925983, 33.180473, 26.869875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381039, 33.627987, 26.529148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617638, 33.335682, 26.665451>,  <38.759598, 33.160297, 26.747232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.617638, 33.335682, 26.665451>,  <38.381039, 33.627987, 26.529148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617638, 33.335682, 26.665451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454884, -0.046509, -0.889336,
		0.665745, 0.681041, 0.304904,
		0.591493, -0.730767, 0.340758,
		38.795086, 33.116451, 26.767679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111458, 33.907047, 26.425369>,  <38.381039, 33.627987, 26.529148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111458, 33.907047, 26.425369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072399, 33.508976, 26.428955>,  <39.048962, 33.270134, 26.431107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072399, 33.508976, 26.428955>,  <39.111458, 33.907047, 26.425369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072399, 33.508976, 26.428955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450232, -0.052208, -0.891384,
		0.887556, -0.083008, 0.453160,
		-0.097650, -0.995180, 0.008965,
		39.043102, 33.210423, 26.431644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752762, 33.658783, 26.232449>,  <39.111458, 33.907047, 26.425369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752762, 33.658783, 26.232449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496506, 33.358509, 26.167892>,  <39.342751, 33.178345, 26.129158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496506, 33.358509, 26.167892>,  <39.752762, 33.658783, 26.232449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496506, 33.358509, 26.167892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369912, -0.117547, -0.921601,
		0.672865, -0.650114, 0.352994,
		-0.640639, -0.750689, -0.161392,
		39.304314, 33.133301, 26.119474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159832, 33.359783, 25.792154>,  <39.752762, 33.658783, 26.232449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159832, 33.359783, 25.792154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797348, 33.192699, 25.765923>,  <39.579857, 33.092449, 25.750183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797348, 33.192699, 25.765923>,  <40.159832, 33.359783, 25.792154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797348, 33.192699, 25.765923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093009, -0.045622, -0.994619,
		0.412474, -0.907432, 0.080194,
		-0.906208, -0.417714, -0.065581,
		39.525486, 33.067387, 25.746248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297028, 32.766781, 25.484610>,  <40.159832, 33.359783, 25.792154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297028, 32.766781, 25.484610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913727, 32.858669, 25.416515>,  <39.683746, 32.913803, 25.375658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913727, 32.858669, 25.416515>,  <40.297028, 32.766781, 25.484610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913727, 32.858669, 25.416515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150709, -0.100160, -0.983491,
		-0.242979, -0.968089, 0.061357,
		-0.958252, 0.229721, -0.170236,
		39.626251, 32.927586, 25.365444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090088, 32.349667, 24.856163>,  <40.297028, 32.766781, 25.484610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090088, 32.349667, 24.856163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813782, 32.638081, 24.877913>,  <39.647999, 32.811131, 24.890963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813782, 32.638081, 24.877913>,  <40.090088, 32.349667, 24.856163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813782, 32.638081, 24.877913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052062, 0.025411, -0.998320,
		-0.721205, -0.692433, 0.019986,
		-0.690762, 0.721035, 0.054376,
		39.606552, 32.854389, 24.894226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417179, 32.117157, 24.616312>,  <40.090088, 32.349667, 24.856163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417179, 32.117157, 24.616312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404560, 32.514320, 24.570480>,  <39.396988, 32.752621, 24.542980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404560, 32.514320, 24.570480>,  <39.417179, 32.117157, 24.616312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404560, 32.514320, 24.570480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139433, -0.117889, -0.983189,
		-0.989729, -0.015039, 0.142163,
		-0.031546, 0.992913, -0.114581,
		39.395096, 32.812195, 24.536106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146011, 32.146122, 23.899200>,  <39.417179, 32.117157, 24.616312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146011, 32.146122, 23.899200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252014, 32.518143, 24.001007>,  <39.315617, 32.741356, 24.062090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.252014, 32.518143, 24.001007>,  <39.146011, 32.146122, 23.899200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252014, 32.518143, 24.001007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023694, 0.270153, -0.962526,
		-0.963956, 0.249042, 0.093629,
		0.265003, 0.930051, 0.254515,
		39.331516, 32.797157, 24.077362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712124, 32.628700, 23.519535>,  <39.146011, 32.146122, 23.899200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712124, 32.628700, 23.519535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050766, 32.811665, 23.628378>,  <39.253952, 32.921444, 23.693684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050766, 32.811665, 23.628378>,  <38.712124, 32.628700, 23.519535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050766, 32.811665, 23.628378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251225, 0.107275, -0.961966,
		-0.469200, 0.882763, -0.024093,
		0.846604, 0.457407, 0.272105,
		39.304749, 32.948887, 23.710009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827435, 33.341511, 23.183538>,  <38.712124, 32.628700, 23.519535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827435, 33.341511, 23.183538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184505, 33.186489, 23.275566>,  <39.398746, 33.093475, 23.330782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184505, 33.186489, 23.275566>,  <38.827435, 33.341511, 23.183538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184505, 33.186489, 23.275566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332932, 0.222965, -0.916211,
		0.303782, 0.894478, 0.328064,
		0.892677, -0.387552, 0.230067,
		39.452309, 33.070225, 23.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321564, 33.980492, 23.276041>,  <38.827435, 33.341511, 23.183538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321564, 33.980492, 23.276041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527206, 33.651161, 23.179850>,  <39.650593, 33.453564, 23.122135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527206, 33.651161, 23.179850>,  <39.321564, 33.980492, 23.276041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527206, 33.651161, 23.179850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451057, 0.497981, -0.740650,
		0.729552, 0.272300, 0.627381,
		0.514103, -0.823327, -0.240480,
		39.681438, 33.404163, 23.107706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962025, 34.290852, 23.255066>,  <39.321564, 33.980492, 23.276041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962025, 34.290852, 23.255066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960567, 33.939968, 23.063030>,  <39.959694, 33.729439, 22.947809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960567, 33.939968, 23.063030>,  <39.962025, 34.290852, 23.255066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960567, 33.939968, 23.063030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311363, 0.455234, -0.834155,
		0.950284, -0.152521, 0.271473,
		-0.003642, -0.877211, -0.480091,
		39.959476, 33.676804, 22.919003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668434, 34.209751, 22.929810>,  <39.962025, 34.290852, 23.255066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668434, 34.209751, 22.929810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438656, 33.952122, 22.727749>,  <40.300789, 33.797543, 22.606512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438656, 33.952122, 22.727749>,  <40.668434, 34.209751, 22.929810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438656, 33.952122, 22.727749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607725, 0.077830, -0.790325,
		0.548343, -0.760995, 0.346710,
		-0.574449, -0.644073, -0.505153,
		40.266323, 33.758900, 22.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405918, 33.918922, 23.095261>,  <40.668434, 34.209751, 22.929810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405918, 33.918922, 23.095261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791492, 33.988121, 23.176151>,  <42.022839, 34.029640, 23.224686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791492, 33.988121, 23.176151>,  <41.405918, 33.918922, 23.095261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791492, 33.988121, 23.176151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137982, -0.324874, 0.935638,
		0.227564, -0.929800, -0.289288,
		0.963938, 0.173001, 0.202225,
		42.080673, 34.040020, 23.236818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611809, 33.371029, 23.579063>,  <41.405918, 33.918922, 23.095261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611809, 33.371029, 23.579063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.862041, 33.678490, 23.632463>,  <42.012180, 33.862965, 23.664503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.862041, 33.678490, 23.632463>,  <41.611809, 33.371029, 23.579063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862041, 33.678490, 23.632463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172971, -0.030207, 0.984464,
		0.760743, -0.638953, 0.114058,
		0.625580, 0.768653, 0.133500,
		42.049717, 33.909084, 23.672514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953083, 33.196259, 24.091085>,  <41.611809, 33.371029, 23.579063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953083, 33.196259, 24.091085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.011005, 33.591949, 24.099714>,  <42.045761, 33.829365, 24.104891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.011005, 33.591949, 24.099714>,  <41.953083, 33.196259, 24.091085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011005, 33.591949, 24.099714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086535, -0.009056, 0.996208,
		0.985668, -0.146126, 0.084291,
		0.144809, 0.989225, 0.021571,
		42.054447, 33.888718, 24.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350246, 33.267838, 24.617901>,  <41.953083, 33.196259, 24.091085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350246, 33.267838, 24.617901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.208225, 33.637653, 24.562531>,  <42.123013, 33.859543, 24.529308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.208225, 33.637653, 24.562531>,  <42.350246, 33.267838, 24.617901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208225, 33.637653, 24.562531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183089, 0.076434, 0.980120,
		0.916743, 0.373335, 0.142136,
		-0.355049, 0.924542, -0.138424,
		42.101711, 33.915016, 24.521004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658752, 33.645542, 25.083324>,  <42.350246, 33.267838, 24.617901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658752, 33.645542, 25.083324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341606, 33.872013, 24.993172>,  <42.151318, 34.007896, 24.939079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341606, 33.872013, 24.993172>,  <42.658752, 33.645542, 25.083324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341606, 33.872013, 24.993172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157303, 0.167161, 0.973300,
		0.588738, 0.807154, -0.043475,
		-0.792870, 0.566180, -0.225382,
		42.103745, 34.041866, 24.925556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771088, 34.240158, 25.554688>,  <42.658752, 33.645542, 25.083324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771088, 34.240158, 25.554688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.390694, 34.247452, 25.431211>,  <42.162457, 34.251827, 25.357126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.390694, 34.247452, 25.431211>,  <42.771088, 34.240158, 25.554688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390694, 34.247452, 25.431211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300582, 0.179921, 0.936632,
		0.072617, 0.983512, -0.165622,
		-0.950988, 0.018232, -0.308691,
		42.105396, 34.252922, 25.338604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546394, 34.763268, 25.898857>,  <42.771088, 34.240158, 25.554688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546394, 34.763268, 25.898857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.234375, 34.532349, 25.802322>,  <42.047161, 34.393795, 25.744402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.234375, 34.532349, 25.802322>,  <42.546394, 34.763268, 25.898857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234375, 34.532349, 25.802322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385342, 0.139336, 0.912194,
		-0.492984, 0.804555, -0.331147,
		-0.780050, -0.577302, -0.241338,
		42.000359, 34.359158, 25.729921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015953, 35.077194, 25.971989>,  <42.546394, 34.763268, 25.898857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015953, 35.077194, 25.971989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.876129, 34.704796, 26.014027>,  <41.792233, 34.481358, 26.039249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.876129, 34.704796, 26.014027>,  <42.015953, 35.077194, 25.971989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876129, 34.704796, 26.014027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326283, 0.226120, 0.917828,
		-0.878263, 0.286547, -0.382813,
		-0.349563, -0.931000, 0.105097,
		41.771259, 34.425495, 26.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347683, 35.179096, 26.182154>,  <42.015953, 35.077194, 25.971989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347683, 35.179096, 26.182154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417820, 34.795963, 26.273203>,  <41.459904, 34.566082, 26.327831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417820, 34.795963, 26.273203>,  <41.347683, 35.179096, 26.182154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417820, 34.795963, 26.273203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404039, 0.140825, 0.903837,
		-0.897779, -0.250451, -0.362308,
		0.175345, -0.957832, 0.227622,
		41.470425, 34.508614, 26.341490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802200, 35.067093, 26.428183>,  <41.347683, 35.179096, 26.182154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802200, 35.067093, 26.428183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.028435, 34.766552, 26.564175>,  <41.164173, 34.586227, 26.645769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.028435, 34.766552, 26.564175>,  <40.802200, 35.067093, 26.428183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028435, 34.766552, 26.564175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452059, 0.062338, 0.889807,
		-0.689752, -0.656950, -0.304398,
		0.565583, -0.751352, 0.339978,
		41.198109, 34.541145, 26.666168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338097, 34.651707, 26.727234>,  <40.802200, 35.067093, 26.428183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338097, 34.651707, 26.727234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.692127, 34.554119, 26.885784>,  <40.904545, 34.495567, 26.980915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.692127, 34.554119, 26.885784>,  <40.338097, 34.651707, 26.727234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692127, 34.554119, 26.885784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393084, 0.064221, 0.917257,
		-0.249239, -0.967654, -0.039060,
		0.885079, -0.243970, 0.396375,
		40.957653, 34.480930, 27.004696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194267, 34.159946, 27.365694>,  <40.338097, 34.651707, 26.727234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194267, 34.159946, 27.365694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561569, 34.307484, 27.423323>,  <40.781952, 34.396008, 27.457901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.561569, 34.307484, 27.423323>,  <40.194267, 34.159946, 27.365694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561569, 34.307484, 27.423323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129955, -0.062982, 0.989518,
		0.374052, -0.927355, -0.009900,
		0.918257, 0.368845, 0.144073,
		40.837048, 34.418137, 27.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405556, 33.819870, 27.895910>,  <40.194267, 34.159946, 27.365694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405556, 33.819870, 27.895910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612446, 34.162178, 27.891253>,  <40.736580, 34.367561, 27.888458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612446, 34.162178, 27.891253>,  <40.405556, 33.819870, 27.895910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612446, 34.162178, 27.891253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160198, 0.110172, 0.980917,
		0.840721, -0.505493, 0.194076,
		0.517228, 0.855768, -0.011645,
		40.767612, 34.418907, 27.887758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856186, 33.748089, 28.554411>,  <40.405556, 33.819870, 27.895910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856186, 33.748089, 28.554411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851143, 34.126987, 28.426310>,  <40.848118, 34.354328, 28.349449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851143, 34.126987, 28.426310>,  <40.856186, 33.748089, 28.554411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851143, 34.126987, 28.426310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102152, 0.317381, 0.942780,
		0.994689, 0.044596, 0.092763,
		-0.012603, 0.947249, -0.320251,
		40.847363, 34.411163, 28.330235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.884205, 37.895687, 23.847265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.537758, 37.930756, 23.650431>,  <43.329887, 37.951797, 23.532330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.537758, 37.930756, 23.650431>,  <43.884205, 37.895687, 23.847265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537758, 37.930756, 23.650431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480672, -0.123893, -0.868104,
		-0.137089, -0.988413, 0.065157,
		-0.866118, 0.087689, -0.492088,
		43.277920, 37.957054, 23.502806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848934, 37.273254, 23.551638>,  <43.884205, 37.895687, 23.847265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848934, 37.273254, 23.551638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.627941, 37.535492, 23.345741>,  <43.495346, 37.692833, 23.222202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.627941, 37.535492, 23.345741>,  <43.848934, 37.273254, 23.551638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627941, 37.535492, 23.345741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498477, -0.235072, -0.834423,
		-0.668044, -0.717592, -0.196925,
		-0.552483, 0.655594, -0.514742,
		43.462196, 37.732170, 23.191319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588184, 36.845562, 23.083120>,  <43.848934, 37.273254, 23.551638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588184, 36.845562, 23.083120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.542953, 37.220711, 22.951902>,  <43.515816, 37.445801, 22.873171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.542953, 37.220711, 22.951902>,  <43.588184, 36.845562, 23.083120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542953, 37.220711, 22.951902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325909, -0.276886, -0.903945,
		-0.938615, -0.209126, -0.274352,
		-0.113074, 0.937870, -0.328045,
		43.509029, 37.502071, 22.853489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187489, 36.840019, 22.467157>,  <43.588184, 36.845562, 23.083120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187489, 36.840019, 22.467157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.379128, 37.190659, 22.449078>,  <43.494110, 37.401043, 22.438231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.379128, 37.190659, 22.449078>,  <43.187489, 36.840019, 22.467157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379128, 37.190659, 22.449078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332446, -0.228872, -0.914930,
		-0.812367, 0.423319, -0.401074,
		0.479102, 0.876595, -0.045198,
		43.522858, 37.453636, 22.435518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142418, 37.008965, 21.765141>,  <43.187489, 36.840019, 22.467157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142418, 37.008965, 21.765141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428932, 37.249546, 21.906666>,  <43.600842, 37.393894, 21.991581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428932, 37.249546, 21.906666>,  <43.142418, 37.008965, 21.765141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428932, 37.249546, 21.906666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477708, -0.053058, -0.876915,
		-0.508648, 0.797146, -0.325322,
		0.716290, 0.601450, 0.353816,
		43.643818, 37.429981, 22.012810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214428, 37.459717, 21.340368>,  <43.142418, 37.008965, 21.765141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214428, 37.459717, 21.340368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573391, 37.515507, 21.507795>,  <43.788769, 37.548981, 21.608252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.573391, 37.515507, 21.507795>,  <43.214428, 37.459717, 21.340368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573391, 37.515507, 21.507795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424555, -0.014906, -0.905279,
		-0.120028, 0.990113, -0.072594,
		0.897411, 0.139479, 0.418568,
		43.842613, 37.557350, 21.633366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503716, 37.987991, 20.934294>,  <43.214428, 37.459717, 21.340368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503716, 37.987991, 20.934294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.806084, 37.834404, 21.146389>,  <43.987503, 37.742252, 21.273645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.806084, 37.834404, 21.146389>,  <43.503716, 37.987991, 20.934294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806084, 37.834404, 21.146389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591583, 0.053758, -0.804450,
		0.280377, 0.921781, 0.267785,
		0.755922, -0.383967, 0.530237,
		44.032860, 37.719215, 21.305460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029140, 38.542118, 20.879725>,  <43.503716, 37.987991, 20.934294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029140, 38.542118, 20.879725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.175797, 38.174404, 20.936989>,  <44.263790, 37.953777, 20.971348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.175797, 38.174404, 20.936989>,  <44.029140, 38.542118, 20.879725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175797, 38.174404, 20.936989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437640, 0.034623, -0.898483,
		0.821004, 0.392071, 0.415009,
		0.366638, -0.919283, 0.143161,
		44.285789, 37.898621, 20.979937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717590, 38.611469, 20.783792>,  <44.029140, 38.542118, 20.879725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717590, 38.611469, 20.783792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646103, 38.220211, 20.741276>,  <44.603210, 37.985458, 20.715767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646103, 38.220211, 20.741276>,  <44.717590, 38.611469, 20.783792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646103, 38.220211, 20.741276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527628, -0.004098, -0.849466,
		0.830463, -0.207898, 0.516827,
		-0.178721, -0.978142, -0.106290,
		44.592487, 37.926769, 20.709389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361595, 38.358131, 20.576782>,  <44.717590, 38.611469, 20.783792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361595, 38.358131, 20.576782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.087547, 38.071815, 20.522741>,  <44.923119, 37.900024, 20.490316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.087547, 38.071815, 20.522741>,  <45.361595, 38.358131, 20.576782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087547, 38.071815, 20.522741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364368, -0.176156, -0.914442,
		0.630750, -0.675731, 0.381499,
		-0.685120, -0.715791, -0.135104,
		44.882011, 37.857079, 20.482210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753235, 37.777424, 20.378210>,  <45.361595, 38.358131, 20.576782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753235, 37.777424, 20.378210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.376339, 37.748581, 20.247377>,  <45.150200, 37.731277, 20.168879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.376339, 37.748581, 20.247377>,  <45.753235, 37.777424, 20.378210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376339, 37.748581, 20.247377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334932, -0.199954, -0.920782,
		0.000993, -0.977148, 0.212555,
		-0.942241, -0.072106, -0.327080,
		45.093666, 37.726948, 20.149254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739037, 37.185059, 19.940895>,  <45.753235, 37.777424, 20.378210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739037, 37.185059, 19.940895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.450825, 37.439266, 19.829935>,  <45.277897, 37.591789, 19.763359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.450825, 37.439266, 19.829935>,  <45.739037, 37.185059, 19.940895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450825, 37.439266, 19.829935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361279, 0.002596, -0.932454,
		-0.591868, -0.772084, -0.231469,
		-0.720534, 0.635515, -0.277401,
		45.234665, 37.629921, 19.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296783, 36.934303, 19.325417>,  <45.739037, 37.185059, 19.940895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296783, 36.934303, 19.325417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336433, 37.327980, 19.384111>,  <45.360222, 37.564186, 19.419329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336433, 37.327980, 19.384111>,  <45.296783, 36.934303, 19.325417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336433, 37.327980, 19.384111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450861, 0.087035, -0.888341,
		-0.887073, 0.154216, -0.435108,
		0.099126, 0.984196, 0.146736,
		45.366173, 37.623238, 19.428133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885784, 37.036842, 18.752710>,  <45.296783, 36.934303, 19.325417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885784, 37.036842, 18.752710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.111145, 37.351822, 18.852709>,  <45.246361, 37.540810, 18.912708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.111145, 37.351822, 18.852709>,  <44.885784, 37.036842, 18.752710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111145, 37.351822, 18.852709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166986, 0.187814, -0.967906,
		-0.809128, 0.587071, -0.025677,
		0.563407, 0.787448, 0.249998,
		45.280167, 37.588055, 18.927708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566898, 36.425919, 18.594780>,  <44.885784, 37.036842, 18.752710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566898, 36.425919, 18.594780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276611, 36.167011, 18.501507>,  <44.102440, 36.011669, 18.445543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276611, 36.167011, 18.501507>,  <44.566898, 36.425919, 18.594780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276611, 36.167011, 18.501507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082211, -0.254919, 0.963461,
		-0.683059, 0.718375, 0.131788,
		-0.725722, -0.647266, -0.233183,
		44.058895, 35.972832, 18.431551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887100, 36.557598, 18.988287>,  <44.566898, 36.425919, 18.594780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887100, 36.557598, 18.988287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942211, 36.170853, 18.902319>,  <43.975277, 35.938805, 18.850739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.942211, 36.170853, 18.902319>,  <43.887100, 36.557598, 18.988287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942211, 36.170853, 18.902319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374986, -0.251754, 0.892191,
		-0.916735, -0.042333, -0.397246,
		0.137777, -0.966865, -0.214918,
		43.983543, 35.880795, 18.837843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300568, 36.265472, 19.352295>,  <43.887100, 36.557598, 18.988287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300568, 36.265472, 19.352295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571217, 35.980892, 19.276382>,  <43.733608, 35.810143, 19.230835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571217, 35.980892, 19.276382>,  <43.300568, 36.265472, 19.352295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571217, 35.980892, 19.276382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229701, -0.448824, 0.863594,
		-0.699582, -0.540738, -0.467106,
		0.676626, -0.711449, -0.189781,
		43.774204, 35.767456, 19.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961796, 35.633385, 19.523817>,  <43.300568, 36.265472, 19.352295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961796, 35.633385, 19.523817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346684, 35.524715, 19.531141>,  <43.577614, 35.459515, 19.535536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346684, 35.524715, 19.531141>,  <42.961796, 35.633385, 19.523817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346684, 35.524715, 19.531141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198575, -0.654138, 0.729843,
		-0.186298, -0.705904, -0.683369,
		0.962217, -0.271668, 0.018311,
		43.635349, 35.443214, 19.536634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969662, 34.923820, 19.498878>,  <42.961796, 35.633385, 19.523817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969662, 34.923820, 19.498878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.330353, 35.031143, 19.634462>,  <43.546768, 35.095535, 19.715813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.330353, 35.031143, 19.634462>,  <42.969662, 34.923820, 19.498878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330353, 35.031143, 19.634462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084852, -0.658985, 0.747355,
		0.423888, -0.702675, -0.571461,
		0.901731, 0.268305, 0.338959,
		43.600872, 35.111633, 19.736151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348267, 34.241833, 19.624620>,  <42.969662, 34.923820, 19.498878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348267, 34.241833, 19.624620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.492886, 34.550426, 19.834034>,  <43.579659, 34.735584, 19.959682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.492886, 34.550426, 19.834034>,  <43.348267, 34.241833, 19.624620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492886, 34.550426, 19.834034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231406, -0.469697, 0.851960,
		0.903180, -0.429173, 0.008710,
		0.361547, 0.771489, 0.523535,
		43.601349, 34.781872, 19.991095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025249, 33.994949, 20.059076>,  <43.348267, 34.241833, 19.624620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025249, 33.994949, 20.059076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861591, 34.309452, 20.244291>,  <43.763397, 34.498154, 20.355419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.861591, 34.309452, 20.244291>,  <44.025249, 33.994949, 20.059076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861591, 34.309452, 20.244291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102075, -0.543705, 0.833046,
		0.906744, 0.293569, 0.302710,
		-0.409141, 0.786258, 0.463035,
		43.738850, 34.545330, 20.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197083, 34.005371, 20.781851>,  <44.025249, 33.994949, 20.059076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197083, 34.005371, 20.781851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.894722, 34.267204, 20.777111>,  <43.713306, 34.424305, 20.774267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.894722, 34.267204, 20.777111>,  <44.197083, 34.005371, 20.781851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894722, 34.267204, 20.777111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216075, -0.232353, 0.948327,
		0.618006, 0.719397, 0.317075,
		-0.755897, 0.654584, -0.011848,
		43.667953, 34.463581, 20.773556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174660, 34.193867, 21.416719>,  <44.197083, 34.005371, 20.781851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174660, 34.193867, 21.416719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.827366, 34.350269, 21.294550>,  <43.618988, 34.444111, 21.221249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.827366, 34.350269, 21.294550>,  <44.174660, 34.193867, 21.416719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827366, 34.350269, 21.294550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389093, -0.154629, 0.908128,
		0.307858, 0.907305, 0.286392,
		-0.868234, 0.391008, -0.305422,
		43.566895, 34.467571, 21.202923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001633, 34.613983, 21.915260>,  <44.174660, 34.193867, 21.416719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001633, 34.613983, 21.915260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659695, 34.546970, 21.718819>,  <43.454533, 34.506763, 21.600954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659695, 34.546970, 21.718819>,  <44.001633, 34.613983, 21.915260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659695, 34.546970, 21.718819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494402, -0.024352, 0.868892,
		-0.157526, 0.985566, -0.062011,
		-0.854840, -0.167532, -0.491102,
		43.403244, 34.496712, 21.571487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527508, 35.219067, 22.078970>,  <44.001633, 34.613983, 21.915260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527508, 35.219067, 22.078970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.316490, 34.892719, 21.984261>,  <43.189880, 34.696911, 21.927435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.316490, 34.892719, 21.984261>,  <43.527508, 35.219067, 22.078970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316490, 34.892719, 21.984261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493844, 0.067737, 0.866908,
		-0.691244, 0.574258, -0.438645,
		-0.527541, -0.815868, -0.236772,
		43.158226, 34.647961, 21.913229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878326, 35.284031, 22.390608>,  <43.527508, 35.219067, 22.078970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878326, 35.284031, 22.390608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838142, 34.891239, 22.326567>,  <42.814034, 34.655563, 22.288141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.838142, 34.891239, 22.326567>,  <42.878326, 35.284031, 22.390608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838142, 34.891239, 22.326567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590786, -0.070606, 0.803733,
		-0.800550, 0.175328, -0.573045,
		-0.100456, -0.981975, -0.160105,
		42.808006, 34.596645, 22.278536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216877, 35.072788, 22.572508>,  <42.878326, 35.284031, 22.390608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216877, 35.072788, 22.572508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.371979, 34.704567, 22.553631>,  <42.465042, 34.483635, 22.542305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.371979, 34.704567, 22.553631>,  <42.216877, 35.072788, 22.572508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371979, 34.704567, 22.553631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552807, -0.273211, 0.787249,
		-0.737598, -0.279173, -0.614827,
		0.387756, -0.920553, -0.047192,
		42.488304, 34.428402, 22.539473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631256, 34.614021, 22.652445>,  <42.216877, 35.072788, 22.572508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631256, 34.614021, 22.652445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.960430, 34.408657, 22.749756>,  <42.157936, 34.285439, 22.808142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.960430, 34.408657, 22.749756>,  <41.631256, 34.614021, 22.652445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960430, 34.408657, 22.749756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489402, -0.423139, 0.762521,
		-0.288544, -0.746569, -0.599481,
		0.822939, -0.513408, 0.243278,
		42.207310, 34.254635, 22.822739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018291, 34.111954, 22.309071>,  <41.631256, 34.614021, 22.652445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018291, 34.111954, 22.309071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.670563, 33.922962, 22.251051>,  <40.461926, 33.809566, 22.216238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.670563, 33.922962, 22.251051>,  <41.018291, 34.111954, 22.309071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670563, 33.922962, 22.251051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184913, -0.038754, -0.981990,
		0.458348, -0.880490, 0.121058,
		-0.869324, -0.472479, -0.145051,
		40.409767, 33.781219, 22.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221760, 33.448727, 21.905787>,  <41.018291, 34.111954, 22.309071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221760, 33.448727, 21.905787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.859840, 33.609543, 21.849648>,  <40.642689, 33.706032, 21.815964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.859840, 33.609543, 21.849648>,  <41.221760, 33.448727, 21.905787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859840, 33.609543, 21.849648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182665, 0.068711, -0.980771,
		-0.384663, -0.913041, -0.135608,
		-0.904803, 0.402037, -0.140350,
		40.588398, 33.730152, 21.807543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079109, 33.271614, 21.260193>,  <41.221760, 33.448727, 21.905787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079109, 33.271614, 21.260193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.804317, 33.560566, 21.291735>,  <40.639442, 33.733936, 21.310659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.804317, 33.560566, 21.291735>,  <41.079109, 33.271614, 21.260193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804317, 33.560566, 21.291735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137889, 0.236130, -0.961888,
		-0.713471, -0.649928, -0.261826,
		-0.686984, 0.722382, 0.078854,
		40.598221, 33.777279, 21.315392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662151, 33.254269, 20.670889>,  <41.079109, 33.271614, 21.260193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662151, 33.254269, 20.670889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 33.629223, 20.788330>,  <40.542248, 33.854195, 20.858795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 33.629223, 20.788330>,  <40.662151, 33.254269, 20.670889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587212, 33.629223, 20.788330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148464, 0.322485, -0.934859,
		-0.971008, -0.131559, -0.199587,
		-0.187353, 0.937388, 0.293604,
		40.531006, 33.910439, 20.876411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300186, 33.453880, 20.116199>,  <40.662151, 33.254269, 20.670889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300186, 33.453880, 20.116199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410957, 33.785473, 20.310558>,  <40.477421, 33.984428, 20.427174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410957, 33.785473, 20.310558>,  <40.300186, 33.453880, 20.116199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410957, 33.785473, 20.310558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228311, 0.434426, -0.871291,
		-0.933373, 0.352220, -0.068961,
		0.276928, 0.828984, 0.485897,
		40.494034, 34.034168, 20.456327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821232, 33.941643, 20.097092>,  <40.300186, 33.453880, 20.116199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821232, 33.941643, 20.097092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190041, 34.095051, 20.118237>,  <40.411324, 34.187096, 20.130924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190041, 34.095051, 20.118237>,  <39.821232, 33.941643, 20.097092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190041, 34.095051, 20.118237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125267, 0.424736, -0.896609,
		-0.366322, 0.820067, 0.439656,
		0.922017, 0.383522, 0.052863,
		40.466644, 34.210106, 20.134096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776634, 34.410343, 19.544531>,  <39.821232, 33.941643, 20.097092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776634, 34.410343, 19.544531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.168304, 34.427685, 19.623857>,  <40.403309, 34.438091, 19.671453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.168304, 34.427685, 19.623857>,  <39.776634, 34.410343, 19.544531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168304, 34.427685, 19.623857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157789, 0.452084, -0.877908,
		-0.127716, 0.890921, 0.435830,
		0.979179, 0.043354, 0.198316,
		40.462059, 34.440689, 19.683352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381519, 35.079811, 19.561392>,  <39.776634, 34.410343, 19.544531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381519, 35.079811, 19.561392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071568, 35.315712, 19.470396>,  <38.885597, 35.457253, 19.415798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071568, 35.315712, 19.470396>,  <39.381519, 35.079811, 19.561392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071568, 35.315712, 19.470396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393894, -0.169039, 0.903478,
		0.494375, 0.789694, 0.363285,
		-0.774881, 0.589753, -0.227487,
		38.839104, 35.492638, 19.402149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282021, 35.764610, 20.088943>,  <39.381519, 35.079811, 19.561392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282021, 35.764610, 20.088943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926647, 35.696373, 19.918491>,  <38.713425, 35.655430, 19.816219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926647, 35.696373, 19.918491>,  <39.282021, 35.764610, 20.088943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926647, 35.696373, 19.918491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388330, -0.215622, 0.895939,
		-0.244729, 0.961459, 0.125317,
		-0.888430, -0.170598, -0.426132,
		38.660118, 35.645195, 19.790651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780056, 36.142200, 20.467422>,  <39.282021, 35.764610, 20.088943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780056, 36.142200, 20.467422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599018, 35.825825, 20.302706>,  <38.490395, 35.635998, 20.203875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599018, 35.825825, 20.302706>,  <38.780056, 36.142200, 20.467422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599018, 35.825825, 20.302706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614738, -0.057773, 0.786613,
		-0.645954, 0.609161, -0.460073,
		-0.452594, -0.790940, -0.411793,
		38.463242, 35.588543, 20.179169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111824, 36.321838, 20.562292>,  <38.780056, 36.142200, 20.467422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111824, 36.321838, 20.562292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100483, 35.932251, 20.472324>,  <38.093678, 35.698498, 20.418344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100483, 35.932251, 20.472324>,  <38.111824, 36.321838, 20.562292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100483, 35.932251, 20.472324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520840, -0.177654, 0.834964,
		-0.853183, 0.140823, -0.502242,
		-0.028357, -0.973965, -0.224918,
		38.091976, 35.640060, 20.404848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449078, 36.173660, 20.612228>,  <38.111824, 36.321838, 20.562292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449078, 36.173660, 20.612228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653133, 35.837517, 20.685490>,  <37.775566, 35.635830, 20.729446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.653133, 35.837517, 20.685490>,  <37.449078, 36.173660, 20.612228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653133, 35.837517, 20.685490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579071, -0.178131, 0.795579,
		-0.635950, -0.511917, -0.577502,
		0.510141, -0.840363, 0.183154,
		37.806175, 35.585407, 20.740437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922672, 35.783066, 20.767664>,  <37.449078, 36.173660, 20.612228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922672, 35.783066, 20.767664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246811, 35.589481, 20.899801>,  <37.441292, 35.473331, 20.979084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246811, 35.589481, 20.899801>,  <36.922672, 35.783066, 20.767664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246811, 35.589481, 20.899801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549984, -0.433725, 0.713723,
		-0.202135, -0.760044, -0.617636,
		0.810345, -0.483958, 0.330341,
		37.489914, 35.444294, 20.998903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612137, 35.139374, 21.060896>,  <36.922672, 35.783066, 20.767664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612137, 35.139374, 21.060896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983662, 35.173923, 21.205034>,  <37.206577, 35.194653, 21.291517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983662, 35.173923, 21.205034>,  <36.612137, 35.139374, 21.060896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983662, 35.173923, 21.205034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287025, -0.447346, 0.847052,
		0.234367, -0.890180, -0.390707,
		0.928810, 0.086379, 0.360348,
		37.262306, 35.199837, 21.313139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.654255, 37.895100, 18.762026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.927132, 37.996250, 19.036448>,  <43.090858, 38.056942, 19.201101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.927132, 37.996250, 19.036448>,  <42.654255, 37.895100, 18.762026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927132, 37.996250, 19.036448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728468, 0.154381, 0.667458,
		0.062871, -0.955102, 0.289530,
		0.682189, 0.252877, 0.686055,
		43.131786, 38.072113, 19.242264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413490, 37.615730, 19.358988>,  <42.654255, 37.895100, 18.762026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413490, 37.615730, 19.358988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.664665, 37.900661, 19.484390>,  <42.815369, 38.071621, 19.559631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.664665, 37.900661, 19.484390>,  <42.413490, 37.615730, 19.358988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664665, 37.900661, 19.484390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684334, 0.313522, 0.658325,
		0.370653, -0.627927, 0.684342,
		0.627936, 0.712328, 0.313504,
		42.853046, 38.114361, 19.578442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480453, 37.537281, 20.084339>,  <42.413490, 37.615730, 19.358988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480453, 37.537281, 20.084339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582771, 37.919289, 20.024336>,  <42.644161, 38.148495, 19.988335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582771, 37.919289, 20.024336>,  <42.480453, 37.537281, 20.084339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582771, 37.919289, 20.024336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619431, 0.281045, 0.733020,
		0.742209, -0.094583, 0.663460,
		0.255793, 0.955023, -0.150006,
		42.659508, 38.205795, 19.979334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331638, 37.856709, 20.765718>,  <42.480453, 37.537281, 20.084339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331638, 37.856709, 20.765718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.361645, 38.160065, 20.506729>,  <42.379650, 38.342079, 20.351336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.361645, 38.160065, 20.506729>,  <42.331638, 37.856709, 20.765718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361645, 38.160065, 20.506729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669692, 0.519402, 0.530786,
		0.738840, 0.393791, 0.546849,
		0.075015, 0.758387, -0.647474,
		42.384148, 38.387581, 20.312487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639473, 38.528896, 21.166281>,  <42.331638, 37.856709, 20.765718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639473, 38.528896, 21.166281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.446388, 38.668507, 20.844992>,  <42.330536, 38.752274, 20.652218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.446388, 38.668507, 20.844992>,  <42.639473, 38.528896, 21.166281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446388, 38.668507, 20.844992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740001, 0.327965, 0.587229,
		0.468389, 0.877848, 0.099969,
		-0.482711, 0.349029, -0.803224,
		42.301575, 38.773216, 20.604025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238712, 39.044289, 21.441811>,  <42.639473, 38.528896, 21.166281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238712, 39.044289, 21.441811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.068111, 39.000332, 21.082695>,  <41.965752, 38.973957, 20.867226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.068111, 39.000332, 21.082695>,  <42.238712, 39.044289, 21.441811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068111, 39.000332, 21.082695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894304, 0.199762, 0.400393,
		0.135344, 0.973663, -0.183477,
		-0.426499, -0.109893, -0.897787,
		41.940163, 38.967365, 20.813358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766602, 39.636429, 21.355413>,  <42.238712, 39.044289, 21.441811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766602, 39.636429, 21.355413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.640667, 39.355946, 21.099545>,  <41.565105, 39.187656, 20.946022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.640667, 39.355946, 21.099545>,  <41.766602, 39.636429, 21.355413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640667, 39.355946, 21.099545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947034, 0.187156, 0.260960,
		-0.063269, 0.687953, -0.722992,
		-0.314841, -0.701209, -0.639673,
		41.546215, 39.145584, 20.907642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159718, 39.943050, 21.057873>,  <41.766602, 39.636429, 21.355413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159718, 39.943050, 21.057873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122326, 39.547241, 21.013878>,  <41.099892, 39.309753, 20.987482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.122326, 39.547241, 21.013878>,  <41.159718, 39.943050, 21.057873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122326, 39.547241, 21.013878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836675, 0.018198, 0.547397,
		-0.539663, 0.143194, -0.829614,
		-0.093482, -0.989527, -0.109986,
		41.094280, 39.250381, 20.980883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479515, 39.826138, 20.841396>,  <41.159718, 39.943050, 21.057873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479515, 39.826138, 20.841396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595264, 39.471943, 20.986822>,  <40.664715, 39.259426, 21.074078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595264, 39.471943, 20.986822>,  <40.479515, 39.826138, 20.841396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595264, 39.471943, 20.986822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791483, -0.007730, 0.611142,
		-0.538347, -0.464602, -0.703084,
		0.289373, -0.885486, 0.363563,
		40.682076, 39.206299, 21.095892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899040, 39.463150, 20.912373>,  <40.479515, 39.826138, 20.841396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899040, 39.463150, 20.912373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.166523, 39.313885, 21.169617>,  <40.327011, 39.224327, 21.323963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.166523, 39.313885, 21.169617>,  <39.899040, 39.463150, 20.912373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166523, 39.313885, 21.169617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659925, 0.100608, 0.744565,
		-0.342544, -0.922296, -0.178981,
		0.668702, -0.373161, 0.643109,
		40.367134, 39.201935, 21.362549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475624, 38.961098, 21.230703>,  <39.899040, 39.463150, 20.912373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475624, 38.961098, 21.230703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791119, 39.021378, 21.469091>,  <39.980415, 39.057545, 21.612125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791119, 39.021378, 21.469091>,  <39.475624, 38.961098, 21.230703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791119, 39.021378, 21.469091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543027, -0.283585, 0.790380,
		0.288123, -0.947031, -0.141838,
		0.788737, 0.150705, 0.595971,
		40.027740, 39.066589, 21.647882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515942, 38.353725, 21.670357>,  <39.475624, 38.961098, 21.230703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515942, 38.353725, 21.670357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742462, 38.632370, 21.846552>,  <39.878376, 38.799557, 21.952269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742462, 38.632370, 21.846552>,  <39.515942, 38.353725, 21.670357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742462, 38.632370, 21.846552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398613, -0.236297, 0.886156,
		0.721395, -0.677415, 0.143865,
		0.566301, 0.696615, 0.440490,
		39.912354, 38.841354, 21.978699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237198, 37.643833, 21.448854>,  <39.515942, 38.353725, 21.670357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237198, 37.643833, 21.448854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861240, 37.752922, 21.366663>,  <38.635666, 37.818375, 21.317348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861240, 37.752922, 21.366663>,  <39.237198, 37.643833, 21.448854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861240, 37.752922, 21.366663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230064, 0.061105, -0.971255,
		-0.252332, -0.960149, -0.120177,
		-0.939893, 0.272727, -0.205477,
		38.579273, 37.834740, 21.305019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054501, 37.334389, 20.923229>,  <39.237198, 37.643833, 21.448854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054501, 37.334389, 20.923229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797607, 37.640907, 20.916040>,  <38.643471, 37.824818, 20.911726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797607, 37.640907, 20.916040>,  <39.054501, 37.334389, 20.923229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797607, 37.640907, 20.916040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246156, 0.183984, -0.951608,
		-0.725908, -0.615580, -0.306789,
		-0.642234, 0.766297, -0.017973,
		38.604939, 37.870796, 20.910648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715820, 37.323608, 20.235750>,  <39.054501, 37.334389, 20.923229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715820, 37.323608, 20.235750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622158, 37.690994, 20.363245>,  <38.565960, 37.911427, 20.439741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622158, 37.690994, 20.363245>,  <38.715820, 37.323608, 20.235750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622158, 37.690994, 20.363245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119711, 0.352593, -0.928088,
		-0.964802, -0.179157, -0.192511,
		-0.234151, 0.918467, 0.318736,
		38.551914, 37.966534, 20.458866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250790, 37.501511, 19.733051>,  <38.715820, 37.323608, 20.235750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250790, 37.501511, 19.733051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389458, 37.824108, 19.924629>,  <38.472656, 38.017666, 20.039576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389458, 37.824108, 19.924629>,  <38.250790, 37.501511, 19.733051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389458, 37.824108, 19.924629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054297, 0.527005, -0.848126,
		-0.936416, 0.268011, 0.226485,
		0.346666, 0.806496, 0.478944,
		38.493458, 38.066055, 20.068312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978035, 38.091957, 19.520214>,  <38.250790, 37.501511, 19.733051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978035, 38.091957, 19.520214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300705, 38.291782, 19.646526>,  <38.494305, 38.411678, 19.722313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300705, 38.291782, 19.646526>,  <37.978035, 38.091957, 19.520214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300705, 38.291782, 19.646526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000127, 0.534167, -0.845379,
		-0.590999, 0.681984, 0.430834,
		0.806672, 0.499564, 0.315779,
		38.542706, 38.441650, 19.741261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919388, 38.764057, 19.128431>,  <37.978035, 38.091957, 19.520214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919388, 38.764057, 19.128431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288815, 38.715611, 19.273958>,  <38.510471, 38.686543, 19.361275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288815, 38.715611, 19.273958>,  <37.919388, 38.764057, 19.128431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288815, 38.715611, 19.273958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382331, 0.218527, -0.897813,
		0.029241, 0.968285, 0.248132,
		0.923563, -0.121121, 0.363815,
		38.565884, 38.679276, 19.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274956, 39.212273, 18.698988>,  <37.919388, 38.764057, 19.128431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274956, 39.212273, 18.698988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570877, 39.001675, 18.866556>,  <38.748428, 38.875317, 18.967098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570877, 39.001675, 18.866556>,  <38.274956, 39.212273, 18.698988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570877, 39.001675, 18.866556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520096, 0.052500, -0.852493,
		0.426840, 0.848556, 0.312668,
		0.739803, -0.526495, 0.418921,
		38.792816, 38.843727, 18.992233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883499, 39.669006, 18.553543>,  <38.274956, 39.212273, 18.698988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883499, 39.669006, 18.553543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.974380, 39.285320, 18.620815>,  <39.028908, 39.055107, 18.661179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.974380, 39.285320, 18.620815>,  <38.883499, 39.669006, 18.553543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974380, 39.285320, 18.620815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591797, -0.001159, -0.806087,
		0.773405, 0.282675, 0.567397,
		0.227203, -0.959215, 0.168182,
		39.042542, 38.997555, 18.671270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599571, 39.694572, 18.539612>,  <38.883499, 39.669006, 18.553543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599571, 39.694572, 18.539612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.485672, 39.313435, 18.497635>,  <39.417332, 39.084751, 18.472448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.485672, 39.313435, 18.497635>,  <39.599571, 39.694572, 18.539612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485672, 39.313435, 18.497635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597676, -0.090879, -0.796570,
		0.749468, -0.289542, 0.595368,
		-0.284747, -0.952841, -0.104941,
		39.400249, 39.027584, 18.466152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201359, 39.420074, 18.365820>,  <39.599571, 39.694572, 18.539612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201359, 39.420074, 18.365820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901947, 39.174774, 18.264925>,  <39.722298, 39.027596, 18.204388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901947, 39.174774, 18.264925>,  <40.201359, 39.420074, 18.365820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901947, 39.174774, 18.264925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467970, -0.219054, -0.856165,
		0.469789, -0.758908, 0.450952,
		-0.748533, -0.613249, -0.252237,
		39.677387, 38.990799, 18.189255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574604, 38.872009, 18.083174>,  <40.201359, 39.420074, 18.365820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574604, 38.872009, 18.083174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.205090, 38.847191, 17.932032>,  <39.983383, 38.832298, 17.841347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.205090, 38.847191, 17.932032>,  <40.574604, 38.872009, 18.083174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205090, 38.847191, 17.932032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382891, -0.138153, -0.913405,
		0.004473, -0.988465, 0.151381,
		-0.923783, -0.062048, -0.377857,
		39.927956, 38.828575, 17.818674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543259, 38.380001, 17.502243>,  <40.574604, 38.872009, 18.083174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543259, 38.380001, 17.502243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220333, 38.595581, 17.406097>,  <40.026577, 38.724930, 17.348410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.220333, 38.595581, 17.406097>,  <40.543259, 38.380001, 17.502243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220333, 38.595581, 17.406097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300635, 0.025132, -0.953408,
		-0.507795, -0.841965, -0.182316,
		-0.807318, 0.538947, -0.240362,
		39.978138, 38.757263, 17.333988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521461, 38.108910, 16.894812>,  <40.543259, 38.380001, 17.502243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521461, 38.108910, 16.894812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295700, 38.439110, 16.894619>,  <40.160244, 38.637230, 16.894503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295700, 38.439110, 16.894619>,  <40.521461, 38.108910, 16.894812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295700, 38.439110, 16.894619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204185, 0.139036, -0.969009,
		-0.799849, -0.547009, -0.247026,
		-0.564402, 0.825500, -0.000483,
		40.126381, 38.686760, 16.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467434, 37.531700, 17.373367>,  <40.521461, 38.108910, 16.894812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467434, 37.531700, 17.373367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.297745, 37.277496, 17.115324>,  <40.195930, 37.124973, 16.960499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.297745, 37.277496, 17.115324>,  <40.467434, 37.531700, 17.373367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297745, 37.277496, 17.115324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600661, -0.335641, 0.725639,
		-0.677676, 0.695320, -0.239341,
		-0.424219, -0.635511, -0.645107,
		40.170479, 37.086842, 16.921791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747902, 37.679203, 17.445269>,  <40.467434, 37.531700, 17.373367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747902, 37.679203, 17.445269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817390, 37.306015, 17.319170>,  <39.859085, 37.082100, 17.243511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817390, 37.306015, 17.319170>,  <39.747902, 37.679203, 17.445269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817390, 37.306015, 17.319170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725035, -0.337802, 0.600178,
		-0.666440, 0.124297, -0.735124,
		0.173726, -0.932974, -0.315244,
		39.869507, 37.026123, 17.224596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088333, 37.430508, 17.429680>,  <39.747902, 37.679203, 17.445269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088333, 37.430508, 17.429680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314896, 37.101654, 17.406773>,  <39.450832, 36.904343, 17.393028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314896, 37.101654, 17.406773>,  <39.088333, 37.430508, 17.429680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314896, 37.101654, 17.406773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729751, -0.532618, 0.428697,
		-0.382949, -0.201025, -0.901631,
		0.566404, -0.822135, -0.057268,
		39.484818, 36.855015, 17.389591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593231, 36.821804, 17.342390>,  <39.088333, 37.430508, 17.429680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593231, 36.821804, 17.342390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939075, 36.666710, 17.470215>,  <39.146580, 36.573654, 17.546909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939075, 36.666710, 17.470215>,  <38.593231, 36.821804, 17.342390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939075, 36.666710, 17.470215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492075, -0.524848, 0.694548,
		-0.101577, -0.757759, -0.644580,
		0.864606, -0.387732, 0.319562,
		39.198456, 36.550392, 17.566084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369606, 36.152561, 17.552532>,  <38.593231, 36.821804, 17.342390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369606, 36.152561, 17.552532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714581, 36.218967, 17.743797>,  <38.921566, 36.258812, 17.858557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714581, 36.218967, 17.743797>,  <38.369606, 36.152561, 17.552532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714581, 36.218967, 17.743797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321489, -0.549990, 0.770815,
		0.390953, -0.818504, -0.420959,
		0.862439, 0.166019, 0.478160,
		38.973312, 36.268772, 17.887245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749088, 35.450455, 17.631224>,  <38.369606, 36.152561, 17.552532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749088, 35.450455, 17.631224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.845901, 35.699150, 17.929180>,  <38.903992, 35.848366, 18.107954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.845901, 35.699150, 17.929180>,  <38.749088, 35.450455, 17.631224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845901, 35.699150, 17.929180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198469, -0.719759, 0.665250,
		0.949752, -0.308852, -0.050813,
		0.242037, 0.621737, 0.744890,
		38.918514, 35.885670, 18.152647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913712, 34.951378, 18.183237>,  <38.749088, 35.450455, 17.631224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913712, 34.951378, 18.183237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892117, 35.308548, 18.362017>,  <38.879162, 35.522850, 18.469284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892117, 35.308548, 18.362017>,  <38.913712, 34.951378, 18.183237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892117, 35.308548, 18.362017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205412, -0.447957, 0.870138,
		0.977185, -0.044833, 0.207602,
		-0.053986, 0.892930, 0.446947,
		38.875919, 35.576427, 18.496101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310040, 34.936893, 18.868563>,  <38.913712, 34.951378, 18.183237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310040, 34.936893, 18.868563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058781, 35.245949, 18.905359>,  <38.908028, 35.431381, 18.927437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058781, 35.245949, 18.905359>,  <39.310040, 34.936893, 18.868563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058781, 35.245949, 18.905359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308113, -0.355551, 0.882411,
		0.714495, 0.525937, 0.461397,
		-0.628143, 0.772641, 0.091992,
		38.870338, 35.477741, 18.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975075, 34.914543, 19.047665>,  <39.310040, 34.936893, 18.868563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975075, 34.914543, 19.047665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322720, 34.761337, 19.172853>,  <40.531307, 34.669415, 19.247967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.322720, 34.761337, 19.172853>,  <39.975075, 34.914543, 19.047665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322720, 34.761337, 19.172853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440567, 0.311827, -0.841822,
		0.224839, 0.869519, 0.439755,
		0.869108, -0.383016, 0.312970,
		40.583450, 34.646431, 19.266745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530979, 35.429729, 18.915730>,  <39.975075, 34.914543, 19.047665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530979, 35.429729, 18.915730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.704117, 35.069443, 18.930470>,  <40.807999, 34.853271, 18.939314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.704117, 35.069443, 18.930470>,  <40.530979, 35.429729, 18.915730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704117, 35.069443, 18.930470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545689, 0.229256, -0.806018,
		0.717546, 0.368987, 0.590743,
		0.432842, -0.900716, 0.036850,
		40.833969, 34.799229, 18.941525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193069, 35.556622, 19.014400>,  <40.530979, 35.429729, 18.915730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193069, 35.556622, 19.014400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217102, 35.188217, 18.860451>,  <41.231522, 34.967175, 18.768082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217102, 35.188217, 18.860451>,  <41.193069, 35.556622, 19.014400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217102, 35.188217, 18.860451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671138, 0.322685, -0.667419,
		0.738894, -0.218200, 0.637515,
		0.060086, -0.921012, -0.384872,
		41.235126, 34.911915, 18.744989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878071, 35.439362, 18.877901>,  <41.193069, 35.556622, 19.014400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878071, 35.439362, 18.877901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691910, 35.182358, 18.634398>,  <41.580215, 35.028156, 18.488295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691910, 35.182358, 18.634398>,  <41.878071, 35.439362, 18.877901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691910, 35.182358, 18.634398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683428, 0.176188, -0.708438,
		0.562431, -0.745751, 0.357108,
		-0.465401, -0.642505, -0.608761,
		41.552288, 34.989605, 18.451769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444656, 35.011887, 18.643026>,  <41.878071, 35.439362, 18.877901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444656, 35.011887, 18.643026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.142479, 34.959106, 18.386311>,  <41.961174, 34.927437, 18.232281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.142479, 34.959106, 18.386311>,  <42.444656, 35.011887, 18.643026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142479, 34.959106, 18.386311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575773, 0.333799, -0.746367,
		0.312708, -0.933364, -0.176196,
		-0.755446, -0.131946, -0.641788,
		41.915848, 34.919521, 18.193773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789505, 34.669395, 18.081984>,  <42.444656, 35.011887, 18.643026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789505, 34.669395, 18.081984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447327, 34.830837, 17.952173>,  <42.242020, 34.927704, 17.874287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447327, 34.830837, 17.952173>,  <42.789505, 34.669395, 18.081984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447327, 34.830837, 17.952173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479678, 0.381229, -0.790300,
		-0.195252, -0.831725, -0.519722,
		-0.855445, 0.403607, -0.324524,
		42.190693, 34.951920, 17.854816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688080, 34.474369, 17.331322>,  <42.789505, 34.669395, 18.081984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688080, 34.474369, 17.331322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.479259, 34.813145, 17.371653>,  <42.353970, 35.016411, 17.395851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.479259, 34.813145, 17.371653>,  <42.688080, 34.474369, 17.331322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479259, 34.813145, 17.371653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426488, 0.361589, -0.829073,
		-0.738629, -0.389814, -0.549974,
		-0.522049, 0.846935, 0.100829,
		42.322643, 35.067226, 17.401901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307343, 34.559307, 16.676079>,  <42.688080, 34.474369, 17.331322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307343, 34.559307, 16.676079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.333282, 34.904804, 16.875975>,  <42.348846, 35.112103, 16.995913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.333282, 34.904804, 16.875975>,  <42.307343, 34.559307, 16.676079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333282, 34.904804, 16.875975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277173, 0.465496, -0.840529,
		-0.958629, 0.193025, -0.209217,
		0.064854, 0.863744, 0.499739,
		42.352737, 35.163929, 17.025896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183083, 35.021152, 16.120121>,  <42.307343, 34.559307, 16.676079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183083, 35.021152, 16.120121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.316322, 35.256920, 16.414503>,  <42.396267, 35.398380, 16.591131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.316322, 35.256920, 16.414503>,  <42.183083, 35.021152, 16.120121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316322, 35.256920, 16.414503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310571, 0.668387, -0.675873,
		-0.890275, 0.453700, 0.039584,
		0.333101, 0.589419, 0.735954,
		42.416252, 35.433746, 16.635290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.605110, 33.508343, 31.760471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795677, 33.852886, 31.689938>,  <36.910019, 34.059612, 31.647617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795677, 33.852886, 31.689938>,  <36.605110, 33.508343, 31.760471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795677, 33.852886, 31.689938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258456, -0.328901, -0.908309,
		-0.840374, 0.387158, -0.379317,
		0.476417, 0.861355, -0.176336,
		36.938602, 34.111294, 31.637037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279186, 33.934704, 31.162506>,  <36.605110, 33.508343, 31.760471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279186, 33.934704, 31.162506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672375, 33.985607, 31.215536>,  <36.908287, 34.016148, 31.247355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672375, 33.985607, 31.215536>,  <36.279186, 33.934704, 31.162506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672375, 33.985607, 31.215536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170388, -0.360928, -0.916896,
		-0.068831, 0.923871, -0.376464,
		0.982970, 0.127256, 0.132573,
		36.967266, 34.023785, 31.255308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634926, 34.432594, 30.640278>,  <36.279186, 33.934704, 31.162506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634926, 34.432594, 30.640278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879620, 34.143131, 30.768095>,  <37.026436, 33.969452, 30.844786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879620, 34.143131, 30.768095>,  <36.634926, 34.432594, 30.640278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879620, 34.143131, 30.768095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134686, -0.302765, -0.943501,
		0.779516, 0.620206, -0.087744,
		0.611731, -0.723656, 0.319543,
		37.063137, 33.926033, 30.863958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279194, 34.446926, 30.286659>,  <36.634926, 34.432594, 30.640278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279194, 34.446926, 30.286659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303696, 34.068726, 30.414577>,  <37.318398, 33.841805, 30.491327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303696, 34.068726, 30.414577>,  <37.279194, 34.446926, 30.286659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303696, 34.068726, 30.414577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369596, -0.276133, -0.887214,
		0.927171, 0.172542, 0.332540,
		0.061257, -0.945505, 0.319794,
		37.322071, 33.785072, 30.510515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870663, 34.212543, 30.051952>,  <37.279194, 34.446926, 30.286659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870663, 34.212543, 30.051952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717167, 33.853016, 30.136688>,  <37.625069, 33.637299, 30.187531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717167, 33.853016, 30.136688>,  <37.870663, 34.212543, 30.051952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717167, 33.853016, 30.136688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532477, -0.402795, -0.744462,
		0.754462, -0.172880, 0.633166,
		-0.383739, -0.898815, 0.211840,
		37.602047, 33.583370, 30.200239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466133, 33.805058, 30.001389>,  <37.870663, 34.212543, 30.051952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466133, 33.805058, 30.001389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.143051, 33.573162, 29.958473>,  <37.949203, 33.434025, 29.932724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.143051, 33.573162, 29.958473>,  <38.466133, 33.805058, 30.001389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143051, 33.573162, 29.958473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461886, -0.509098, -0.726279,
		0.366435, -0.636173, 0.678976,
		-0.807705, -0.579743, -0.107288,
		37.900742, 33.399239, 29.926287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836147, 33.190250, 29.685949>,  <38.466133, 33.805058, 30.001389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836147, 33.190250, 29.685949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448608, 33.175404, 29.587999>,  <38.216087, 33.166496, 29.529230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448608, 33.175404, 29.587999>,  <38.836147, 33.190250, 29.685949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448608, 33.175404, 29.587999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222704, -0.563189, -0.795752,
		-0.108373, -0.825494, 0.553909,
		-0.968844, -0.037120, -0.244875,
		38.157955, 33.164268, 29.514536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738827, 32.469521, 29.472328>,  <38.836147, 33.190250, 29.685949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738827, 32.469521, 29.472328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424976, 32.650467, 29.302748>,  <38.236668, 32.759033, 29.201000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424976, 32.650467, 29.302748>,  <38.738827, 32.469521, 29.472328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424976, 32.650467, 29.302748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240752, -0.407840, -0.880741,
		-0.571319, -0.793116, 0.211094,
		-0.784623, 0.452363, -0.423951,
		38.189590, 32.786175, 29.175562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406181, 32.020779, 29.025429>,  <38.738827, 32.469521, 29.472328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406181, 32.020779, 29.025429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.307281, 32.378353, 28.875898>,  <38.247940, 32.592899, 28.786180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.307281, 32.378353, 28.875898>,  <38.406181, 32.020779, 29.025429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307281, 32.378353, 28.875898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334642, -0.283283, -0.898757,
		-0.909330, -0.347315, -0.229107,
		-0.247250, 0.893936, -0.373825,
		38.233105, 32.646534, 28.763750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306744, 31.917858, 28.371162>,  <38.406181, 32.020779, 29.025429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306744, 31.917858, 28.371162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288647, 32.316658, 28.346045>,  <38.277790, 32.555939, 28.330973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288647, 32.316658, 28.346045>,  <38.306744, 31.917858, 28.371162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288647, 32.316658, 28.346045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423481, -0.037794, -0.905116,
		-0.904775, -0.067541, -0.420501,
		-0.045240, 0.997000, -0.062797,
		38.275074, 32.615757, 28.327206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012386, 32.029160, 27.681875>,  <38.306744, 31.917858, 28.371162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012386, 32.029160, 27.681875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177254, 32.373466, 27.801340>,  <38.276176, 32.580051, 27.873020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177254, 32.373466, 27.801340>,  <38.012386, 32.029160, 27.681875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177254, 32.373466, 27.801340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244291, 0.211393, -0.946380,
		-0.877745, 0.463031, -0.123147,
		0.412171, 0.860764, 0.298663,
		38.300903, 32.631695, 27.890940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723270, 32.647823, 27.375147>,  <38.012386, 32.029160, 27.681875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723270, 32.647823, 27.375147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107288, 32.717632, 27.462658>,  <38.337700, 32.759518, 27.515165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107288, 32.717632, 27.462658>,  <37.723270, 32.647823, 27.375147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107288, 32.717632, 27.462658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214830, 0.041440, -0.975772,
		-0.179361, 0.983781, 0.002291,
		0.960041, 0.174523, 0.218778,
		38.395302, 32.769989, 27.528292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204819, 33.083466, 27.259611>,  <37.723270, 32.647823, 27.375147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204819, 33.083466, 27.259611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.862625, 33.123966, 27.056479>,  <36.657307, 33.148266, 26.934599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.862625, 33.123966, 27.056479>,  <37.204819, 33.083466, 27.259611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862625, 33.123966, 27.056479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516923, -0.224864, 0.825970,
		-0.030564, 0.969115, 0.244706,
		-0.855486, 0.101249, -0.507831,
		36.605980, 33.154343, 26.904129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837257, 33.755589, 27.537931>,  <37.204819, 33.083466, 27.259611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837257, 33.755589, 27.537931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608345, 33.469269, 27.377872>,  <36.470997, 33.297478, 27.281837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608345, 33.469269, 27.377872>,  <36.837257, 33.755589, 27.537931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608345, 33.469269, 27.377872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305517, -0.266723, 0.914067,
		-0.761021, 0.645356, -0.066049,
		-0.572281, -0.715803, -0.400149,
		36.436661, 33.254528, 27.257828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265102, 33.787842, 28.004639>,  <36.837257, 33.755589, 27.537931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265102, 33.787842, 28.004639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216618, 33.446987, 27.801004>,  <36.187527, 33.242474, 27.678823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216618, 33.446987, 27.801004>,  <36.265102, 33.787842, 28.004639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216618, 33.446987, 27.801004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568595, -0.360781, 0.739281,
		-0.813639, 0.379071, -0.440791,
		-0.121211, -0.852139, -0.509083,
		36.180256, 33.191345, 27.648279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519112, 33.753384, 27.882107>,  <36.265102, 33.787842, 28.004639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519112, 33.753384, 27.882107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680382, 33.387337, 27.882479>,  <35.777145, 33.167709, 27.882702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680382, 33.387337, 27.882479>,  <35.519112, 33.753384, 27.882107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680382, 33.387337, 27.882479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710963, -0.312590, 0.629936,
		-0.576176, -0.254638, -0.776647,
		0.403178, -0.915121, 0.000931,
		35.801334, 33.112801, 27.882759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953083, 33.341866, 27.862762>,  <35.519112, 33.753384, 27.882107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953083, 33.341866, 27.862762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251610, 33.106274, 27.986769>,  <35.430725, 32.964916, 28.061172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251610, 33.106274, 27.986769>,  <34.953083, 33.341866, 27.862762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251610, 33.106274, 27.986769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637998, -0.500317, 0.585355,
		-0.189659, -0.634650, -0.749166,
		0.746316, -0.588984, 0.310017,
		35.475506, 32.929577, 28.079773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512337, 32.686558, 28.095198>,  <34.953083, 33.341866, 27.862762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512337, 32.686558, 28.095198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872105, 32.693722, 28.269886>,  <35.087967, 32.698021, 28.374699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872105, 32.693722, 28.269886>,  <34.512337, 32.686558, 28.095198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872105, 32.693722, 28.269886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434028, -0.081411, 0.897213,
		0.051626, -0.996520, -0.065448,
		0.899419, 0.017913, 0.436721,
		35.141930, 32.699093, 28.400902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596779, 32.110596, 28.548532>,  <34.512337, 32.686558, 28.095198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596779, 32.110596, 28.548532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857262, 32.379570, 28.689245>,  <35.013554, 32.540955, 28.773672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857262, 32.379570, 28.689245>,  <34.596779, 32.110596, 28.548532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857262, 32.379570, 28.689245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422234, -0.064130, 0.904216,
		0.630589, -0.737370, 0.242164,
		0.651211, 0.672438, 0.351782,
		35.052624, 32.581303, 28.794781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999134, 31.773190, 29.116030>,  <34.596779, 32.110596, 28.548532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999134, 31.773190, 29.116030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051266, 32.164925, 29.177887>,  <35.082546, 32.399967, 29.215002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051266, 32.164925, 29.177887>,  <34.999134, 31.773190, 29.116030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051266, 32.164925, 29.177887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489027, -0.072186, 0.869276,
		0.862477, -0.188917, 0.469514,
		0.130328, 0.979336, 0.154645,
		35.090363, 32.458725, 29.224279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921440, 31.812294, 29.724964>,  <34.999134, 31.773190, 29.116030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921440, 31.812294, 29.724964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860054, 32.199059, 29.643452>,  <34.823223, 32.431118, 29.594543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860054, 32.199059, 29.643452>,  <34.921440, 31.812294, 29.724964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860054, 32.199059, 29.643452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662310, 0.052399, 0.747395,
		0.733344, 0.249667, 0.632355,
		-0.153466, 0.966913, -0.203783,
		34.814014, 32.489132, 29.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988842, 32.012600, 30.388136>,  <34.921440, 31.812294, 29.724964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988842, 32.012600, 30.388136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789425, 32.300705, 30.195189>,  <34.669773, 32.473568, 30.079420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789425, 32.300705, 30.195189>,  <34.988842, 32.012600, 30.388136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789425, 32.300705, 30.195189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537604, 0.179626, 0.823842,
		0.680025, 0.670047, 0.297662,
		-0.498545, 0.720258, -0.482371,
		34.639862, 32.516781, 30.050478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029034, 32.566830, 30.901169>,  <34.988842, 32.012600, 30.388136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029034, 32.566830, 30.901169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726318, 32.654819, 30.654957>,  <34.544689, 32.707615, 30.507229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726318, 32.654819, 30.654957>,  <35.029034, 32.566830, 30.901169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726318, 32.654819, 30.654957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530161, 0.344270, 0.774860,
		0.382359, 0.912737, -0.143918,
		-0.756790, 0.219975, -0.615532,
		34.499283, 32.720814, 30.470297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779297, 33.174168, 31.131500>,  <35.029034, 32.566830, 30.901169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779297, 33.174168, 31.131500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472038, 33.031013, 30.919138>,  <34.287682, 32.945122, 30.791721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472038, 33.031013, 30.919138>,  <34.779297, 33.174168, 31.131500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472038, 33.031013, 30.919138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636645, 0.338851, 0.692721,
		-0.068018, 0.870113, -0.488136,
		-0.768151, -0.357887, -0.530905,
		34.241592, 32.923649, 30.759867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392799, 33.730289, 31.178263>,  <34.779297, 33.174168, 31.131500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392799, 33.730289, 31.178263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139145, 33.443504, 31.062450>,  <33.986950, 33.271431, 30.992964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139145, 33.443504, 31.062450>,  <34.392799, 33.730289, 31.178263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139145, 33.443504, 31.062450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748917, 0.476382, 0.460634,
		-0.192332, 0.508941, -0.839040,
		-0.634139, -0.716966, -0.289531,
		33.948902, 33.228416, 30.975592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870235, 34.127842, 31.104118>,  <34.392799, 33.730289, 31.178263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870235, 34.127842, 31.104118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739052, 33.754425, 31.161999>,  <33.660343, 33.530373, 31.196726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739052, 33.754425, 31.161999>,  <33.870235, 34.127842, 31.104118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739052, 33.754425, 31.161999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695855, 0.342318, 0.631352,
		-0.638928, 0.106367, -0.761877,
		-0.327959, -0.933544, 0.144700,
		33.640663, 33.474361, 31.205408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093937, 34.071064, 30.765961>,  <33.870235, 34.127842, 31.104118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093937, 34.071064, 30.765961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138119, 33.814083, 31.069290>,  <33.164627, 33.659893, 31.251287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138119, 33.814083, 31.069290>,  <33.093937, 34.071064, 30.765961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138119, 33.814083, 31.069290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840874, 0.346344, 0.415904,
		-0.529840, -0.683592, -0.501968,
		0.110455, -0.642455, 0.758322,
		33.171257, 33.621346, 31.296787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225410, 34.606339, 30.316317>,  <33.093937, 34.071064, 30.765961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225410, 34.606339, 30.316317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369514, 34.948463, 30.465263>,  <33.455978, 35.153736, 30.554632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369514, 34.948463, 30.465263>,  <33.225410, 34.606339, 30.316317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369514, 34.948463, 30.465263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365230, 0.237980, -0.899985,
		-0.858382, 0.460229, -0.226650,
		0.360261, 0.855310, 0.372367,
		33.477592, 35.205055, 30.576973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065037, 35.069794, 29.742470>,  <33.225410, 34.606339, 30.316317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065037, 35.069794, 29.742470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378864, 35.207047, 29.949047>,  <33.567162, 35.289398, 30.072994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378864, 35.207047, 29.949047>,  <33.065037, 35.069794, 29.742470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378864, 35.207047, 29.949047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366821, 0.414655, -0.832768,
		-0.499896, 0.842805, 0.199456,
		0.784567, 0.343133, 0.516443,
		33.614235, 35.309986, 30.103981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225536, 35.705093, 29.502192>,  <33.065037, 35.069794, 29.742470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225536, 35.705093, 29.502192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561852, 35.551514, 29.654848>,  <33.763641, 35.459366, 29.746443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561852, 35.551514, 29.654848>,  <33.225536, 35.705093, 29.502192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561852, 35.551514, 29.654848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491791, 0.247027, -0.834937,
		0.226300, 0.889696, 0.396523,
		0.840791, -0.383952, 0.381642,
		33.814091, 35.436329, 29.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622807, 36.226212, 29.380949>,  <33.225536, 35.705093, 29.502192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622807, 36.226212, 29.380949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873386, 35.919418, 29.436510>,  <34.023735, 35.735340, 29.469847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873386, 35.919418, 29.436510>,  <33.622807, 36.226212, 29.380949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873386, 35.919418, 29.436510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508204, 0.266781, -0.818875,
		0.591010, 0.583574, 0.556910,
		0.626447, -0.766987, 0.138904,
		34.061321, 35.689323, 29.478182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260632, 36.543121, 29.361406>,  <33.622807, 36.226212, 29.380949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260632, 36.543121, 29.361406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306011, 36.153667, 29.282246>,  <34.333237, 35.919994, 29.234749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306011, 36.153667, 29.282246>,  <34.260632, 36.543121, 29.361406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306011, 36.153667, 29.282246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567306, 0.227005, -0.791601,
		0.815655, -0.022467, 0.578102,
		0.113447, -0.973634, -0.197903,
		34.340046, 35.861576, 29.222874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946991, 36.567059, 29.245857>,  <34.260632, 36.543121, 29.361406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946991, 36.567059, 29.245857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783634, 36.230057, 29.105343>,  <34.685619, 36.027855, 29.021034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783634, 36.230057, 29.105343>,  <34.946991, 36.567059, 29.245857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783634, 36.230057, 29.105343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453936, 0.146428, -0.878921,
		0.791932, -0.518407, 0.322642,
		-0.408395, -0.842504, -0.351284,
		34.661118, 35.977306, 28.999958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463879, 36.233372, 29.027411>,  <34.946991, 36.567059, 29.245857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463879, 36.233372, 29.027411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148823, 36.102005, 28.818886>,  <34.959789, 36.023186, 28.693771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148823, 36.102005, 28.818886>,  <35.463879, 36.233372, 29.027411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148823, 36.102005, 28.818886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478199, 0.207683, -0.853343,
		0.388523, -0.921416, -0.006529,
		-0.787639, -0.328421, -0.521310,
		34.912529, 36.003479, 28.662493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697655, 35.824329, 28.490511>,  <35.463879, 36.233372, 29.027411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697655, 35.824329, 28.490511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325569, 35.924179, 28.382887>,  <35.102318, 35.984089, 28.318314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325569, 35.924179, 28.382887>,  <35.697655, 35.824329, 28.490511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325569, 35.924179, 28.382887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304021, 0.113387, -0.945894,
		-0.205607, -0.961682, -0.181364,
		-0.930213, 0.249621, -0.269059,
		35.046505, 35.999065, 28.302170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595753, 35.430367, 27.887430>,  <35.697655, 35.824329, 28.490511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595753, 35.430367, 27.887430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312588, 35.712490, 27.872444>,  <35.142689, 35.881763, 27.863453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312588, 35.712490, 27.872444>,  <35.595753, 35.430367, 27.887430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312588, 35.712490, 27.872444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172462, 0.121175, -0.977534,
		-0.684925, -0.698466, -0.207420,
		-0.707908, 0.705310, -0.037463,
		35.100216, 35.924084, 27.861204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332348, 35.253597, 27.203184>,  <35.595753, 35.430367, 27.887430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332348, 35.253597, 27.203184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234161, 35.622143, 27.323740>,  <35.175247, 35.843269, 27.396072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234161, 35.622143, 27.323740>,  <35.332348, 35.253597, 27.203184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234161, 35.622143, 27.323740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172759, 0.347500, -0.921628,
		-0.953886, -0.174164, -0.244474,
		-0.245469, 0.921363, 0.301388,
		35.160522, 35.898552, 27.414156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705402, 35.509670, 26.661764>,  <35.332348, 35.253597, 27.203184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705402, 35.509670, 26.661764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907043, 35.812366, 26.828243>,  <35.028027, 35.993984, 26.928131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907043, 35.812366, 26.828243>,  <34.705402, 35.509670, 26.661764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907043, 35.812366, 26.828243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228698, 0.347741, -0.909271,
		-0.832814, 0.553549, 0.002232,
		0.504102, 0.756743, 0.416199,
		35.058273, 36.039391, 26.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594296, 36.035339, 26.247252>,  <34.705402, 35.509670, 26.661764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594296, 36.035339, 26.247252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893642, 36.192204, 26.461227>,  <35.073250, 36.286324, 26.589613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893642, 36.192204, 26.461227>,  <34.594296, 36.035339, 26.247252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893642, 36.192204, 26.461227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329237, 0.480502, -0.812847,
		-0.575809, 0.784427, 0.230475,
		0.748363, 0.392163, 0.534940,
		35.118153, 36.309853, 26.621710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622814, 36.825794, 26.073355>,  <34.594296, 36.035339, 26.247252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622814, 36.825794, 26.073355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982239, 36.698959, 26.194710>,  <35.197895, 36.622860, 26.267523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982239, 36.698959, 26.194710>,  <34.622814, 36.825794, 26.073355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982239, 36.698959, 26.194710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418193, 0.409082, -0.811028,
		0.133056, 0.855633, 0.500188,
		0.898560, -0.317088, 0.303389,
		35.251808, 36.603832, 26.285727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030758, 37.431042, 25.898335>,  <34.622814, 36.825794, 26.073355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030758, 37.431042, 25.898335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296909, 37.140633, 25.967800>,  <35.456600, 36.966389, 26.009480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296909, 37.140633, 25.967800>,  <35.030758, 37.431042, 25.898335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296909, 37.140633, 25.967800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525905, 0.290785, -0.799292,
		0.529805, 0.623165, 0.575302,
		0.665380, -0.726023, 0.173666,
		35.496525, 36.922825, 26.019899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712883, 37.753399, 25.825186>,  <35.030758, 37.431042, 25.898335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712883, 37.753399, 25.825186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755791, 37.360107, 25.766184>,  <35.781536, 37.124134, 25.730783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755791, 37.360107, 25.766184>,  <35.712883, 37.753399, 25.825186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755791, 37.360107, 25.766184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535483, 0.182141, -0.824671,
		0.837705, 0.009480, 0.546040,
		0.107274, -0.983227, -0.147504,
		35.787971, 37.065140, 25.721933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420246, 37.634544, 25.866020>,  <35.712883, 37.753399, 25.825186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420246, 37.634544, 25.866020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261295, 37.327194, 25.665346>,  <36.165924, 37.142784, 25.544941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261295, 37.327194, 25.665346>,  <36.420246, 37.634544, 25.866020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261295, 37.327194, 25.665346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695782, 0.104169, -0.710659,
		0.598314, -0.631463, 0.493229,
		-0.397376, -0.768377, -0.501686,
		36.142082, 37.096680, 25.514841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019920, 37.193310, 25.693579>,  <36.420246, 37.634544, 25.866020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019920, 37.193310, 25.693579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726471, 37.103020, 25.437187>,  <36.550404, 37.048847, 25.283352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726471, 37.103020, 25.437187>,  <37.019920, 37.193310, 25.693579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726471, 37.103020, 25.437187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645930, 0.061430, -0.760921,
		0.211131, -0.972253, 0.100734,
		-0.733620, -0.225721, -0.640978,
		36.506386, 37.035305, 25.244894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251888, 36.642422, 25.351000>,  <37.019920, 37.193310, 25.693579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251888, 36.642422, 25.351000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972527, 36.811703, 25.120131>,  <36.804909, 36.913273, 24.981609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972527, 36.811703, 25.120131>,  <37.251888, 36.642422, 25.351000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972527, 36.811703, 25.120131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580602, -0.136523, -0.802660,
		-0.418489, -0.895688, -0.150366,
		-0.698405, 0.423207, -0.577171,
		36.763004, 36.938663, 24.946980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247501, 36.272003, 24.746586>,  <37.251888, 36.642422, 25.351000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247501, 36.272003, 24.746586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048855, 36.603275, 24.642666>,  <36.929668, 36.802036, 24.580315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048855, 36.603275, 24.642666>,  <37.247501, 36.272003, 24.746586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048855, 36.603275, 24.642666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626226, 0.134614, -0.767932,
		-0.601011, -0.544060, -0.585478,
		-0.496615, 0.828177, -0.259800,
		36.899872, 36.851730, 24.564726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147240, 36.163586, 23.971600>,  <37.247501, 36.272003, 24.746586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147240, 36.163586, 23.971600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125519, 36.553329, 24.058941>,  <37.112484, 36.787174, 24.111345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125519, 36.553329, 24.058941>,  <37.147240, 36.163586, 23.971600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125519, 36.553329, 24.058941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175582, 0.224588, -0.958505,
		-0.982966, -0.013713, -0.183276,
		-0.054306, 0.974357, 0.218355,
		37.109226, 36.845638, 24.124447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662827, 36.459965, 23.406733>,  <37.147240, 36.163586, 23.971600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662827, 36.459965, 23.406733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845184, 36.784504, 23.553087>,  <36.954597, 36.979229, 23.640900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845184, 36.784504, 23.553087>,  <36.662827, 36.459965, 23.406733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845184, 36.784504, 23.553087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402143, 0.178964, -0.897916,
		-0.794003, 0.556494, -0.244690,
		0.455894, 0.811349, 0.365888,
		36.981953, 37.027908, 23.662853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597530, 37.032875, 22.856228>,  <36.662827, 36.459965, 23.406733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597530, 37.032875, 22.856228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894382, 37.137974, 23.102871>,  <37.072495, 37.201035, 23.250856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894382, 37.137974, 23.102871>,  <36.597530, 37.032875, 22.856228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894382, 37.137974, 23.102871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522956, 0.348429, -0.777891,
		-0.419233, 0.899756, 0.121175,
		0.742133, 0.262748, 0.616606,
		37.117023, 37.216797, 23.287853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740116, 37.780842, 22.764168>,  <36.597530, 37.032875, 22.856228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740116, 37.780842, 22.764168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084873, 37.625546, 22.894644>,  <37.291729, 37.532368, 22.972929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084873, 37.625546, 22.894644>,  <36.740116, 37.780842, 22.764168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084873, 37.625546, 22.894644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480464, 0.419575, -0.770137,
		0.162139, 0.820502, 0.548167,
		0.861897, -0.388243, 0.326192,
		37.343441, 37.509071, 22.992502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266876, 38.336517, 22.783581>,  <36.740116, 37.780842, 22.764168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266876, 38.336517, 22.783581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473656, 37.994305, 22.772070>,  <37.597721, 37.788975, 22.765163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473656, 37.994305, 22.772070>,  <37.266876, 38.336517, 22.783581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473656, 37.994305, 22.772070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467423, 0.310275, -0.827795,
		0.717136, 0.414474, 0.560292,
		0.516944, -0.855535, -0.028775,
		37.628738, 37.737644, 22.763437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848255, 38.564575, 22.469027>,  <37.266876, 38.336517, 22.783581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848255, 38.564575, 22.469027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849323, 38.167515, 22.420630>,  <37.849964, 37.929279, 22.391592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.849323, 38.167515, 22.420630>,  <37.848255, 38.564575, 22.469027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849323, 38.167515, 22.420630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467792, 0.108177, -0.877194,
		0.883835, -0.054261, 0.464642,
		0.002666, -0.992650, -0.120993,
		37.850124, 37.869720, 22.384331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546059, 38.369106, 22.397451>,  <37.848255, 38.564575, 22.469027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546059, 38.369106, 22.397451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325760, 38.094364, 22.207752>,  <38.193581, 37.929520, 22.093933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325760, 38.094364, 22.207752>,  <38.546059, 38.369106, 22.397451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325760, 38.094364, 22.207752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421699, 0.261361, -0.868252,
		0.720312, -0.678175, 0.145702,
		-0.550746, -0.686854, -0.474247,
		38.160538, 37.888309, 22.065477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949139, 37.818123, 22.156290>,  <38.546059, 38.369106, 22.397451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949139, 37.818123, 22.156290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625782, 37.811420, 21.920929>,  <38.431767, 37.807400, 21.779713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.625782, 37.811420, 21.920929>,  <38.949139, 37.818123, 22.156290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625782, 37.811420, 21.920929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588096, 0.020108, -0.808541,
		0.025386, -0.999657, -0.006396,
		-0.808393, -0.016764, -0.588405,
		38.383263, 37.806393, 21.744408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642979, 38.082813, 22.379911>,  <38.949139, 37.818123, 22.156290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642979, 38.082813, 22.379911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741749, 38.469803, 22.401867>,  <39.801010, 38.701996, 22.415039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741749, 38.469803, 22.401867>,  <39.642979, 38.082813, 22.379911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741749, 38.469803, 22.401867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480445, 0.073041, 0.873978,
		0.841545, -0.242181, 0.482856,
		0.246929, 0.967478, 0.054888,
		39.815826, 38.760048, 22.418333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872498, 38.194618, 23.014561>,  <39.642979, 38.082813, 22.379911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872498, 38.194618, 23.014561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745396, 38.557671, 22.904848>,  <39.669132, 38.775501, 22.839020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745396, 38.557671, 22.904848>,  <39.872498, 38.194618, 23.014561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745396, 38.557671, 22.904848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421869, 0.123730, 0.898174,
		0.849151, 0.401113, 0.343586,
		-0.317757, 0.907634, -0.274283,
		39.650070, 38.829960, 22.822563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932926, 38.592640, 23.536983>,  <39.872498, 38.194618, 23.014561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932926, 38.592640, 23.536983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694145, 38.850075, 23.345379>,  <39.550877, 39.004536, 23.230417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694145, 38.850075, 23.345379>,  <39.932926, 38.592640, 23.536983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694145, 38.850075, 23.345379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510548, 0.155822, 0.845613,
		0.618862, 0.749347, 0.235562,
		-0.596951, 0.643583, -0.479010,
		39.515060, 39.043148, 23.201675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929867, 39.106575, 23.909193>,  <39.932926, 38.592640, 23.536983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929867, 39.106575, 23.909193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591530, 39.156475, 23.701738>,  <39.388527, 39.186413, 23.577265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591530, 39.156475, 23.701738>,  <39.929867, 39.106575, 23.909193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591530, 39.156475, 23.701738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470752, 0.282701, 0.835746,
		0.250875, 0.951062, -0.180397,
		-0.845845, 0.124745, -0.518637,
		39.337776, 39.193897, 23.546146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678268, 39.659637, 24.158688>,  <39.929867, 39.106575, 23.909193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678268, 39.659637, 24.158688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381531, 39.452892, 23.987797>,  <39.203487, 39.328846, 23.885262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381531, 39.452892, 23.987797>,  <39.678268, 39.659637, 24.158688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381531, 39.452892, 23.987797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531927, 0.065630, 0.844243,
		-0.408319, 0.853549, -0.323621,
		-0.741842, -0.516863, -0.427228,
		39.158978, 39.297832, 23.859629>
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
