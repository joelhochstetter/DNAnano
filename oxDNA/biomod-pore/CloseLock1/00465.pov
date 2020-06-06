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
	<23.960165, 35.177353, 34.857388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298527, 34.988335, 34.956295>,  <24.501545, 34.874924, 35.015640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298527, 34.988335, 34.956295>,  <23.960165, 35.177353, 34.857388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298527, 34.988335, 34.956295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087277, 0.580029, 0.809907,
		-0.526141, -0.663525, 0.531893,
		0.845906, -0.472548, 0.247267,
		24.552299, 34.846569, 35.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.965050, 34.907120, 35.635063>,  <23.960165, 35.177353, 34.857388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.965050, 34.907120, 35.635063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338873, 34.989182, 35.518776>,  <24.563168, 35.038418, 35.449005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338873, 34.989182, 35.518776>,  <23.965050, 34.907120, 35.635063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338873, 34.989182, 35.518776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007895, 0.804889, 0.593373,
		0.355724, -0.556837, 0.750595,
		0.934558, 0.205151, -0.290714,
		24.619240, 35.050728, 35.431561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389174, 34.982391, 36.196259>,  <23.965050, 34.907120, 35.635063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389174, 34.982391, 36.196259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524565, 35.190426, 35.882584>,  <24.605799, 35.315247, 35.694378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524565, 35.190426, 35.882584>,  <24.389174, 34.982391, 36.196259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524565, 35.190426, 35.882584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007578, 0.834854, 0.550419,
		0.940944, -0.180362, 0.286520,
		0.338477, 0.520085, -0.784184,
		24.626108, 35.346451, 35.647327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156773, 35.104832, 36.276321>,  <24.389174, 34.982391, 36.196259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156773, 35.104832, 36.276321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939102, 35.382309, 36.087574>,  <24.808500, 35.548794, 35.974327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939102, 35.382309, 36.087574>,  <25.156773, 35.104832, 36.276321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939102, 35.382309, 36.087574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093197, 0.508974, 0.855722,
		0.833778, 0.509641, -0.212322,
		-0.544178, 0.693694, -0.471868,
		24.775848, 35.590416, 35.946014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348129, 35.887684, 36.269390>,  <25.156773, 35.104832, 36.276321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348129, 35.887684, 36.269390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953529, 35.829048, 36.298592>,  <24.716770, 35.793865, 36.316113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953529, 35.829048, 36.298592>,  <25.348129, 35.887684, 36.269390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953529, 35.829048, 36.298592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042396, 0.659188, 0.750782,
		-0.158178, 0.737552, -0.656504,
		-0.986500, -0.146591, 0.072999,
		24.657579, 35.785072, 36.320492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634932, 36.373497, 36.823643>,  <25.348129, 35.887684, 36.269390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634932, 36.373497, 36.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930902, 36.301846, 37.083004>,  <26.108484, 36.258854, 37.238621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930902, 36.301846, 37.083004>,  <25.634932, 36.373497, 36.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930902, 36.301846, 37.083004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195169, 0.865269, 0.461757,
		-0.643753, -0.468213, 0.605276,
		0.739927, -0.179126, 0.648400,
		26.152880, 36.248108, 37.277523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378763, 36.600304, 37.467045>,  <25.634932, 36.373497, 36.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378763, 36.600304, 37.467045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778496, 36.586464, 37.471718>,  <26.018335, 36.578159, 37.474522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778496, 36.586464, 37.471718>,  <25.378763, 36.600304, 37.467045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778496, 36.586464, 37.471718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020769, 0.801651, 0.597432,
		-0.030033, -0.596791, 0.801835,
		0.999333, -0.034596, 0.011681,
		26.078297, 36.576084, 37.475224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684349, 36.378445, 38.200218>,  <25.378763, 36.600304, 37.467045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684349, 36.378445, 38.200218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904726, 36.609299, 37.959095>,  <26.036953, 36.747810, 37.814419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904726, 36.609299, 37.959095>,  <25.684349, 36.378445, 38.200218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904726, 36.609299, 37.959095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002186, 0.723321, 0.690509,
		0.834541, -0.379112, 0.399769,
		0.550942, 0.577132, -0.602812,
		26.070009, 36.782436, 37.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316523, 36.657330, 38.585613>,  <25.684349, 36.378445, 38.200218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316523, 36.657330, 38.585613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284231, 36.916634, 38.282764>,  <26.264856, 37.072216, 38.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284231, 36.916634, 38.282764>,  <26.316523, 36.657330, 38.585613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284231, 36.916634, 38.282764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037925, 0.761052, 0.647582,
		0.996014, 0.023563, -0.086023,
		-0.080727, 0.648263, -0.757125,
		26.260014, 37.111115, 38.055626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707563, 37.211922, 38.809628>,  <26.316523, 36.657330, 38.585613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707563, 37.211922, 38.809628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505447, 37.387543, 38.512463>,  <26.384178, 37.492916, 38.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505447, 37.387543, 38.512463>,  <26.707563, 37.211922, 38.809628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505447, 37.387543, 38.512463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040532, 0.847874, 0.528647,
		0.861997, 0.297231, -0.410627,
		-0.505290, 0.439049, -0.742912,
		26.353861, 37.519257, 38.289589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831953, 37.902714, 38.919441>,  <26.707563, 37.211922, 38.809628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831953, 37.902714, 38.919441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531542, 37.914467, 38.655594>,  <26.351295, 37.921520, 38.497284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531542, 37.914467, 38.655594>,  <26.831953, 37.902714, 38.919441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531542, 37.914467, 38.655594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117016, 0.977272, 0.176770,
		0.649821, 0.209944, -0.730518,
		-0.751026, 0.029387, -0.659618,
		26.306234, 37.923283, 38.457710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910723, 38.447529, 38.498356>,  <26.831953, 37.902714, 38.919441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910723, 38.447529, 38.498356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522314, 38.352543, 38.509125>,  <26.289268, 38.295551, 38.515587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522314, 38.352543, 38.509125>,  <26.910723, 38.447529, 38.498356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522314, 38.352543, 38.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225102, 0.946627, 0.230711,
		-0.080270, 0.217966, -0.972650,
		-0.971023, -0.237465, 0.026921,
		26.231007, 38.281303, 38.517200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615465, 38.895615, 38.093151>,  <26.910723, 38.447529, 38.498356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615465, 38.895615, 38.093151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299767, 38.772400, 38.305641>,  <26.110348, 38.698471, 38.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299767, 38.772400, 38.305641>,  <26.615465, 38.895615, 38.093151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299767, 38.772400, 38.305641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325461, 0.943420, 0.063506,
		-0.520734, -0.122772, -0.844845,
		-0.789247, -0.308034, 0.531229,
		26.062992, 38.679989, 38.465012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943186, 39.224564, 37.807137>,  <26.615465, 38.895615, 38.093151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943186, 39.224564, 37.807137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882580, 39.119442, 38.188286>,  <25.846216, 39.056370, 38.416977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882580, 39.119442, 38.188286>,  <25.943186, 39.224564, 37.807137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882580, 39.119442, 38.188286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431349, 0.884954, 0.175484,
		-0.889371, -0.384434, -0.247445,
		-0.151515, -0.262806, 0.952878,
		25.837126, 39.040600, 38.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315332, 39.406326, 37.986057>,  <25.943186, 39.224564, 37.807137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315332, 39.406326, 37.986057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456522, 39.398129, 38.360222>,  <25.541237, 39.393211, 38.584721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456522, 39.398129, 38.360222>,  <25.315332, 39.406326, 37.986057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456522, 39.398129, 38.360222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411787, 0.894323, 0.174982,
		-0.840143, -0.446953, 0.307233,
		0.352975, -0.020496, 0.935408,
		25.562414, 39.391979, 38.640846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712568, 39.542618, 38.427811>,  <25.315332, 39.406326, 37.986057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712568, 39.542618, 38.427811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037500, 39.615242, 38.649494>,  <25.232460, 39.658817, 38.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037500, 39.615242, 38.649494>,  <24.712568, 39.542618, 38.427811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037500, 39.615242, 38.649494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346953, 0.914294, 0.209022,
		-0.468764, -0.362081, 0.805703,
		0.812332, 0.181559, 0.554213,
		25.281200, 39.669708, 38.815758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518286, 39.818745, 39.000984>,  <24.712568, 39.542618, 38.427811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518286, 39.818745, 39.000984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898132, 39.940254, 39.031837>,  <25.126041, 40.013161, 39.050350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898132, 39.940254, 39.031837>,  <24.518286, 39.818745, 39.000984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898132, 39.940254, 39.031837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311999, 0.892928, 0.324555,
		0.029713, -0.332270, 0.942716,
		0.949618, 0.303770, 0.077136,
		25.183018, 40.031384, 39.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578461, 40.139233, 39.696980>,  <24.518286, 39.818745, 39.000984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578461, 40.139233, 39.696980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888561, 40.283401, 39.489487>,  <25.074621, 40.369904, 39.364990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888561, 40.283401, 39.489487>,  <24.578461, 40.139233, 39.696980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888561, 40.283401, 39.489487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242214, 0.928076, 0.282855,
		0.583369, -0.093639, 0.806791,
		0.775250, 0.360425, -0.518730,
		25.121136, 40.391529, 39.333866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111101, 40.452316, 40.205906>,  <24.578461, 40.139233, 39.696980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111101, 40.452316, 40.205906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164932, 40.611099, 39.842739>,  <25.197231, 40.706367, 39.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164932, 40.611099, 39.842739>,  <25.111101, 40.452316, 40.205906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164932, 40.611099, 39.842739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130175, 0.901230, 0.413327,
		0.982315, -0.173814, 0.069614,
		0.134580, 0.396955, -0.907917,
		25.205307, 40.730186, 39.570362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567923, 41.067764, 40.320488>,  <25.111101, 40.452316, 40.205906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567923, 41.067764, 40.320488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401743, 41.147240, 39.965427>,  <25.302036, 41.194927, 39.752392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401743, 41.147240, 39.965427>,  <25.567923, 41.067764, 40.320488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401743, 41.147240, 39.965427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148213, 0.977597, 0.149456,
		0.897461, -0.069471, -0.435589,
		-0.415448, 0.198691, -0.887651,
		25.277109, 41.206848, 39.699131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061985, 41.554096, 39.915359>,  <25.567923, 41.067764, 40.320488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061985, 41.554096, 39.915359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703056, 41.580338, 39.740768>,  <25.487700, 41.596081, 39.636013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703056, 41.580338, 39.740768>,  <26.061985, 41.554096, 39.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703056, 41.580338, 39.740768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058564, 0.997846, 0.029573,
		0.437475, 0.000974, -0.899230,
		-0.897322, 0.065600, -0.436475,
		25.433861, 41.600018, 39.609825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111708, 42.223141, 39.646801>,  <26.061985, 41.554096, 39.915359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111708, 42.223141, 39.646801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721966, 42.135189, 39.627686>,  <25.488121, 42.082420, 39.616215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721966, 42.135189, 39.627686>,  <26.111708, 42.223141, 39.646801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721966, 42.135189, 39.627686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224022, 0.967819, 0.114631,
		0.021045, 0.122397, -0.992258,
		-0.974357, -0.219875, -0.047787,
		25.429659, 42.069225, 39.613350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873711, 42.659695, 39.145485>,  <26.111708, 42.223141, 39.646801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873711, 42.659695, 39.145485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542278, 42.529495, 39.327698>,  <25.343420, 42.451374, 39.437023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542278, 42.529495, 39.327698>,  <25.873711, 42.659695, 39.145485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542278, 42.529495, 39.327698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338187, 0.939404, 0.056113,
		-0.446191, -0.107561, -0.888450,
		-0.828578, -0.325499, 0.455530,
		25.293705, 42.431847, 39.464355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268923, 43.050266, 38.778843>,  <25.873711, 42.659695, 39.145485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268923, 43.050266, 38.778843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171118, 42.941006, 39.150993>,  <25.112434, 42.875450, 39.374283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171118, 42.941006, 39.150993>,  <25.268923, 43.050266, 38.778843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171118, 42.941006, 39.150993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338300, 0.923242, 0.182145,
		-0.908717, -0.270210, -0.318150,
		-0.244513, -0.273148, 0.930378,
		25.097763, 42.859062, 39.430107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639130, 43.256649, 38.816612>,  <25.268923, 43.050266, 38.778843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639130, 43.256649, 38.816612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754898, 43.223076, 39.198017>,  <24.824358, 43.202930, 39.426861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754898, 43.223076, 39.198017>,  <24.639130, 43.256649, 38.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754898, 43.223076, 39.198017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277286, 0.946084, 0.167445,
		-0.916160, -0.312859, 0.250541,
		0.289420, -0.083934, 0.953515,
		24.841724, 43.197895, 39.484070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271700, 43.601929, 39.380562>,  <24.639130, 43.256649, 38.816612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271700, 43.601929, 39.380562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639322, 43.565540, 39.533958>,  <24.859896, 43.543709, 39.625996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639322, 43.565540, 39.533958>,  <24.271700, 43.601929, 39.380562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639322, 43.565540, 39.533958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037430, 0.948454, 0.314696,
		-0.392349, -0.303577, 0.868276,
		0.919054, -0.090971, 0.383488,
		24.915039, 43.538250, 39.649006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347454, 43.832138, 40.051212>,  <24.271700, 43.601929, 39.380562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347454, 43.832138, 40.051212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682068, 43.879780, 39.837288>,  <24.882835, 43.908363, 39.708931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682068, 43.879780, 39.837288>,  <24.347454, 43.832138, 40.051212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682068, 43.879780, 39.837288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137113, 0.990536, 0.006129,
		0.530482, 0.068203, 0.844948,
		0.836534, 0.119105, -0.534814,
		24.933027, 43.915512, 39.676846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523882, 44.534550, 40.173431>,  <24.347454, 43.832138, 40.051212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523882, 44.534550, 40.173431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745491, 44.423954, 39.859333>,  <24.878456, 44.357597, 39.670876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745491, 44.423954, 39.859333>,  <24.523882, 44.534550, 40.173431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745491, 44.423954, 39.859333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081748, 0.920610, -0.381831,
		0.828479, 0.275735, 0.487434,
		0.554021, -0.276492, -0.785247,
		24.911697, 44.341007, 39.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198790, 44.720547, 40.128578>,  <24.523882, 44.534550, 40.173431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198790, 44.720547, 40.128578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033190, 44.678844, 39.766865>,  <24.933830, 44.653824, 39.549835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033190, 44.678844, 39.766865>,  <25.198790, 44.720547, 40.128578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033190, 44.678844, 39.766865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070304, 0.994114, -0.082428,
		0.907557, 0.029450, -0.418894,
		-0.414001, -0.104258, -0.904286,
		24.908989, 44.647568, 39.495579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796877, 45.098614, 39.913200>,  <25.198790, 44.720547, 40.128578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796877, 45.098614, 39.913200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678089, 45.002972, 40.282986>,  <25.606817, 44.945587, 40.504856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678089, 45.002972, 40.282986>,  <25.796877, 45.098614, 39.913200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678089, 45.002972, 40.282986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750345, 0.540352, 0.380791,
		-0.590586, 0.806752, 0.018941,
		-0.296969, -0.239103, 0.924467,
		25.588999, 44.931240, 40.560326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663778, 45.767212, 40.314041>,  <25.796877, 45.098614, 39.913200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663778, 45.767212, 40.314041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830915, 45.455784, 40.501331>,  <25.931198, 45.268929, 40.613705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830915, 45.455784, 40.501331>,  <25.663778, 45.767212, 40.314041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830915, 45.455784, 40.501331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825926, 0.540227, 0.161245,
		-0.378489, 0.319344, 0.868772,
		0.417842, -0.778571, 0.468225,
		25.956268, 45.222214, 40.641800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255022, 45.768856, 40.771732>,  <25.663778, 45.767212, 40.314041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255022, 45.768856, 40.771732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522226, 45.864151, 40.489738>,  <26.682549, 45.921329, 40.320541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522226, 45.864151, 40.489738>,  <26.255022, 45.768856, 40.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522226, 45.864151, 40.489738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740887, -0.124307, 0.660026,
		0.069609, -0.963219, -0.259546,
		0.668013, 0.238238, -0.704983,
		26.722630, 45.935623, 40.278244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758495, 45.255657, 40.680527>,  <26.255022, 45.768856, 40.771732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758495, 45.255657, 40.680527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902800, 45.621029, 40.605167>,  <26.989382, 45.840252, 40.559952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902800, 45.621029, 40.605167>,  <26.758495, 45.255657, 40.680527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902800, 45.621029, 40.605167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563695, -0.052611, 0.824306,
		0.743035, -0.403577, -0.533877,
		0.360758, 0.913432, -0.188403,
		27.011026, 45.895058, 40.548645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114918, 45.356583, 41.430252>,  <26.758495, 45.255657, 40.680527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114918, 45.356583, 41.430252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463669, 45.363926, 41.234501>,  <27.672920, 45.368332, 41.117050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463669, 45.363926, 41.234501>,  <27.114918, 45.356583, 41.430252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463669, 45.363926, 41.234501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435794, 0.484974, -0.758211,
		0.223414, 0.874336, 0.430840,
		0.871877, 0.018363, -0.489380,
		27.725231, 45.369434, 41.087688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319342, 45.258141, 42.048050>,  <27.114918, 45.356583, 41.430252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319342, 45.258141, 42.048050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633783, 45.085793, 42.225311>,  <27.822449, 44.982384, 42.331669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633783, 45.085793, 42.225311>,  <27.319342, 45.258141, 42.048050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633783, 45.085793, 42.225311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113815, -0.603807, -0.788963,
		0.607526, 0.670644, -0.425615,
		0.786103, -0.430875, 0.443158,
		27.869614, 44.956532, 42.358257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778502, 45.087429, 41.479000>,  <27.319342, 45.258141, 42.048050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778502, 45.087429, 41.479000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842064, 44.834255, 41.782089>,  <27.880201, 44.682350, 41.963943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842064, 44.834255, 41.782089>,  <27.778502, 45.087429, 41.479000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842064, 44.834255, 41.782089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249475, -0.716825, -0.651095,
		0.955254, 0.292495, 0.043994,
		0.158906, -0.632937, 0.757720,
		27.889736, 44.644375, 42.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436573, 44.805317, 41.408703>,  <27.778502, 45.087429, 41.479000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436573, 44.805317, 41.408703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251953, 44.533524, 41.636833>,  <28.141182, 44.370449, 41.773712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251953, 44.533524, 41.636833>,  <28.436573, 44.805317, 41.408703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251953, 44.533524, 41.636833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415382, -0.733603, -0.537851,
		0.783856, -0.011341, 0.620839,
		-0.461549, -0.679483, 0.570329,
		28.113489, 44.329678, 41.807930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959450, 44.232567, 41.459896>,  <28.436573, 44.805317, 41.408703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959450, 44.232567, 41.459896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623190, 44.049065, 41.575031>,  <28.421434, 43.938965, 41.644112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623190, 44.049065, 41.575031>,  <28.959450, 44.232567, 41.459896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623190, 44.049065, 41.575031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297812, -0.835484, -0.461817,
		0.452345, -0.302505, 0.838973,
		-0.840650, -0.458756, 0.287838,
		28.370995, 43.911438, 41.661381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111303, 43.561008, 41.741394>,  <28.959450, 44.232567, 41.459896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111303, 43.561008, 41.741394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721951, 43.539200, 41.652351>,  <28.488338, 43.526115, 41.598927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721951, 43.539200, 41.652351>,  <29.111303, 43.561008, 41.741394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721951, 43.539200, 41.652351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162089, -0.850448, -0.500465,
		-0.162025, -0.523225, 0.836650,
		-0.973383, -0.054524, -0.222603,
		28.429935, 43.522842, 41.585571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983103, 42.829254, 41.956665>,  <29.111303, 43.561008, 41.741394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983103, 42.829254, 41.956665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693983, 42.963276, 41.714905>,  <28.520512, 43.043690, 41.569847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693983, 42.963276, 41.714905>,  <28.983103, 42.829254, 41.956665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693983, 42.963276, 41.714905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011607, -0.868595, -0.495386,
		-0.690960, -0.365080, 0.623932,
		-0.722800, 0.335050, -0.604402,
		28.477142, 43.063789, 41.533585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577543, 42.370243, 41.899532>,  <28.983103, 42.829254, 41.956665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577543, 42.370243, 41.899532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474924, 42.570282, 41.568695>,  <28.413353, 42.690308, 41.370193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474924, 42.570282, 41.568695>,  <28.577543, 42.370243, 41.899532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474924, 42.570282, 41.568695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016792, -0.857910, -0.513525,
		-0.966386, -0.117855, 0.228492,
		-0.256548, 0.500100, -0.827093,
		28.397961, 42.720310, 41.320568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161026, 41.916733, 41.679611>,  <28.577543, 42.370243, 41.899532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161026, 41.916733, 41.679611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260067, 42.155838, 41.374619>,  <28.319492, 42.299301, 41.191624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260067, 42.155838, 41.374619>,  <28.161026, 41.916733, 41.679611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260067, 42.155838, 41.374619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116877, -0.799667, -0.588958,
		-0.961786, 0.056713, -0.267866,
		0.247605, 0.597759, -0.762480,
		28.334349, 42.335167, 41.145874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828018, 41.657772, 41.164539>,  <28.161026, 41.916733, 41.679611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828018, 41.657772, 41.164539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094419, 41.884708, 40.970814>,  <28.254261, 42.020870, 40.854580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094419, 41.884708, 40.970814>,  <27.828018, 41.657772, 41.164539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094419, 41.884708, 40.970814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023708, -0.665028, -0.746442,
		-0.745570, 0.485652, -0.456363,
		0.666005, 0.567345, -0.484311,
		28.294222, 42.054913, 40.825520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585848, 41.862873, 40.404293>,  <27.828018, 41.657772, 41.164539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585848, 41.862873, 40.404293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985277, 41.876740, 40.420536>,  <28.224936, 41.885059, 40.430283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985277, 41.876740, 40.420536>,  <27.585848, 41.862873, 40.404293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985277, 41.876740, 40.420536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053300, -0.692067, -0.719863,
		0.003146, 0.721001, -0.692927,
		0.998574, 0.034668, 0.040606,
		28.284849, 41.887138, 40.432716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818340, 41.879345, 39.626274>,  <27.585848, 41.862873, 40.404293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818340, 41.879345, 39.626274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146236, 41.775478, 39.830471>,  <28.342974, 41.713158, 39.952988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146236, 41.775478, 39.830471>,  <27.818340, 41.879345, 39.626274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146236, 41.775478, 39.830471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276642, -0.600929, -0.749902,
		0.501493, 0.755948, -0.420771,
		0.819740, -0.259667, 0.510489,
		28.392159, 41.697578, 39.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484432, 42.041103, 39.299591>,  <27.818340, 41.879345, 39.626274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484432, 42.041103, 39.299591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582224, 41.740929, 39.545216>,  <28.640900, 41.560822, 39.692589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582224, 41.740929, 39.545216>,  <28.484432, 42.041103, 39.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582224, 41.740929, 39.545216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265898, -0.557117, -0.786714,
		0.932485, 0.355612, 0.063337,
		0.244479, -0.750440, 0.614060,
		28.655567, 41.515797, 39.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879492, 41.749870, 38.921158>,  <28.484432, 42.041103, 39.299591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879492, 41.749870, 38.921158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843552, 41.466824, 39.201500>,  <28.821987, 41.296997, 39.369705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843552, 41.466824, 39.201500>,  <28.879492, 41.749870, 38.921158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843552, 41.466824, 39.201500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277582, -0.693615, -0.664716,
		0.956491, 0.134820, 0.258744,
		-0.089852, -0.707617, 0.700860,
		28.816597, 41.254539, 39.411758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361673, 41.222294, 38.690163>,  <28.879492, 41.749870, 38.921158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361673, 41.222294, 38.690163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111279, 41.037590, 38.941536>,  <28.961042, 40.926769, 39.092358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111279, 41.037590, 38.941536>,  <29.361673, 41.222294, 38.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111279, 41.037590, 38.941536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137448, -0.858563, -0.493940,
		0.767627, -0.222823, 0.600915,
		-0.625986, -0.461756, 0.628430,
		28.923483, 40.899063, 39.130066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577923, 40.585007, 38.777859>,  <29.361673, 41.222294, 38.690163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577923, 40.585007, 38.777859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192469, 40.558784, 38.881481>,  <28.961197, 40.543053, 38.943653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192469, 40.558784, 38.881481>,  <29.577923, 40.585007, 38.777859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192469, 40.558784, 38.881481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074396, -0.865305, -0.495694,
		0.256657, -0.496941, 0.828961,
		-0.963635, -0.065551, 0.259057,
		28.903378, 40.539120, 38.959198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483521, 39.820915, 38.883446>,  <29.577923, 40.585007, 38.777859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483521, 39.820915, 38.883446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110750, 39.960876, 38.845325>,  <28.887089, 40.044853, 38.822453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110750, 39.960876, 38.845325>,  <29.483521, 39.820915, 38.883446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110750, 39.960876, 38.845325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234652, -0.782167, -0.577194,
		-0.276501, -0.515540, 0.811027,
		-0.931926, 0.349904, -0.095298,
		28.831173, 40.065849, 38.816734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099636, 39.287918, 39.072830>,  <29.483521, 39.820915, 38.883446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099636, 39.287918, 39.072830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844740, 39.503048, 38.852039>,  <28.691803, 39.632126, 38.719566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844740, 39.503048, 38.852039>,  <29.099636, 39.287918, 39.072830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844740, 39.503048, 38.852039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171683, -0.797298, -0.578654,
		-0.751301, -0.273976, 0.600403,
		-0.637238, 0.537822, -0.551974,
		28.653568, 39.664394, 38.686447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510426, 38.845116, 39.013454>,  <29.099636, 39.287918, 39.072830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510426, 38.845116, 39.013454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480803, 39.114342, 38.719109>,  <28.463030, 39.275875, 38.542500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480803, 39.114342, 38.719109>,  <28.510426, 38.845116, 39.013454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480803, 39.114342, 38.719109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245319, -0.727515, -0.640734,
		-0.966610, 0.133072, 0.218992,
		-0.074057, 0.673063, -0.735868,
		28.458586, 39.316261, 38.498348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903627, 38.623135, 38.664650>,  <28.510426, 38.845116, 39.013454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903627, 38.623135, 38.664650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078840, 38.874260, 38.407288>,  <28.183968, 39.024937, 38.252869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078840, 38.874260, 38.407288>,  <27.903627, 38.623135, 38.664650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078840, 38.874260, 38.407288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148044, -0.655576, -0.740475,
		-0.886685, 0.419606, -0.194220,
		0.438033, 0.627815, -0.643409,
		28.210251, 39.062603, 38.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440598, 38.632702, 38.036179>,  <27.903627, 38.623135, 38.664650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440598, 38.632702, 38.036179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785627, 38.787647, 37.906002>,  <27.992645, 38.880615, 37.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785627, 38.787647, 37.906002>,  <27.440598, 38.632702, 38.036179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785627, 38.787647, 37.906002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040831, -0.587857, -0.807934,
		-0.504277, 0.710193, -0.491254,
		0.862576, 0.387364, -0.325441,
		28.044399, 38.903858, 37.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321398, 38.733658, 37.395657>,  <27.440598, 38.632702, 38.036179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321398, 38.733658, 37.395657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715611, 38.684242, 37.442070>,  <27.952139, 38.654591, 37.469917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715611, 38.684242, 37.442070>,  <27.321398, 38.733658, 37.395657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715611, 38.684242, 37.442070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009443, -0.723563, -0.690194,
		0.169223, 0.679113, -0.714261,
		0.985533, -0.123542, 0.116030,
		28.011271, 38.647179, 37.476879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688004, 38.914330, 36.832142>,  <27.321398, 38.733658, 37.395657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688004, 38.914330, 36.832142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967196, 38.670517, 36.982502>,  <28.134710, 38.524231, 37.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967196, 38.670517, 36.982502>,  <27.688004, 38.914330, 36.832142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967196, 38.670517, 36.982502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117172, -0.615044, -0.779738,
		0.706466, 0.500197, -0.500708,
		0.697980, -0.609528, 0.375898,
		28.176590, 38.487659, 37.095272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013929, 38.671356, 36.311638>,  <27.688004, 38.914330, 36.832142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013929, 38.671356, 36.311638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118242, 38.406479, 36.592632>,  <28.180830, 38.247551, 36.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118242, 38.406479, 36.592632>,  <28.013929, 38.671356, 36.311638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118242, 38.406479, 36.592632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017368, -0.730768, -0.682405,
		0.965242, 0.165757, -0.202071,
		0.260780, -0.662196, 0.702489,
		28.196476, 38.207821, 36.803379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597124, 38.403870, 36.010368>,  <28.013929, 38.671356, 36.311638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597124, 38.403870, 36.010368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504423, 38.131481, 36.288239>,  <28.448803, 37.968048, 36.454960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504423, 38.131481, 36.288239>,  <28.597124, 38.403870, 36.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504423, 38.131481, 36.288239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419774, -0.714212, -0.560081,
		0.877542, 0.161805, 0.451374,
		-0.231753, -0.680970, 0.694673,
		28.434896, 37.927189, 36.496639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163361, 38.098389, 36.346176>,  <28.597124, 38.403870, 36.010368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163361, 38.098389, 36.346176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381042, 38.368546, 36.147102>,  <29.511652, 38.530640, 36.027660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381042, 38.368546, 36.147102>,  <29.163361, 38.098389, 36.346176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381042, 38.368546, 36.147102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838386, -0.459585, 0.293071,
		-0.030789, -0.576740, -0.816347,
		0.544207, 0.675391, -0.497681,
		29.544304, 38.571163, 35.997799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680632, 37.788639, 36.460648>,  <29.163361, 38.098389, 36.346176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680632, 37.788639, 36.460648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783907, 38.150402, 36.324772>,  <29.845873, 38.367458, 36.243248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783907, 38.150402, 36.324772>,  <29.680632, 37.788639, 36.460648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783907, 38.150402, 36.324772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918303, -0.120527, 0.377085,
		0.300096, -0.409296, -0.861637,
		0.258190, 0.904406, -0.339688,
		29.861364, 38.421722, 36.222866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186354, 37.904701, 35.814301>,  <29.680632, 37.788639, 36.460648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186354, 37.904701, 35.814301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227846, 38.178379, 36.103054>,  <30.252743, 38.342587, 36.276306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227846, 38.178379, 36.103054>,  <30.186354, 37.904701, 35.814301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227846, 38.178379, 36.103054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969985, -0.230083, 0.078686,
		0.219930, 0.692055, -0.687525,
		0.103733, 0.684194, 0.721885,
		30.258966, 38.383636, 36.319618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884912, 38.286716, 35.797054>,  <30.186354, 37.904701, 35.814301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884912, 38.286716, 35.797054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793243, 38.312748, 36.185535>,  <30.738241, 38.328365, 36.418625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793243, 38.312748, 36.185535>,  <30.884912, 38.286716, 35.797054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793243, 38.312748, 36.185535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958540, -0.158504, 0.236806,
		0.169351, 0.985211, -0.026054,
		-0.229175, 0.065077, 0.971207,
		30.724491, 38.332272, 36.476898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424467, 38.678600, 36.252773>,  <30.884912, 38.286716, 35.797054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424467, 38.678600, 36.252773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219807, 38.405491, 36.461399>,  <31.097012, 38.241627, 36.586575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219807, 38.405491, 36.461399>,  <31.424467, 38.678600, 36.252773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219807, 38.405491, 36.461399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823739, -0.217226, 0.523705,
		-0.244274, 0.697589, 0.673572,
		-0.511649, -0.682775, 0.521569,
		31.066313, 38.200657, 36.617870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329124, 38.767200, 36.991375>,  <31.424467, 38.678600, 36.252773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329124, 38.767200, 36.991375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375774, 38.384575, 36.884502>,  <31.403765, 38.154999, 36.820381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375774, 38.384575, 36.884502>,  <31.329124, 38.767200, 36.991375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375774, 38.384575, 36.884502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827927, -0.054954, 0.558137,
		-0.548576, -0.286297, 0.785556,
		0.116624, -0.956564, -0.267179,
		31.410761, 38.097607, 36.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302975, 38.385807, 37.662926>,  <31.329124, 38.767200, 36.991375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302975, 38.385807, 37.662926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489902, 38.142883, 37.405930>,  <31.602058, 37.997131, 37.251732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489902, 38.142883, 37.405930>,  <31.302975, 38.385807, 37.662926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489902, 38.142883, 37.405930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828975, 0.048427, 0.557185,
		-0.307268, -0.792991, 0.526073,
		0.467319, -0.607306, -0.642489,
		31.630098, 37.960693, 37.213184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465019, 37.882065, 38.035686>,  <31.302975, 38.385807, 37.662926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465019, 37.882065, 38.035686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719826, 37.884418, 37.727356>,  <31.872709, 37.885830, 37.542358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719826, 37.884418, 37.727356>,  <31.465019, 37.882065, 38.035686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719826, 37.884418, 37.727356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769533, -0.063269, 0.635465,
		-0.045028, -0.997979, -0.044833,
		0.637017, 0.005887, -0.770828,
		31.910931, 37.886185, 37.496109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953451, 37.371304, 38.167500>,  <31.465019, 37.882065, 38.035686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953451, 37.371304, 38.167500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151573, 37.584217, 37.892883>,  <32.270447, 37.711967, 37.728111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151573, 37.584217, 37.892883>,  <31.953451, 37.371304, 38.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151573, 37.584217, 37.892883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836253, -0.078113, 0.542752,
		0.235271, -0.842953, -0.483815,
		0.495307, 0.532286, -0.686544,
		32.300167, 37.743904, 37.686920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492775, 37.046188, 38.043827>,  <31.953451, 37.371304, 38.167500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492775, 37.046188, 38.043827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590401, 37.413853, 37.920170>,  <32.648975, 37.634453, 37.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590401, 37.413853, 37.920170>,  <32.492775, 37.046188, 38.043827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590401, 37.413853, 37.920170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837597, -0.039146, 0.544885,
		0.488735, -0.391930, -0.779441,
		0.244069, 0.919162, -0.309147,
		32.663620, 37.689602, 37.827427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158146, 37.020210, 38.038258>,  <32.492775, 37.046188, 38.043827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158146, 37.020210, 38.038258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078178, 37.412125, 38.040985>,  <33.030197, 37.647274, 38.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078178, 37.412125, 38.040985>,  <33.158146, 37.020210, 38.038258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078178, 37.412125, 38.040985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726416, 0.143542, 0.672098,
		0.657537, 0.139314, -0.740430,
		-0.199915, 0.979790, 0.006816,
		33.018204, 37.706062, 38.043030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667206, 37.373421, 37.962360>,  <33.158146, 37.020210, 38.038258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667206, 37.373421, 37.962360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447884, 37.629623, 38.177441>,  <33.316292, 37.783344, 38.306488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447884, 37.629623, 38.177441>,  <33.667206, 37.373421, 37.962360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447884, 37.629623, 38.177441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737396, 0.067001, 0.672130,
		0.394476, 0.765026, -0.509042,
		-0.548303, 0.640504, 0.537697,
		33.283394, 37.821774, 38.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199760, 37.804203, 38.250832>,  <33.667206, 37.373421, 37.962360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199760, 37.804203, 38.250832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882378, 37.892582, 38.477676>,  <33.691948, 37.945610, 38.613781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882378, 37.892582, 38.477676>,  <34.199760, 37.804203, 38.250832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882378, 37.892582, 38.477676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584670, 0.017839, 0.811075,
		0.169091, 0.975122, -0.143338,
		-0.793454, 0.220951, 0.567108,
		33.644341, 37.958866, 38.647808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459682, 38.269531, 38.626595>,  <34.199760, 37.804203, 38.250832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459682, 38.269531, 38.626595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129963, 38.170097, 38.830059>,  <33.932133, 38.110435, 38.952137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129963, 38.170097, 38.830059>,  <34.459682, 38.269531, 38.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129963, 38.170097, 38.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518073, 0.031149, 0.854769,
		-0.228330, 0.968108, 0.103111,
		-0.824297, -0.248588, 0.508663,
		33.882675, 38.095520, 38.982658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502316, 38.718895, 39.220001>,  <34.459682, 38.269531, 38.626595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502316, 38.718895, 39.220001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253105, 38.417641, 39.304501>,  <34.103577, 38.236889, 39.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253105, 38.417641, 39.304501>,  <34.502316, 38.718895, 39.220001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253105, 38.417641, 39.304501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369015, -0.044878, 0.928340,
		-0.689683, 0.656335, 0.305877,
		-0.623029, -0.753133, 0.211246,
		34.066196, 38.191700, 39.367874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128510, 38.882484, 39.822292>,  <34.502316, 38.718895, 39.220001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128510, 38.882484, 39.822292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 38.483349, 39.804863>,  <34.159992, 38.243866, 39.794407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 38.483349, 39.804863>,  <34.128510, 38.882484, 39.822292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148186, 38.483349, 39.804863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291039, -0.027411, 0.956318,
		-0.955446, -0.059727, 0.289062,
		0.049194, -0.997838, -0.043573,
		34.162945, 38.183998, 39.791790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697948, 38.686390, 40.328457>,  <34.128510, 38.882484, 39.822292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697948, 38.686390, 40.328457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931335, 38.368572, 40.261211>,  <34.071365, 38.177879, 40.220863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931335, 38.368572, 40.261211>,  <33.697948, 38.686390, 40.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931335, 38.368572, 40.261211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010467, -0.199627, 0.979816,
		-0.812070, -0.573448, -0.108159,
		0.583466, -0.794548, -0.168113,
		34.106377, 38.130207, 40.210777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396542, 38.169498, 40.736717>,  <33.697948, 38.686390, 40.328457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396542, 38.169498, 40.736717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756664, 38.010166, 40.666546>,  <33.972740, 37.914566, 40.624443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756664, 38.010166, 40.666546>,  <33.396542, 38.169498, 40.736717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756664, 38.010166, 40.666546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029638, -0.458222, 0.888343,
		-0.434244, -0.794583, -0.424347,
		0.900308, -0.398335, -0.175430,
		34.026756, 37.890667, 40.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375111, 37.277527, 40.813484>,  <33.396542, 38.169498, 40.736717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375111, 37.277527, 40.813484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741322, 37.428459, 40.869236>,  <33.961048, 37.519020, 40.902687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741322, 37.428459, 40.869236>,  <33.375111, 37.277527, 40.813484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741322, 37.428459, 40.869236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029596, -0.408740, 0.912171,
		0.401159, -0.830995, -0.385381,
		0.915530, 0.377331, 0.139376,
		34.015980, 37.541656, 40.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628345, 36.722000, 41.261292>,  <33.375111, 37.277527, 40.813484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628345, 36.722000, 41.261292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866001, 37.040497, 41.306885>,  <34.008595, 37.231594, 41.334240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866001, 37.040497, 41.306885>,  <33.628345, 36.722000, 41.261292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866001, 37.040497, 41.306885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084414, -0.202645, 0.975607,
		0.799918, -0.570028, -0.187614,
		0.594143, 0.796243, 0.113981,
		34.044243, 37.279369, 41.341080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288990, 36.485718, 41.558498>,  <33.628345, 36.722000, 41.261292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288990, 36.485718, 41.558498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251854, 36.874363, 41.645542>,  <34.229572, 37.107548, 41.697769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251854, 36.874363, 41.645542>,  <34.288990, 36.485718, 41.558498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251854, 36.874363, 41.645542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033141, -0.221451, 0.974608,
		0.995129, 0.083271, 0.052759,
		-0.092840, 0.971610, 0.217612,
		34.224003, 37.165848, 41.710827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777153, 36.718433, 42.109360>,  <34.288990, 36.485718, 41.558498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777153, 36.718433, 42.109360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465412, 36.968857, 42.099121>,  <34.278366, 37.119110, 42.092979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465412, 36.968857, 42.099121>,  <34.777153, 36.718433, 42.109360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465412, 36.968857, 42.099121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148671, -0.145080, 0.978186,
		0.608693, 0.766157, 0.206146,
		-0.779352, 0.626063, -0.025596,
		34.231606, 37.156677, 42.091442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963352, 37.154255, 42.612782>,  <34.777153, 36.718433, 42.109360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963352, 37.154255, 42.612782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567265, 37.196926, 42.576824>,  <34.329613, 37.222530, 42.555248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567265, 37.196926, 42.576824>,  <34.963352, 37.154255, 42.612782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567265, 37.196926, 42.576824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094878, -0.042599, 0.994577,
		0.102274, 0.993380, 0.052304,
		-0.990221, 0.106681, -0.089893,
		34.270199, 37.228931, 42.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803997, 37.599277, 43.206181>,  <34.963352, 37.154255, 42.612782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803997, 37.599277, 43.206181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454857, 37.435154, 43.100517>,  <34.245373, 37.336681, 43.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454857, 37.435154, 43.100517>,  <34.803997, 37.599277, 43.206181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454857, 37.435154, 43.100517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258776, -0.069764, 0.963415,
		-0.413728, 0.909274, -0.045285,
		-0.872849, -0.410310, -0.264161,
		34.193001, 37.312061, 43.021271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409031, 37.747276, 43.752869>,  <34.803997, 37.599277, 43.206181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409031, 37.747276, 43.752869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185421, 37.463299, 43.581535>,  <34.051254, 37.292912, 43.478737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185421, 37.463299, 43.581535>,  <34.409031, 37.747276, 43.752869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185421, 37.463299, 43.581535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426359, -0.196932, 0.882857,
		-0.711130, 0.676166, -0.192600,
		-0.559028, -0.709942, -0.428333,
		34.017712, 37.250317, 43.453037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645370, 37.890938, 43.946136>,  <34.409031, 37.747276, 43.752869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645370, 37.890938, 43.946136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697372, 37.509552, 43.837330>,  <33.728573, 37.280720, 43.772045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697372, 37.509552, 43.837330>,  <33.645370, 37.890938, 43.946136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697372, 37.509552, 43.837330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504740, -0.299784, 0.809548,
		-0.853426, 0.032052, -0.520228,
		0.130008, -0.953469, -0.272021,
		33.736374, 37.223511, 43.755722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064934, 37.576241, 44.102654>,  <33.645370, 37.890938, 43.946136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064934, 37.576241, 44.102654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311089, 37.264446, 44.055843>,  <33.458782, 37.077370, 44.027756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311089, 37.264446, 44.055843>,  <33.064934, 37.576241, 44.102654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311089, 37.264446, 44.055843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457591, -0.474179, 0.752173,
		-0.641804, -0.409326, -0.648491,
		0.615385, -0.779491, -0.117025,
		33.495705, 37.030598, 44.020737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563118, 36.969685, 44.139755>,  <33.064934, 37.576241, 44.102654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563118, 36.969685, 44.139755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933781, 36.849625, 44.230278>,  <33.156178, 36.777588, 44.284592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933781, 36.849625, 44.230278>,  <32.563118, 36.969685, 44.139755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933781, 36.849625, 44.230278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353072, -0.488349, 0.798032,
		-0.129017, -0.819404, -0.558508,
		0.926658, -0.300154, 0.226304,
		33.211777, 36.759579, 44.298168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647591, 36.198071, 44.170799>,  <32.563118, 36.969685, 44.139755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647591, 36.198071, 44.170799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950142, 36.322437, 44.401009>,  <33.131672, 36.397057, 44.539135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950142, 36.322437, 44.401009>,  <32.647591, 36.198071, 44.170799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950142, 36.322437, 44.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249459, -0.676231, 0.693167,
		0.604701, -0.667866, -0.433926,
		0.756377, 0.310913, 0.575524,
		33.177055, 36.415710, 44.573666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701546, 35.595863, 44.677345>,  <32.647591, 36.198071, 44.170799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701546, 35.595863, 44.677345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915359, 35.901642, 44.821510>,  <33.043648, 36.085110, 44.908009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915359, 35.901642, 44.821510>,  <32.701546, 35.595863, 44.677345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915359, 35.901642, 44.821510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209742, -0.293120, 0.932786,
		0.818710, -0.574195, 0.003655,
		0.534530, 0.764448, 0.360413,
		33.075718, 36.130978, 44.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171780, 35.313271, 45.159981>,  <32.701546, 35.595863, 44.677345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171780, 35.313271, 45.159981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115723, 35.695377, 45.264156>,  <33.082088, 35.924641, 45.326660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115723, 35.695377, 45.264156>,  <33.171780, 35.313271, 45.159981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115723, 35.695377, 45.264156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052226, -0.269800, 0.961499,
		0.988753, 0.121146, 0.087700,
		-0.140144, 0.955265, 0.260438,
		33.073681, 35.981956, 45.342289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631374, 35.442741, 45.746967>,  <33.171780, 35.313271, 45.159981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631374, 35.442741, 45.746967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386578, 35.758926, 45.757034>,  <33.239700, 35.948639, 45.763077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386578, 35.758926, 45.757034>,  <33.631374, 35.442741, 45.746967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386578, 35.758926, 45.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031674, -0.007303, 0.999472,
		0.790228, 0.612468, -0.020568,
		-0.611994, 0.790462, 0.025171,
		33.202980, 35.996063, 45.764584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901653, 35.802017, 46.274166>,  <33.631374, 35.442741, 45.746967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901653, 35.802017, 46.274166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527985, 35.936184, 46.225483>,  <33.303783, 36.016682, 46.196274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527985, 35.936184, 46.225483>,  <33.901653, 35.802017, 46.274166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527985, 35.936184, 46.225483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122313, 0.019416, 0.992302,
		0.335196, 0.941871, 0.022888,
		-0.934175, 0.335415, -0.121711,
		33.247730, 36.036808, 46.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839027, 36.481323, 46.632542>,  <33.901653, 35.802017, 46.274166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839027, 36.481323, 46.632542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484497, 36.297962, 46.606346>,  <33.271778, 36.187946, 46.590630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484497, 36.297962, 46.606346>,  <33.839027, 36.481323, 46.632542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484497, 36.297962, 46.606346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005437, -0.131108, 0.991353,
		-0.463029, 0.879018, 0.113712,
		-0.886326, -0.458407, -0.065487,
		33.218597, 36.160439, 46.586700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471695, 36.664707, 47.262882>,  <33.839027, 36.481323, 46.632542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471695, 36.664707, 47.262882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248421, 36.359692, 47.132057>,  <33.114456, 36.176682, 47.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248421, 36.359692, 47.132057>,  <33.471695, 36.664707, 47.262882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248421, 36.359692, 47.132057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044628, -0.366025, 0.929534,
		-0.828516, 0.533447, 0.170279,
		-0.558184, -0.762535, -0.327064,
		33.080967, 36.130932, 47.033939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803165, 36.636696, 47.726658>,  <33.471695, 36.664707, 47.262882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803165, 36.636696, 47.726658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873371, 36.278286, 47.563526>,  <32.915493, 36.063240, 47.465645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873371, 36.278286, 47.563526>,  <32.803165, 36.636696, 47.726658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873371, 36.278286, 47.563526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056077, -0.404492, 0.912821,
		-0.982878, -0.183084, -0.020748,
		0.175516, -0.896028, -0.407833,
		32.926025, 36.009476, 47.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426769, 36.333118, 48.154789>,  <32.803165, 36.636696, 47.726658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426769, 36.333118, 48.154789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641121, 36.055218, 47.962894>,  <32.769733, 35.888477, 47.847759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641121, 36.055218, 47.962894>,  <32.426769, 36.333118, 48.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641121, 36.055218, 47.962894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083078, -0.522062, 0.848852,
		-0.840195, -0.494741, -0.222045,
		0.535883, -0.694754, -0.479736,
		32.801888, 35.846790, 47.818974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146805, 35.681553, 48.345856>,  <32.426769, 36.333118, 48.154789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146805, 35.681553, 48.345856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511513, 35.603920, 48.201069>,  <32.730335, 35.557343, 48.114197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511513, 35.603920, 48.201069>,  <32.146805, 35.681553, 48.345856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511513, 35.603920, 48.201069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201992, -0.555463, 0.806635,
		-0.357607, -0.808576, -0.467250,
		0.911766, -0.194078, -0.361963,
		32.785042, 35.545696, 48.092480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145733, 34.994926, 48.522076>,  <32.146805, 35.681553, 48.345856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145733, 34.994926, 48.522076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520504, 35.118137, 48.456009>,  <32.745369, 35.192066, 48.416370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520504, 35.118137, 48.456009>,  <32.145733, 34.994926, 48.522076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520504, 35.118137, 48.456009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318884, -0.559882, 0.764751,
		0.143094, -0.769187, -0.622796,
		0.936930, 0.308031, -0.165166,
		32.801582, 35.210548, 48.406460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504887, 34.461426, 48.651642>,  <32.145733, 34.994926, 48.522076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504887, 34.461426, 48.651642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807186, 34.723087, 48.639515>,  <32.988567, 34.880085, 48.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807186, 34.723087, 48.639515>,  <32.504887, 34.461426, 48.651642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807186, 34.723087, 48.639515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482647, -0.525122, 0.700927,
		0.442599, -0.544356, -0.712588,
		0.755750, 0.654158, -0.030313,
		33.033913, 34.919334, 48.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095688, 34.147755, 48.641094>,  <32.504887, 34.461426, 48.651642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095688, 34.147755, 48.641094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202972, 34.495777, 48.806534>,  <33.267342, 34.704590, 48.905796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202972, 34.495777, 48.806534>,  <33.095688, 34.147755, 48.641094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202972, 34.495777, 48.806534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491413, -0.492833, 0.718073,
		0.828600, 0.010654, -0.559740,
		0.268208, 0.870059, 0.413597,
		33.283436, 34.756794, 48.930614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878960, 34.080494, 48.833218>,  <33.095688, 34.147755, 48.641094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878960, 34.080494, 48.833218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711838, 34.368916, 49.054314>,  <33.611565, 34.541969, 49.186970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711838, 34.368916, 49.054314>,  <33.878960, 34.080494, 48.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711838, 34.368916, 49.054314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293660, -0.468552, 0.833201,
		0.859769, 0.510433, -0.015982,
		-0.417805, 0.721053, 0.552740,
		33.586498, 34.585232, 49.220135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350174, 34.068226, 49.392380>,  <33.878960, 34.080494, 48.833218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350174, 34.068226, 49.392380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019806, 34.239597, 49.538975>,  <33.821587, 34.342419, 49.626934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019806, 34.239597, 49.538975>,  <34.350174, 34.068226, 49.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019806, 34.239597, 49.538975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110389, -0.514579, 0.850307,
		0.552881, 0.742739, 0.377706,
		-0.825916, 0.428425, 0.366491,
		33.772030, 34.368126, 49.648922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536873, 34.275249, 50.102253>,  <34.350174, 34.068226, 49.392380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536873, 34.275249, 50.102253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139359, 34.254112, 50.063080>,  <33.900848, 34.241428, 50.039577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139359, 34.254112, 50.063080>,  <34.536873, 34.275249, 50.102253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139359, 34.254112, 50.063080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075822, -0.322602, 0.943493,
		-0.081451, 0.945058, 0.316592,
		-0.993789, -0.052844, -0.097932,
		33.841221, 34.238258, 50.033699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360031, 34.618553, 50.725178>,  <34.536873, 34.275249, 50.102253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360031, 34.618553, 50.725178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059460, 34.391720, 50.590260>,  <33.879116, 34.255619, 50.509308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059460, 34.391720, 50.590260>,  <34.360031, 34.618553, 50.725178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059460, 34.391720, 50.590260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107713, -0.398909, 0.910642,
		-0.650964, 0.720613, 0.238669,
		-0.751428, -0.567087, -0.337295,
		33.834030, 34.221592, 50.489071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762341, 34.666679, 51.247009>,  <34.360031, 34.618553, 50.725178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762341, 34.666679, 51.247009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678993, 34.327404, 51.052212>,  <33.628986, 34.123840, 50.935333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678993, 34.327404, 51.052212>,  <33.762341, 34.666679, 51.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678993, 34.327404, 51.052212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259936, -0.431990, 0.863607,
		-0.942876, 0.306535, -0.130462,
		-0.208368, -0.848186, -0.486993,
		33.616482, 34.072948, 50.906113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006241, 34.418415, 51.448059>,  <33.762341, 34.666679, 51.247009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006241, 34.418415, 51.448059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204567, 34.101715, 51.305340>,  <33.323563, 33.911697, 51.219707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204567, 34.101715, 51.305340>,  <33.006241, 34.418415, 51.448059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204567, 34.101715, 51.305340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203308, -0.505267, 0.838672,
		-0.844296, -0.343283, -0.411486,
		0.495812, -0.791746, -0.356803,
		33.353310, 33.864193, 51.198299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593914, 33.703941, 51.399590>,  <33.006241, 34.418415, 51.448059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593914, 33.703941, 51.399590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983574, 33.627956, 51.448494>,  <33.217369, 33.582367, 51.477837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983574, 33.627956, 51.448494>,  <32.593914, 33.703941, 51.399590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983574, 33.627956, 51.448494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215011, -0.613606, 0.759775,
		-0.069308, -0.766422, -0.638588,
		0.974150, -0.189961, 0.122261,
		33.275818, 33.570969, 51.485172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720196, 32.945370, 51.220570>,  <32.593914, 33.703941, 51.399590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720196, 32.945370, 51.220570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978031, 33.064358, 51.502285>,  <33.132732, 33.135750, 51.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978031, 33.064358, 51.502285>,  <32.720196, 32.945370, 51.220570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978031, 33.064358, 51.502285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112267, -0.874385, 0.472067,
		0.756242, -0.383357, -0.530223,
		0.644589, 0.297470, 0.704285,
		33.171410, 33.153599, 51.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840622, 32.268051, 51.285275>,  <32.720196, 32.945370, 51.220570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840622, 32.268051, 51.285275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050735, 31.941734, 51.188480>,  <33.176804, 31.745943, 51.130405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050735, 31.941734, 51.188480>,  <32.840622, 32.268051, 51.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050735, 31.941734, 51.188480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806150, 0.386064, 0.448416,
		-0.272392, -0.430623, 0.860445,
		0.525285, -0.815793, -0.241986,
		33.208321, 31.696997, 51.115883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091919, 31.876225, 51.801441>,  <32.840622, 32.268051, 51.285275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091919, 31.876225, 51.801441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364357, 31.848652, 51.509865>,  <33.527821, 31.832109, 51.334919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364357, 31.848652, 51.509865>,  <33.091919, 31.876225, 51.801441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364357, 31.848652, 51.509865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665324, 0.473921, 0.576838,
		0.305700, -0.877865, 0.368648,
		0.681096, -0.068931, -0.728942,
		33.568687, 31.827972, 51.291183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749245, 31.540869, 51.988445>,  <33.091919, 31.876225, 51.801441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749245, 31.540869, 51.988445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834816, 31.829693, 51.725273>,  <33.886158, 32.002987, 51.567371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834816, 31.829693, 51.725273>,  <33.749245, 31.540869, 51.988445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834816, 31.829693, 51.725273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767520, 0.292394, 0.570455,
		0.604276, -0.627006, -0.491645,
		0.213924, 0.722059, -0.657926,
		33.898994, 32.046310, 51.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498669, 31.573296, 51.709400>,  <33.749245, 31.540869, 51.988445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498669, 31.573296, 51.709400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345825, 31.942913, 51.704746>,  <34.254120, 32.164684, 51.701954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345825, 31.942913, 51.704746>,  <34.498669, 31.573296, 51.709400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345825, 31.942913, 51.704746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629913, 0.269655, 0.728351,
		0.676167, 0.270979, -0.685105,
		-0.382110, 0.924044, -0.011639,
		34.231194, 32.220127, 51.701256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928688, 31.075491, 52.104645>,  <34.498669, 31.573296, 51.709400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928688, 31.075491, 52.104645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627174, 30.882408, 51.926296>,  <34.446266, 30.766558, 51.819286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627174, 30.882408, 51.926296>,  <34.928688, 31.075491, 52.104645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627174, 30.882408, 51.926296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294209, 0.854627, -0.427848,
		0.587581, -0.191325, -0.786221,
		-0.753783, -0.482709, -0.445872,
		34.401039, 30.737595, 51.792534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960297, 30.975649, 51.349762>,  <34.928688, 31.075491, 52.104645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960297, 30.975649, 51.349762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563515, 30.994869, 51.396606>,  <34.325447, 31.006401, 51.424713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563515, 30.994869, 51.396606>,  <34.960297, 30.975649, 51.349762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563515, 30.994869, 51.396606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070478, 0.558832, -0.826281,
		-0.105146, -0.827888, -0.550950,
		-0.991956, 0.048051, 0.117107,
		34.265926, 31.009285, 51.431740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579445, 30.644278, 50.770378>,  <34.960297, 30.975649, 51.349762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579445, 30.644278, 50.770378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344711, 30.919800, 50.940636>,  <34.203873, 31.085114, 51.042789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344711, 30.919800, 50.940636>,  <34.579445, 30.644278, 50.770378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344711, 30.919800, 50.940636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366996, 0.242319, -0.898107,
		-0.721764, -0.683248, 0.110589,
		-0.586831, 0.688806, 0.425646,
		34.168663, 31.126442, 51.068329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866093, 30.578026, 50.550064>,  <34.579445, 30.644278, 50.770378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866093, 30.578026, 50.550064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855160, 30.963257, 50.657200>,  <33.848602, 31.194395, 50.721481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855160, 30.963257, 50.657200>,  <33.866093, 30.578026, 50.550064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855160, 30.963257, 50.657200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512736, 0.216501, -0.830800,
		-0.858111, -0.160034, 0.487888,
		-0.027328, 0.963077, 0.267837,
		33.846962, 31.252180, 50.737553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242294, 30.875443, 50.416550>,  <33.866093, 30.578026, 50.550064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242294, 30.875443, 50.416550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473724, 31.201088, 50.436405>,  <33.612583, 31.396475, 50.448318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473724, 31.201088, 50.436405>,  <33.242294, 30.875443, 50.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473724, 31.201088, 50.436405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204843, 0.203953, -0.957310,
		-0.789484, 0.543712, 0.284768,
		0.578580, 0.814113, 0.049642,
		33.647297, 31.445322, 50.451298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861759, 31.478249, 50.252419>,  <33.242294, 30.875443, 50.416550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861759, 31.478249, 50.252419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242531, 31.550394, 50.153389>,  <33.470993, 31.593681, 50.093971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242531, 31.550394, 50.153389>,  <32.861759, 31.478249, 50.252419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242531, 31.550394, 50.153389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301646, 0.411539, -0.860026,
		-0.053232, 0.893367, 0.446164,
		0.951933, 0.180365, -0.247573,
		33.528111, 31.604504, 50.079117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842865, 32.077732, 49.779648>,  <32.861759, 31.478249, 50.252419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842865, 32.077732, 49.779648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207092, 31.922787, 49.721939>,  <33.425629, 31.829821, 49.687313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207092, 31.922787, 49.721939>,  <32.842865, 32.077732, 49.779648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207092, 31.922787, 49.721939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011919, 0.324278, -0.945887,
		0.413185, 0.863015, 0.290660,
		0.910569, -0.387362, -0.144274,
		33.480263, 31.806578, 49.678658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173965, 32.610821, 49.539902>,  <32.842865, 32.077732, 49.779648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173965, 32.610821, 49.539902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398933, 32.300774, 49.424747>,  <33.533913, 32.114746, 49.355656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398933, 32.300774, 49.424747>,  <33.173965, 32.610821, 49.539902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398933, 32.300774, 49.424747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008766, 0.353737, -0.935304,
		0.826805, 0.523511, 0.205743,
		0.562420, -0.775117, -0.287883,
		33.567661, 32.068237, 49.338383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607811, 32.945576, 49.059715>,  <33.173965, 32.610821, 49.539902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607811, 32.945576, 49.059715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662071, 32.555874, 48.987682>,  <33.694626, 32.322052, 48.944462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662071, 32.555874, 48.987682>,  <33.607811, 32.945576, 49.059715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662071, 32.555874, 48.987682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018873, 0.179193, -0.983633,
		0.990577, 0.136829, 0.005920,
		0.135650, -0.974252, -0.180087,
		33.702766, 32.263599, 48.933655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129898, 32.897648, 48.646793>,  <33.607811, 32.945576, 49.059715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129898, 32.897648, 48.646793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908501, 32.567875, 48.599537>,  <33.775661, 32.370010, 48.571182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908501, 32.567875, 48.599537>,  <34.129898, 32.897648, 48.646793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908501, 32.567875, 48.599537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133828, 0.228049, -0.964408,
		0.822028, -0.517987, -0.236557,
		-0.553498, -0.824429, -0.118142,
		33.742451, 32.320545, 48.564095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388779, 32.671814, 48.128677>,  <34.129898, 32.897648, 48.646793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388779, 32.671814, 48.128677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036137, 32.483658, 48.113152>,  <33.824551, 32.370766, 48.103836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036137, 32.483658, 48.113152>,  <34.388779, 32.671814, 48.128677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036137, 32.483658, 48.113152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026985, 0.031873, -0.999128,
		0.471216, -0.881883, -0.015406,
		-0.881605, -0.470389, -0.038817,
		33.771656, 32.342541, 48.101505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456806, 32.187813, 47.610531>,  <34.388779, 32.671814, 48.128677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456806, 32.187813, 47.610531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062840, 32.228935, 47.666195>,  <33.826458, 32.253609, 47.699593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062840, 32.228935, 47.666195>,  <34.456806, 32.187813, 47.610531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062840, 32.228935, 47.666195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134070, 0.054867, -0.989452,
		-0.109356, -0.993187, -0.040257,
		-0.984919, 0.102805, 0.139157,
		33.767365, 32.259777, 47.707943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171745, 31.758820, 47.065201>,  <34.456806, 32.187813, 47.610531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171745, 31.758820, 47.065201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902542, 32.032314, 47.178028>,  <33.741020, 32.196411, 47.245724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902542, 32.032314, 47.178028>,  <34.171745, 31.758820, 47.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902542, 32.032314, 47.178028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248209, 0.150459, -0.956950,
		-0.696744, -0.714047, 0.068450,
		-0.673008, 0.683739, 0.282064,
		33.700638, 32.237434, 47.262646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611889, 31.634493, 46.700443>,  <34.171745, 31.758820, 47.065201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611889, 31.634493, 46.700443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577480, 32.011856, 46.828560>,  <33.556835, 32.238274, 46.905430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577480, 32.011856, 46.828560>,  <33.611889, 31.634493, 46.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577480, 32.011856, 46.828560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296635, 0.282648, -0.912205,
		-0.951109, -0.173478, 0.255534,
		-0.086021, 0.943406, 0.320288,
		33.551674, 32.294876, 46.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022240, 31.858919, 46.353809>,  <33.611889, 31.634493, 46.700443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022240, 31.858919, 46.353809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215961, 32.187340, 46.474686>,  <33.332195, 32.384392, 46.547211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215961, 32.187340, 46.474686>,  <33.022240, 31.858919, 46.353809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215961, 32.187340, 46.474686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090336, 0.390489, -0.916165,
		-0.870221, 0.416408, 0.263287,
		0.484309, 0.821050, 0.302195,
		33.361256, 32.433655, 46.565346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854179, 32.330673, 45.899536>,  <33.022240, 31.858919, 46.353809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854179, 32.330673, 45.899536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170872, 32.520813, 46.053009>,  <33.360886, 32.634895, 46.145092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170872, 32.520813, 46.053009>,  <32.854179, 32.330673, 45.899536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170872, 32.520813, 46.053009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229224, 0.351020, -0.907877,
		-0.566237, 0.806741, 0.168951,
		0.791727, 0.475346, 0.383685,
		33.408390, 32.663418, 46.168114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696953, 33.134609, 45.849518>,  <32.854179, 32.330673, 45.899536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696953, 33.134609, 45.849518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088428, 33.056938, 45.876236>,  <33.323315, 33.010334, 45.892265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088428, 33.056938, 45.876236>,  <32.696953, 33.134609, 45.849518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088428, 33.056938, 45.876236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141959, 0.404766, -0.903334,
		0.148374, 0.893565, 0.423705,
		0.978689, -0.194180, 0.066792,
		33.382034, 32.998684, 45.896275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976376, 33.714390, 45.653252>,  <32.696953, 33.134609, 45.849518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976376, 33.714390, 45.653252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283859, 33.462910, 45.606224>,  <33.468349, 33.312023, 45.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283859, 33.462910, 45.606224>,  <32.976376, 33.714390, 45.653252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283859, 33.462910, 45.606224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186188, 0.395811, -0.899260,
		0.611898, 0.669380, 0.421320,
		0.768710, -0.628700, -0.117566,
		33.514473, 33.274300, 45.570953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436256, 34.114563, 45.325264>,  <32.976376, 33.714390, 45.653252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436256, 34.114563, 45.325264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589886, 33.746521, 45.294563>,  <33.682064, 33.525696, 45.276142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589886, 33.746521, 45.294563>,  <33.436256, 34.114563, 45.325264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589886, 33.746521, 45.294563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214542, 0.169785, -0.961844,
		0.898032, 0.352950, 0.262612,
		0.384070, -0.920109, -0.076750,
		33.705109, 33.470490, 45.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104877, 34.174149, 45.079010>,  <33.436256, 34.114563, 45.325264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104877, 34.174149, 45.079010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996914, 33.804092, 44.972225>,  <33.932137, 33.582058, 44.908154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996914, 33.804092, 44.972225>,  <34.104877, 34.174149, 45.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996914, 33.804092, 44.972225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017994, 0.272359, -0.962027,
		0.962717, -0.264465, -0.056866,
		-0.269911, -0.925137, -0.266964,
		33.915939, 33.526550, 44.892136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502029, 34.103878, 44.427711>,  <34.104877, 34.174149, 45.079010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502029, 34.103878, 44.427711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215622, 33.825554, 44.450233>,  <34.043777, 33.658562, 44.463749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215622, 33.825554, 44.450233>,  <34.502029, 34.103878, 44.427711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215622, 33.825554, 44.450233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266197, 0.197581, -0.943452,
		0.645335, -0.690518, -0.326693,
		-0.716018, -0.695807, 0.056308,
		34.000816, 33.616814, 44.467125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603569, 33.525528, 43.955135>,  <34.502029, 34.103878, 44.427711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603569, 33.525528, 43.955135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206856, 33.500832, 43.999954>,  <33.968826, 33.486012, 44.026848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206856, 33.500832, 43.999954>,  <34.603569, 33.525528, 43.955135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206856, 33.500832, 43.999954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127549, 0.409186, -0.903492,
		0.009937, -0.910360, -0.413699,
		-0.991783, -0.061745, 0.112050,
		33.909321, 33.482307, 44.033569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302998, 33.248341, 43.363605>,  <34.603569, 33.525528, 43.955135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302998, 33.248341, 43.363605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965599, 33.391491, 43.523827>,  <33.763161, 33.477379, 43.619957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965599, 33.391491, 43.523827>,  <34.302998, 33.248341, 43.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965599, 33.391491, 43.523827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262240, 0.376425, -0.888557,
		-0.468767, -0.854536, -0.223665,
		-0.843497, 0.357873, 0.400549,
		33.712551, 33.498852, 43.643990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807243, 32.946732, 43.017944>,  <34.302998, 33.248341, 43.363605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807243, 32.946732, 43.017944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604065, 33.256042, 43.169750>,  <33.482159, 33.441631, 43.260834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604065, 33.256042, 43.169750>,  <33.807243, 32.946732, 43.017944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604065, 33.256042, 43.169750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372289, 0.200234, -0.906260,
		-0.776785, -0.601617, 0.186176,
		-0.507943, 0.773281, 0.379514,
		33.451683, 33.488026, 43.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184910, 32.943638, 42.650574>,  <33.807243, 32.946732, 43.017944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184910, 32.943638, 42.650574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232426, 33.309753, 42.804527>,  <33.260937, 33.529423, 42.896900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232426, 33.309753, 42.804527>,  <33.184910, 32.943638, 42.650574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232426, 33.309753, 42.804527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458366, 0.394403, -0.796458,
		-0.880788, -0.081803, 0.466390,
		0.118794, 0.915289, 0.384882,
		33.268063, 33.584339, 42.919991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477032, 33.247971, 42.743679>,  <33.184910, 32.943638, 42.650574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477032, 33.247971, 42.743679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764950, 33.517269, 42.675999>,  <32.937702, 33.678848, 42.635391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764950, 33.517269, 42.675999>,  <32.477032, 33.247971, 42.743679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764950, 33.517269, 42.675999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485558, 0.314098, -0.815828,
		-0.496106, 0.669390, 0.552988,
		0.719800, 0.673245, -0.169202,
		32.980888, 33.719242, 42.625237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112301, 33.918762, 42.532417>,  <32.477032, 33.247971, 42.743679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112301, 33.918762, 42.532417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493790, 33.932747, 42.412960>,  <32.722683, 33.941135, 42.341286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493790, 33.932747, 42.412960>,  <32.112301, 33.918762, 42.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493790, 33.932747, 42.412960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285086, 0.420857, -0.861165,
		0.095580, 0.906453, 0.411348,
		0.953725, 0.034960, -0.298642,
		32.779907, 33.943233, 42.323368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093727, 34.546146, 42.068459>,  <32.112301, 33.918762, 42.532417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093727, 34.546146, 42.068459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445251, 34.368839, 41.997787>,  <32.656166, 34.262455, 41.955387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445251, 34.368839, 41.997787>,  <32.093727, 34.546146, 42.068459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445251, 34.368839, 41.997787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085977, 0.511279, -0.855103,
		0.469368, 0.736281, 0.487426,
		0.878807, -0.443266, -0.176675,
		32.708893, 34.235859, 41.944786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559235, 35.165211, 41.894104>,  <32.093727, 34.546146, 42.068459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559235, 35.165211, 41.894104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667488, 34.812832, 41.738834>,  <32.732441, 34.601402, 41.645672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667488, 34.812832, 41.738834>,  <32.559235, 35.165211, 41.894104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667488, 34.812832, 41.738834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192776, 0.345465, -0.918418,
		0.943183, 0.323388, -0.076331,
		0.270636, -0.880951, -0.388178,
		32.748680, 34.548546, 41.622379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875328, 35.405403, 41.414673>,  <32.559235, 35.165211, 41.894104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875328, 35.405403, 41.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820217, 35.023609, 41.308861>,  <32.787151, 34.794533, 41.245373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820217, 35.023609, 41.308861>,  <32.875328, 35.405403, 41.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820217, 35.023609, 41.308861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076836, 0.276573, -0.957916,
		0.987479, -0.111650, -0.111443,
		-0.137774, -0.954485, -0.264532,
		32.778885, 34.737263, 41.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313602, 35.306484, 40.763828>,  <32.875328, 35.405403, 41.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313602, 35.306484, 40.763828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039814, 35.014885, 40.766762>,  <32.875542, 34.839924, 40.768520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039814, 35.014885, 40.766762>,  <33.313602, 35.306484, 40.763828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039814, 35.014885, 40.766762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092513, 0.076880, -0.992739,
		0.723146, -0.680180, -0.120064,
		-0.684472, -0.729002, 0.007330,
		32.834473, 34.796185, 40.768959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348312, 35.001644, 40.041061>,  <33.313602, 35.306484, 40.763828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348312, 35.001644, 40.041061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011696, 34.860580, 40.204742>,  <32.809727, 34.775944, 40.302952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011696, 34.860580, 40.204742>,  <33.348312, 35.001644, 40.041061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011696, 34.860580, 40.204742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342510, -0.237443, -0.909015,
		0.417734, -0.905126, 0.079028,
		-0.841538, -0.352659, 0.409202,
		32.759235, 34.754784, 40.327503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245144, 34.403740, 39.566521>,  <33.348312, 35.001644, 40.041061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245144, 34.403740, 39.566521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912773, 34.533859, 39.747074>,  <32.713352, 34.611931, 39.855404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912773, 34.533859, 39.747074>,  <33.245144, 34.403740, 39.566521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912773, 34.533859, 39.747074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502729, -0.091362, -0.859603,
		-0.238391, -0.941186, 0.239454,
		-0.830923, 0.325302, 0.451382,
		32.663498, 34.631451, 39.882488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646763, 33.887196, 39.468754>,  <33.245144, 34.403740, 39.566521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646763, 33.887196, 39.468754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493626, 34.248653, 39.545544>,  <32.401745, 34.465530, 39.591618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493626, 34.248653, 39.545544>,  <32.646763, 33.887196, 39.468754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493626, 34.248653, 39.545544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514667, -0.036060, -0.856631,
		-0.767172, -0.426753, 0.478883,
		-0.382838, 0.903649, 0.191972,
		32.378773, 34.519749, 39.603134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965836, 33.847725, 39.232563>,  <32.646763, 33.887196, 39.468754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965836, 33.847725, 39.232563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005665, 34.245438, 39.247967>,  <32.029564, 34.484066, 39.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005665, 34.245438, 39.247967>,  <31.965836, 33.847725, 39.232563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005665, 34.245438, 39.247967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368443, 0.072795, -0.926796,
		-0.924302, 0.078097, 0.373586,
		0.099575, 0.994285, 0.038510,
		32.035538, 34.543724, 39.259521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393209, 34.070114, 38.865524>,  <31.965836, 33.847725, 39.232563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393209, 34.070114, 38.865524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649832, 34.376942, 38.864487>,  <31.803804, 34.561039, 38.863865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649832, 34.376942, 38.864487>,  <31.393209, 34.070114, 38.865524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649832, 34.376942, 38.864487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374599, 0.310348, -0.873705,
		-0.669389, 0.561503, 0.486450,
		0.641556, 0.767071, -0.002595,
		31.842299, 34.607063, 38.863708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993231, 34.460499, 38.463757>,  <31.393209, 34.070114, 38.865524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993231, 34.460499, 38.463757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342878, 34.654243, 38.478218>,  <31.552668, 34.770493, 38.486897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342878, 34.654243, 38.478218>,  <30.993231, 34.460499, 38.463757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342878, 34.654243, 38.478218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221305, 0.463435, -0.858051,
		-0.432365, 0.742038, 0.512290,
		0.874120, 0.484363, 0.036156,
		31.605114, 34.799553, 38.489063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858000, 35.301636, 38.378700>,  <30.993231, 34.460499, 38.463757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858000, 35.301636, 38.378700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231995, 35.243336, 38.249359>,  <31.456392, 35.208355, 38.171753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231995, 35.243336, 38.249359>,  <30.858000, 35.301636, 38.378700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231995, 35.243336, 38.249359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228519, 0.449678, -0.863463,
		0.271253, 0.881219, 0.387137,
		0.934987, -0.145749, -0.323352,
		31.512491, 35.199612, 38.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257561, 36.035954, 38.172024>,  <30.858000, 35.301636, 38.378700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257561, 36.035954, 38.172024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406372, 35.720646, 37.975971>,  <31.495659, 35.531460, 37.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406372, 35.720646, 37.975971>,  <31.257561, 36.035954, 38.172024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406372, 35.720646, 37.975971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243372, 0.426719, -0.871023,
		0.895747, 0.443330, -0.033090,
		0.372031, -0.788270, -0.490127,
		31.517981, 35.484165, 37.828934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464405, 36.380337, 37.586254>,  <31.257561, 36.035954, 38.172024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464405, 36.380337, 37.586254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488878, 35.992752, 37.490452>,  <31.503563, 35.760201, 37.432972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488878, 35.992752, 37.490452>,  <31.464405, 36.380337, 37.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488878, 35.992752, 37.490452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216675, 0.221341, -0.950821,
		0.974325, 0.110070, -0.196408,
		0.061183, -0.968965, -0.239507,
		31.507233, 35.702065, 37.418598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882921, 36.360043, 37.076603>,  <31.464405, 36.380337, 37.586254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882921, 36.360043, 37.076603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662001, 36.027744, 37.048801>,  <31.529448, 35.828365, 37.032120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662001, 36.027744, 37.048801>,  <31.882921, 36.360043, 37.076603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662001, 36.027744, 37.048801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017006, 0.094579, -0.995372,
		0.833470, -0.548565, -0.066363,
		-0.552303, -0.830741, -0.069500,
		31.496309, 35.778522, 37.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150455, 36.109688, 36.526272>,  <31.882921, 36.360043, 37.076603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150455, 36.109688, 36.526272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778221, 35.974083, 36.581524>,  <31.554880, 35.892719, 36.614677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778221, 35.974083, 36.581524>,  <32.150455, 36.109688, 36.526272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778221, 35.974083, 36.581524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258823, 0.342458, -0.903179,
		0.258877, -0.876241, -0.406430,
		-0.930587, -0.339006, 0.138137,
		31.499044, 35.872379, 36.622963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991154, 35.746006, 35.942604>,  <32.150455, 36.109688, 36.526272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991154, 35.746006, 35.942604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626009, 35.801556, 36.096172>,  <31.406923, 35.834885, 36.188313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626009, 35.801556, 36.096172>,  <31.991154, 35.746006, 35.942604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626009, 35.801556, 36.096172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384677, 0.022467, -0.922778,
		-0.136780, -0.990054, 0.032915,
		-0.912861, 0.138879, 0.383924,
		31.352150, 35.843220, 36.211349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709454, 35.545956, 35.663368>,  <31.991154, 35.746006, 35.942604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709454, 35.545956, 35.663368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007751, 35.520863, 35.398060>,  <33.186729, 35.505806, 35.238876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007751, 35.520863, 35.398060>,  <32.709454, 35.545956, 35.663368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007751, 35.520863, 35.398060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478642, -0.642055, 0.598888,
		-0.463423, -0.764088, -0.448786,
		0.745749, -0.062730, -0.663267,
		33.231476, 35.502045, 35.199081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813313, 34.842068, 35.273331>,  <32.709454, 35.545956, 35.663368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813313, 34.842068, 35.273331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152523, 35.045929, 35.331440>,  <33.356049, 35.168247, 35.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152523, 35.045929, 35.331440>,  <32.813313, 34.842068, 35.273331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152523, 35.045929, 35.331440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329940, -0.722254, 0.607856,
		0.414719, -0.467547, -0.780646,
		0.848026, 0.509656, 0.145270,
		33.406929, 35.198826, 35.375023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377773, 34.410416, 35.164730>,  <32.813313, 34.842068, 35.273331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377773, 34.410416, 35.164730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476738, 34.708019, 35.413002>,  <33.536118, 34.886581, 35.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476738, 34.708019, 35.413002>,  <33.377773, 34.410416, 35.164730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476738, 34.708019, 35.413002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338939, -0.666577, 0.663925,
		0.907695, 0.046110, -0.417091,
		0.247409, 0.744009, 0.620677,
		33.550961, 34.931221, 35.599205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977024, 34.182476, 35.379185>,  <33.377773, 34.410416, 35.164730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977024, 34.182476, 35.379185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901844, 34.481182, 35.634377>,  <33.856735, 34.660404, 35.787491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901844, 34.481182, 35.634377>,  <33.977024, 34.182476, 35.379185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901844, 34.481182, 35.634377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610252, -0.420175, 0.671600,
		0.769589, 0.515558, -0.376739,
		-0.187952, 0.746761, 0.637982,
		33.845459, 34.705212, 35.825771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570919, 34.249577, 35.631886>,  <33.977024, 34.182476, 35.379185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570919, 34.249577, 35.631886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350780, 34.447536, 35.900867>,  <34.218697, 34.566311, 36.062256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350780, 34.447536, 35.900867>,  <34.570919, 34.249577, 35.631886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350780, 34.447536, 35.900867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533419, -0.411187, 0.739181,
		0.642322, 0.765507, -0.037691,
		-0.550351, 0.494898, 0.672451,
		34.185677, 34.596004, 36.102604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063160, 34.457100, 36.148685>,  <34.570919, 34.249577, 35.631886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063160, 34.457100, 36.148685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701504, 34.433491, 36.317944>,  <34.484512, 34.419323, 36.419498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701504, 34.433491, 36.317944>,  <35.063160, 34.457100, 36.148685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701504, 34.433491, 36.317944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405088, -0.433242, 0.805112,
		0.135803, 0.899343, 0.415620,
		-0.904136, -0.059026, 0.423148,
		34.430264, 34.415783, 36.444889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129681, 34.719833, 36.868580>,  <35.063160, 34.457100, 36.148685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129681, 34.719833, 36.868580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786884, 34.513760, 36.873390>,  <34.581207, 34.390114, 36.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786884, 34.513760, 36.873390>,  <35.129681, 34.719833, 36.868580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786884, 34.513760, 36.873390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251619, -0.397956, 0.882224,
		-0.449725, 0.759086, 0.470676,
		-0.856992, -0.515189, 0.012030,
		34.529785, 34.359203, 36.876999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696022, 34.835896, 37.440674>,  <35.129681, 34.719833, 36.868580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696022, 34.835896, 37.440674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528122, 34.486336, 37.342598>,  <34.427383, 34.276600, 37.283752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528122, 34.486336, 37.342598>,  <34.696022, 34.835896, 37.440674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528122, 34.486336, 37.342598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228222, -0.363085, 0.903374,
		-0.878480, 0.323230, 0.351846,
		-0.419747, -0.873895, -0.245194,
		34.402199, 34.224167, 37.269039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104580, 34.691135, 37.971252>,  <34.696022, 34.835896, 37.440674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104580, 34.691135, 37.971252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212563, 34.342701, 37.807137>,  <34.277351, 34.133640, 37.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212563, 34.342701, 37.807137>,  <34.104580, 34.691135, 37.971252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212563, 34.342701, 37.807137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159296, -0.379833, 0.911236,
		-0.949605, -0.311350, 0.036222,
		0.269955, -0.871084, -0.410288,
		34.293549, 34.081375, 37.684052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819088, 34.200691, 38.458775>,  <34.104580, 34.691135, 37.971252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819088, 34.200691, 38.458775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082172, 33.970051, 38.264893>,  <34.240025, 33.831665, 38.148563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082172, 33.970051, 38.264893>,  <33.819088, 34.200691, 38.458775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082172, 33.970051, 38.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373813, -0.308806, 0.874588,
		-0.653971, -0.756417, 0.012437,
		0.657713, -0.576604, -0.484708,
		34.279488, 33.797070, 38.119480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747246, 33.558460, 38.769184>,  <33.819088, 34.200691, 38.458775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747246, 33.558460, 38.769184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103485, 33.545868, 38.587704>,  <34.317230, 33.538311, 38.478817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103485, 33.545868, 38.587704>,  <33.747246, 33.558460, 38.769184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103485, 33.545868, 38.587704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437421, -0.213772, 0.873478,
		-0.124488, -0.976376, -0.176614,
		0.890599, -0.031483, -0.453699,
		34.370667, 33.536423, 38.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992481, 32.892685, 38.931820>,  <33.747246, 33.558460, 38.769184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992481, 32.892685, 38.931820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294334, 33.145370, 38.860859>,  <34.475445, 33.296982, 38.818283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294334, 33.145370, 38.860859>,  <33.992481, 32.892685, 38.931820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294334, 33.145370, 38.860859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370300, -0.186813, 0.909933,
		0.541674, -0.752356, -0.374898,
		0.754630, 0.631712, -0.177406,
		34.520725, 33.334885, 38.807636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605274, 32.537937, 38.996399>,  <33.992481, 32.892685, 38.931820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605274, 32.537937, 38.996399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736576, 32.910042, 39.061958>,  <34.815357, 33.133305, 39.101295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736576, 32.910042, 39.061958>,  <34.605274, 32.537937, 38.996399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736576, 32.910042, 39.061958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432467, -0.302266, 0.849475,
		0.839776, -0.207960, -0.501527,
		0.328252, 0.930262, 0.163900,
		34.835052, 33.189121, 39.111130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309196, 32.600368, 39.056370>,  <34.605274, 32.537937, 38.996399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309196, 32.600368, 39.056370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176044, 32.904758, 39.279118>,  <35.096153, 33.087395, 39.412766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176044, 32.904758, 39.279118>,  <35.309196, 32.600368, 39.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176044, 32.904758, 39.279118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403629, -0.418725, 0.813482,
		0.852217, 0.495561, -0.167767,
		-0.332882, 0.760979, 0.556867,
		35.076180, 33.133053, 39.446178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712185, 32.429775, 39.594536>,  <35.309196, 32.600368, 39.056370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712185, 32.429775, 39.594536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480354, 32.727043, 39.728279>,  <35.341255, 32.905403, 39.808525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480354, 32.727043, 39.728279>,  <35.712185, 32.429775, 39.594536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480354, 32.727043, 39.728279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238223, -0.237863, 0.941632,
		0.779322, 0.625397, -0.039180,
		-0.579574, 0.743168, 0.334356,
		35.306480, 32.949993, 39.828587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118557, 32.876545, 40.100643>,  <35.712185, 32.429775, 39.594536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118557, 32.876545, 40.100643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 32.914165, 40.181702>,  <35.494736, 32.936737, 40.230335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728668, 32.914165, 40.181702>,  <36.118557, 32.876545, 40.100643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728668, 32.914165, 40.181702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189241, -0.134472, 0.972679,
		0.118734, 0.986444, 0.113274,
		-0.974726, 0.094054, 0.202642,
		35.436249, 32.942383, 40.242493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281933, 33.250401, 40.670681>,  <36.118557, 32.876545, 40.100643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281933, 33.250401, 40.670681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889095, 33.179890, 40.697285>,  <35.653393, 33.137585, 40.713249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889095, 33.179890, 40.697285>,  <36.281933, 33.250401, 40.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889095, 33.179890, 40.697285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092480, -0.143456, 0.985326,
		-0.164145, 0.973832, 0.157189,
		-0.982091, -0.176273, 0.066513,
		35.594467, 33.127007, 40.717239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051353, 33.676468, 41.287670>,  <36.281933, 33.250401, 40.670681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051353, 33.676468, 41.287670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772823, 33.398148, 41.217262>,  <35.605705, 33.231155, 41.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772823, 33.398148, 41.217262>,  <36.051353, 33.676468, 41.287670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772823, 33.398148, 41.217262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124290, -0.124635, 0.984387,
		-0.706879, 0.707335, 0.000306,
		-0.696329, -0.695804, -0.176017,
		35.563923, 33.189407, 41.164455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472366, 33.858372, 41.714279>,  <36.051353, 33.676468, 41.287670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472366, 33.858372, 41.714279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445995, 33.470390, 41.620613>,  <35.430172, 33.237602, 41.564411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445995, 33.470390, 41.620613>,  <35.472366, 33.858372, 41.714279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445995, 33.470390, 41.620613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101853, -0.226911, 0.968575,
		-0.992612, 0.087707, -0.083834,
		-0.065928, -0.969958, -0.234168,
		35.426216, 33.179401, 41.550362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880955, 33.562923, 42.071636>,  <35.472366, 33.858372, 41.714279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880955, 33.562923, 42.071636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123844, 33.255589, 41.990711>,  <35.269577, 33.071186, 41.942158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123844, 33.255589, 41.990711>,  <34.880955, 33.562923, 42.071636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123844, 33.255589, 41.990711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052533, -0.215250, 0.975145,
		-0.792792, -0.602760, -0.090342,
		0.607225, -0.768341, -0.202314,
		35.306011, 33.025085, 41.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625999, 32.992092, 42.410931>,  <34.880955, 33.562923, 42.071636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625999, 32.992092, 42.410931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004627, 32.876530, 42.353619>,  <35.231804, 32.807194, 42.319229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004627, 32.876530, 42.353619>,  <34.625999, 32.992092, 42.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004627, 32.876530, 42.353619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004102, -0.433484, 0.901152,
		-0.322458, -0.853596, -0.409140,
		0.946575, -0.288905, -0.143282,
		35.288601, 32.789856, 42.310635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607456, 32.467106, 42.817451>,  <34.625999, 32.992092, 42.410931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607456, 32.467106, 42.817451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000305, 32.509068, 42.754940>,  <35.236015, 32.534245, 42.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000305, 32.509068, 42.754940>,  <34.607456, 32.467106, 42.817451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000305, 32.509068, 42.754940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176947, -0.231536, 0.956599,
		0.064167, -0.967154, -0.245960,
		0.982126, 0.104904, -0.156278,
		35.294945, 32.540539, 42.708057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884834, 31.870081, 43.014889>,  <34.607456, 32.467106, 42.817451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884834, 31.870081, 43.014889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198856, 32.117847, 43.013241>,  <35.387268, 32.266506, 43.012253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198856, 32.117847, 43.013241>,  <34.884834, 31.870081, 43.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198856, 32.117847, 43.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232065, -0.287941, 0.929105,
		0.574317, -0.730352, -0.369793,
		0.785052, 0.619417, -0.004120,
		35.434372, 32.303673, 43.012005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402515, 31.436041, 43.233547>,  <34.884834, 31.870081, 43.014889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402515, 31.436041, 43.233547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551514, 31.798906, 43.311836>,  <35.640911, 32.016624, 43.358810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551514, 31.798906, 43.311836>,  <35.402515, 31.436041, 43.233547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551514, 31.798906, 43.311836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062961, -0.235114, 0.969927,
		0.925897, -0.348968, -0.144693,
		0.372492, 0.907162, 0.195720,
		35.663261, 32.071056, 43.370552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090687, 31.386465, 43.586395>,  <35.402515, 31.436041, 43.233547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090687, 31.386465, 43.586395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948948, 31.743320, 43.698483>,  <35.863903, 31.957434, 43.765736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948948, 31.743320, 43.698483>,  <36.090687, 31.386465, 43.586395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948948, 31.743320, 43.698483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233783, -0.205628, 0.950296,
		0.905418, 0.402249, -0.135702,
		-0.354351, 0.892140, 0.280218,
		35.842644, 32.010963, 43.782547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541821, 31.608831, 44.094727>,  <36.090687, 31.386465, 43.586395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541821, 31.608831, 44.094727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237831, 31.859856, 44.162376>,  <36.055435, 32.010471, 44.202965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237831, 31.859856, 44.162376>,  <36.541821, 31.608831, 44.094727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237831, 31.859856, 44.162376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137721, -0.098813, 0.985530,
		0.635190, 0.772273, -0.011333,
		-0.759978, 0.627559, 0.169123,
		36.009838, 32.048122, 44.213112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789341, 32.123508, 44.538429>,  <36.541821, 31.608831, 44.094727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789341, 32.123508, 44.538429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395004, 32.145226, 44.601875>,  <36.158401, 32.158257, 44.639942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395004, 32.145226, 44.601875>,  <36.789341, 32.123508, 44.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395004, 32.145226, 44.601875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166019, 0.184371, 0.968734,
		0.023352, 0.981356, -0.190775,
		-0.985846, 0.054295, 0.158618,
		36.099251, 32.161514, 44.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773067, 32.574722, 45.051651>,  <36.789341, 32.123508, 44.538429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773067, 32.574722, 45.051651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405338, 32.418800, 45.073181>,  <36.184700, 32.325245, 45.086098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405338, 32.418800, 45.073181>,  <36.773067, 32.574722, 45.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405338, 32.418800, 45.073181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049615, 0.020862, 0.998550,
		-0.390366, 0.920660, 0.000161,
		-0.919322, -0.389809, 0.053822,
		36.129543, 32.301857, 45.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413857, 33.019787, 45.466686>,  <36.773067, 32.574722, 45.051651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413857, 33.019787, 45.466686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191494, 32.688107, 45.489975>,  <36.058075, 32.489098, 45.503948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191494, 32.688107, 45.489975>,  <36.413857, 33.019787, 45.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191494, 32.688107, 45.489975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038105, 0.095394, 0.994710,
		-0.830372, 0.550746, -0.084626,
		-0.555906, -0.829204, 0.058226,
		36.024723, 32.439346, 45.507442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812042, 33.114159, 45.878647>,  <36.413857, 33.019787, 45.466686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812042, 33.114159, 45.878647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825249, 32.715340, 45.906372>,  <35.833172, 32.476048, 45.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825249, 32.715340, 45.906372>,  <35.812042, 33.114159, 45.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825249, 32.715340, 45.906372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047099, 0.067717, 0.996592,
		-0.998344, -0.036172, -0.044724,
		0.033020, -0.997049, 0.069309,
		35.835155, 32.416225, 45.927166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295109, 32.954124, 46.328579>,  <35.812042, 33.114159, 45.878647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295109, 32.954124, 46.328579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570095, 32.663681, 46.333565>,  <35.735085, 32.489414, 46.336555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570095, 32.663681, 46.333565>,  <35.295109, 32.954124, 46.328579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570095, 32.663681, 46.333565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004818, 0.012598, 0.999909,
		-0.726204, -0.687459, 0.005162,
		0.687462, -0.726114, 0.012461,
		35.776333, 32.445847, 46.337303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028385, 32.470070, 46.779648>,  <35.295109, 32.954124, 46.328579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028385, 32.470070, 46.779648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419147, 32.385933, 46.764675>,  <35.653606, 32.335449, 46.755692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419147, 32.385933, 46.764675>,  <35.028385, 32.470070, 46.779648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419147, 32.385933, 46.764675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054673, 0.076749, 0.995550,
		-0.206537, -0.974610, 0.086478,
		0.976910, -0.210346, -0.037433,
		35.712219, 32.322830, 46.753445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111462, 32.120396, 47.296619>,  <35.028385, 32.470070, 46.779648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111462, 32.120396, 47.296619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500538, 32.179424, 47.224964>,  <35.733986, 32.214840, 47.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500538, 32.179424, 47.224964>,  <35.111462, 32.120396, 47.296619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500538, 32.179424, 47.224964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180868, 0.001749, 0.983506,
		0.145449, -0.989050, -0.024990,
		0.972693, 0.147570, -0.179142,
		35.792347, 32.223694, 47.171223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489296, 31.653334, 47.740528>,  <35.111462, 32.120396, 47.296619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489296, 31.653334, 47.740528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748962, 31.936893, 47.630219>,  <35.904762, 32.107029, 47.564034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748962, 31.936893, 47.630219>,  <35.489296, 31.653334, 47.740528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748962, 31.936893, 47.630219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152173, 0.234184, 0.960209,
		0.745272, -0.665297, 0.044148,
		0.649163, 0.708899, -0.275771,
		35.943710, 32.149563, 47.547489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076550, 31.425934, 48.104771>,  <35.489296, 31.653334, 47.740528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076550, 31.425934, 48.104771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094517, 31.820168, 48.039524>,  <36.105297, 32.056709, 48.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094517, 31.820168, 48.039524>,  <36.076550, 31.425934, 48.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094517, 31.820168, 48.039524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280801, 0.144242, 0.948866,
		0.958714, -0.088427, -0.270273,
		0.044920, 0.985584, -0.163117,
		36.107994, 32.115841, 47.990589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614021, 31.724688, 48.628174>,  <36.076550, 31.425934, 48.104771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614021, 31.724688, 48.628174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417145, 32.044998, 48.491642>,  <36.299019, 32.237186, 48.409721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417145, 32.044998, 48.491642>,  <36.614021, 31.724688, 48.628174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417145, 32.044998, 48.491642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014980, 0.384266, 0.923101,
		0.870361, 0.459451, -0.177135,
		-0.492187, 0.800777, -0.341332,
		36.269489, 32.285233, 48.389244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048393, 32.198891, 48.857925>,  <36.614021, 31.724688, 48.628174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048393, 32.198891, 48.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690155, 32.356300, 48.774933>,  <36.475212, 32.450748, 48.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690155, 32.356300, 48.774933>,  <37.048393, 32.198891, 48.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690155, 32.356300, 48.774933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063909, 0.347737, 0.935411,
		0.440260, 0.851008, -0.286281,
		-0.895593, 0.393529, -0.207482,
		36.421478, 32.474358, 48.712688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116741, 32.977711, 49.114777>,  <37.048393, 32.198891, 48.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116741, 32.977711, 49.114777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739277, 32.847084, 49.093388>,  <36.512798, 32.768707, 49.080555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739277, 32.847084, 49.093388>,  <37.116741, 32.977711, 49.114777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739277, 32.847084, 49.093388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153060, 0.287488, 0.945475,
		-0.293388, 0.900392, -0.321275,
		-0.943661, -0.326565, -0.053469,
		36.456177, 32.749115, 49.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676876, 33.581902, 49.335503>,  <37.116741, 32.977711, 49.114777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676876, 33.581902, 49.335503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501179, 33.227779, 49.396564>,  <36.395760, 33.015305, 49.433201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501179, 33.227779, 49.396564>,  <36.676876, 33.581902, 49.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501179, 33.227779, 49.396564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153490, 0.241383, 0.958215,
		-0.885161, 0.397454, -0.241910,
		-0.439240, -0.885305, 0.152657,
		36.369408, 32.962189, 49.442360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156189, 33.833519, 49.964153>,  <36.676876, 33.581902, 49.335503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156189, 33.833519, 49.964153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516537, 34.005817, 49.942638>,  <36.732746, 34.109196, 49.929729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516537, 34.005817, 49.942638>,  <36.156189, 33.833519, 49.964153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516537, 34.005817, 49.942638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314681, 0.562677, -0.764441,
		-0.299018, 0.705586, 0.642447,
		0.900869, 0.430747, -0.053784,
		36.786797, 34.135040, 49.926502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029560, 34.497471, 49.811943>,  <36.156189, 33.833519, 49.964153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029560, 34.497471, 49.811943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404404, 34.443737, 49.683083>,  <36.629311, 34.411495, 49.605766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404404, 34.443737, 49.683083>,  <36.029560, 34.497471, 49.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404404, 34.443737, 49.683083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230926, 0.453459, -0.860841,
		0.261720, 0.881095, 0.393920,
		0.937110, -0.134333, -0.322147,
		36.685535, 34.403439, 49.586437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253761, 35.191372, 49.493763>,  <36.029560, 34.497471, 49.811943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253761, 35.191372, 49.493763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467838, 34.888306, 49.344364>,  <36.596287, 34.706467, 49.254723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467838, 34.888306, 49.344364>,  <36.253761, 35.191372, 49.493763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467838, 34.888306, 49.344364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015437, 0.433308, -0.901114,
		0.844588, 0.488037, 0.220208,
		0.535195, -0.757670, -0.373500,
		36.628395, 34.661003, 49.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717274, 35.541096, 48.983418>,  <36.253761, 35.191372, 49.493763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717274, 35.541096, 48.983418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736420, 35.155586, 48.878460>,  <36.747906, 34.924282, 48.815487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736420, 35.155586, 48.878460>,  <36.717274, 35.541096, 48.983418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736420, 35.155586, 48.878460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092997, 0.265852, -0.959518,
		0.994515, 0.021525, 0.102352,
		0.047865, -0.963773, -0.262393,
		36.750778, 34.866455, 48.799744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173229, 35.600082, 48.396320>,  <36.717274, 35.541096, 48.983418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173229, 35.600082, 48.396320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026978, 35.227936, 48.407181>,  <36.939228, 35.004650, 48.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026978, 35.227936, 48.407181>,  <37.173229, 35.600082, 48.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026978, 35.227936, 48.407181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004507, -0.027401, -0.999614,
		0.930749, -0.365612, 0.005826,
		-0.365630, -0.930364, 0.027151,
		36.917290, 34.948826, 48.415325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610893, 35.270874, 48.017307>,  <37.173229, 35.600082, 48.396320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610893, 35.270874, 48.017307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261166, 35.076828, 48.023315>,  <37.051327, 34.960400, 48.026920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261166, 35.076828, 48.023315>,  <37.610893, 35.270874, 48.017307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261166, 35.076828, 48.023315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039936, 0.041060, -0.998358,
		0.483699, -0.873487, -0.055273,
		-0.874323, -0.485112, 0.015023,
		36.998867, 34.931293, 48.027821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572586, 34.899895, 47.446819>,  <37.610893, 35.270874, 48.017307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572586, 34.899895, 47.446819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186440, 34.878681, 47.549000>,  <36.954750, 34.865952, 47.610310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186440, 34.878681, 47.549000>,  <37.572586, 34.899895, 47.446819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186440, 34.878681, 47.549000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247764, -0.120377, -0.961313,
		0.081734, -0.991311, 0.103067,
		-0.965367, -0.053036, 0.255450,
		36.896828, 34.862770, 47.625633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172142, 34.238785, 47.120255>,  <37.572586, 34.899895, 47.446819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172142, 34.238785, 47.120255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901371, 34.526962, 47.180553>,  <36.738907, 34.699871, 47.216732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901371, 34.526962, 47.180553>,  <37.172142, 34.238785, 47.120255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901371, 34.526962, 47.180553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243327, -0.025753, -0.969602,
		-0.694664, -0.693032, 0.192738,
		-0.676930, 0.720446, 0.150743,
		36.698292, 34.743095, 47.225777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768242, 34.237919, 46.546761>,  <37.172142, 34.238785, 47.120255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768242, 34.237919, 46.546761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647449, 34.581818, 46.711514>,  <36.574974, 34.788155, 46.810368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647449, 34.581818, 46.711514>,  <36.768242, 34.237919, 46.546761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647449, 34.581818, 46.711514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345168, 0.304137, -0.887896,
		-0.888633, -0.410295, 0.204913,
		-0.301977, 0.859744, 0.411886,
		36.556858, 34.839741, 46.835079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091618, 34.340797, 46.221703>,  <36.768242, 34.237919, 46.546761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091618, 34.340797, 46.221703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211338, 34.696354, 46.360435>,  <36.283169, 34.909687, 46.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211338, 34.696354, 46.360435>,  <36.091618, 34.340797, 46.221703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211338, 34.696354, 46.360435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411533, 0.448209, -0.793568,
		-0.860850, 0.094778, 0.499955,
		0.299297, 0.888890, 0.346836,
		36.301128, 34.963020, 46.464485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540703, 34.797939, 46.061790>,  <36.091618, 34.340797, 46.221703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540703, 34.797939, 46.061790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862640, 35.025440, 46.129612>,  <36.055801, 35.161942, 46.170307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862640, 35.025440, 46.129612>,  <35.540703, 34.797939, 46.061790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862640, 35.025440, 46.129612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179471, 0.505556, -0.843921,
		-0.565704, 0.648792, 0.508968,
		0.804841, 0.568755, 0.169556,
		36.104092, 35.196068, 46.180477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388638, 35.406101, 45.950813>,  <35.540703, 34.797939, 46.061790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388638, 35.406101, 45.950813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784725, 35.446144, 45.911953>,  <36.022377, 35.470169, 45.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784725, 35.446144, 45.911953>,  <35.388638, 35.406101, 45.950813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784725, 35.446144, 45.911953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128856, 0.389583, -0.911933,
		-0.053443, 0.915535, 0.398673,
		0.990222, 0.100108, -0.097152,
		36.081791, 35.476177, 45.882809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559338, 36.140259, 45.622398>,  <35.388638, 35.406101, 45.950813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559338, 36.140259, 45.622398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865551, 35.892723, 45.551979>,  <36.049278, 35.744202, 45.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865551, 35.892723, 45.551979>,  <35.559338, 36.140259, 45.622398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865551, 35.892723, 45.551979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040196, 0.319097, -0.946869,
		0.642137, 0.717785, 0.269155,
		0.765535, -0.618839, -0.176052,
		36.095211, 35.707073, 45.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983498, 36.509655, 45.191818>,  <35.559338, 36.140259, 45.622398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983498, 36.509655, 45.191818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095436, 36.129002, 45.141087>,  <36.162598, 35.900612, 45.110649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095436, 36.129002, 45.141087>,  <35.983498, 36.509655, 45.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095436, 36.129002, 45.141087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183975, 0.182813, -0.965781,
		0.942252, 0.246938, 0.226236,
		0.279847, -0.951631, -0.126825,
		36.179390, 35.843513, 45.103039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568726, 36.504040, 44.818111>,  <35.983498, 36.509655, 45.191818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568726, 36.504040, 44.818111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400536, 36.144405, 44.769386>,  <36.299622, 35.928623, 44.740150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400536, 36.144405, 44.769386>,  <36.568726, 36.504040, 44.818111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400536, 36.144405, 44.769386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135752, 0.070406, -0.988238,
		0.897092, -0.432064, 0.092449,
		-0.420473, -0.899090, -0.121814,
		36.274395, 35.874680, 44.732841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935680, 36.216461, 44.319714>,  <36.568726, 36.504040, 44.818111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935680, 36.216461, 44.319714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622765, 35.968121, 44.299423>,  <36.435017, 35.819118, 44.287251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622765, 35.968121, 44.299423>,  <36.935680, 36.216461, 44.319714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622765, 35.968121, 44.299423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190271, -0.160617, -0.968503,
		0.593147, -0.767299, 0.243778,
		-0.782287, -0.620849, -0.050726,
		36.388077, 35.781864, 44.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190460, 35.771065, 43.915604>,  <36.935680, 36.216461, 44.319714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190460, 35.771065, 43.915604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796055, 35.704723, 43.922215>,  <36.559414, 35.664917, 43.926182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796055, 35.704723, 43.922215>,  <37.190460, 35.771065, 43.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796055, 35.704723, 43.922215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025565, -0.248480, -0.968300,
		0.164705, -0.954332, 0.249244,
		-0.986012, -0.165855, 0.016528,
		36.500252, 35.654968, 43.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054024, 35.060158, 43.643303>,  <37.190460, 35.771065, 43.915604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054024, 35.060158, 43.643303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712429, 35.254341, 43.568432>,  <36.507473, 35.370850, 43.523510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712429, 35.254341, 43.568432>,  <37.054024, 35.060158, 43.643303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712429, 35.254341, 43.568432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018975, -0.388575, -0.921222,
		-0.519950, -0.783159, 0.341049,
		-0.853986, 0.485461, -0.187179,
		36.456234, 35.399979, 43.512280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579552, 34.543098, 43.358387>,  <37.054024, 35.060158, 43.643303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579552, 34.543098, 43.358387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432053, 34.900959, 43.257488>,  <36.343555, 35.115673, 43.196949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432053, 34.900959, 43.257488>,  <36.579552, 34.543098, 43.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432053, 34.900959, 43.257488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013118, -0.266335, -0.963791,
		-0.929438, -0.358703, 0.086474,
		-0.368746, 0.894650, -0.252247,
		36.321430, 35.169353, 43.181812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091835, 34.437199, 42.839611>,  <36.579552, 34.543098, 43.358387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091835, 34.437199, 42.839611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181889, 34.820721, 42.770313>,  <36.235920, 35.050835, 42.728733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181889, 34.820721, 42.770313>,  <36.091835, 34.437199, 42.839611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181889, 34.820721, 42.770313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046320, -0.167074, -0.984856,
		-0.973226, 0.229749, 0.006798,
		0.225133, 0.958802, -0.173243,
		36.249428, 35.108360, 42.718342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580502, 34.579994, 42.367611>,  <36.091835, 34.437199, 42.839611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580502, 34.579994, 42.367611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841812, 34.880344, 42.328812>,  <35.998600, 35.060555, 42.305531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841812, 34.880344, 42.328812>,  <35.580502, 34.579994, 42.367611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841812, 34.880344, 42.328812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117640, -0.025896, -0.992719,
		-0.747923, 0.659933, 0.071417,
		0.653278, 0.750878, -0.097002,
		36.037796, 35.105606, 42.299709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298981, 35.034599, 41.878319>,  <35.580502, 34.579994, 42.367611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298981, 35.034599, 41.878319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691559, 35.111008, 41.884956>,  <35.927105, 35.156853, 41.888939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691559, 35.111008, 41.884956>,  <35.298981, 35.034599, 41.878319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691559, 35.111008, 41.884956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017556, -0.003353, -0.999840,
		-0.190930, 0.981581, -0.006644,
		0.981447, 0.191016, 0.016592,
		35.985992, 35.168312, 41.889935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356853, 35.500225, 41.391228>,  <35.298981, 35.034599, 41.878319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356853, 35.500225, 41.391228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723171, 35.345085, 41.432980>,  <35.942963, 35.252003, 41.458031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723171, 35.345085, 41.432980>,  <35.356853, 35.500225, 41.391228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723171, 35.345085, 41.432980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093901, -0.045921, -0.994522,
		0.390514, 0.920580, -0.005635,
		0.915796, -0.387845, 0.104376,
		35.997910, 35.228733, 41.464291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648335, 35.796886, 40.869701>,  <35.356853, 35.500225, 41.391228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648335, 35.796886, 40.869701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928520, 35.524403, 40.954838>,  <36.096634, 35.360912, 41.005920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928520, 35.524403, 40.954838>,  <35.648335, 35.796886, 40.869701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928520, 35.524403, 40.954838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282428, -0.009304, -0.959243,
		0.655422, 0.732033, 0.185874,
		0.700469, -0.681205, 0.212845,
		36.138660, 35.320042, 41.018692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215473, 36.046604, 40.684399>,  <35.648335, 35.796886, 40.869701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215473, 36.046604, 40.684399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267418, 35.649994, 40.682941>,  <36.298584, 35.412029, 40.682068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267418, 35.649994, 40.682941>,  <36.215473, 36.046604, 40.684399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267418, 35.649994, 40.682941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496034, 0.068149, -0.865624,
		0.858537, 0.110600, 0.500681,
		0.129859, -0.991526, -0.003647,
		36.306377, 35.352535, 40.681847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907017, 35.981205, 40.487865>,  <36.215473, 36.046604, 40.684399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907017, 35.981205, 40.487865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721947, 35.636810, 40.403358>,  <36.610905, 35.430172, 40.352654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721947, 35.636810, 40.403358>,  <36.907017, 35.981205, 40.487865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721947, 35.636810, 40.403358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409066, 0.004085, -0.912496,
		0.786511, -0.508609, 0.350311,
		-0.462672, -0.860988, -0.211267,
		36.583145, 35.378513, 40.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403416, 35.569717, 40.226349>,  <36.907017, 35.981205, 40.487865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403416, 35.569717, 40.226349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075157, 35.382626, 40.095039>,  <36.878201, 35.270370, 40.016254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075157, 35.382626, 40.095039>,  <37.403416, 35.569717, 40.226349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075157, 35.382626, 40.095039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396254, -0.051878, -0.916674,
		0.411723, -0.882349, 0.227912,
		-0.820651, -0.467727, -0.328275,
		36.828960, 35.242306, 39.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638741, 35.010166, 39.829670>,  <37.403416, 35.569717, 40.226349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638741, 35.010166, 39.829670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260750, 35.036156, 39.701424>,  <37.033955, 35.051750, 39.624474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260750, 35.036156, 39.701424>,  <37.638741, 35.010166, 39.829670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260750, 35.036156, 39.701424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309940, -0.135754, -0.941014,
		-0.104667, -0.988610, 0.108147,
		-0.944977, 0.064974, -0.320619,
		36.977257, 35.055649, 39.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593998, 34.457279, 39.396889>,  <37.638741, 35.010166, 39.829670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593998, 34.457279, 39.396889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280724, 34.684334, 39.295383>,  <37.092758, 34.820568, 39.234478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280724, 34.684334, 39.295383>,  <37.593998, 34.457279, 39.396889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280724, 34.684334, 39.295383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218970, -0.130188, -0.967007,
		-0.581949, -0.812918, -0.022334,
		-0.783190, 0.567640, -0.253768,
		37.045765, 34.854626, 39.219254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268246, 34.104454, 38.806358>,  <37.593998, 34.457279, 39.396889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268246, 34.104454, 38.806358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159878, 34.489361, 38.796227>,  <37.094856, 34.720306, 38.790146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159878, 34.489361, 38.796227>,  <37.268246, 34.104454, 38.806358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159878, 34.489361, 38.796227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324182, 0.066426, -0.943660,
		-0.906372, -0.263866, -0.329946,
		-0.270916, 0.962269, -0.025334,
		37.078602, 34.778042, 38.788628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970558, 34.184990, 38.158207>,  <37.268246, 34.104454, 38.806358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970558, 34.184990, 38.158207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057491, 34.561264, 38.262413>,  <37.109650, 34.787029, 38.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057491, 34.561264, 38.262413>,  <36.970558, 34.184990, 38.158207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057491, 34.561264, 38.262413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129566, 0.236735, -0.962896,
		-0.967461, 0.243021, -0.070432,
		0.217330, 0.940690, 0.260519,
		37.122692, 34.843472, 38.340569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722157, 34.624630, 37.562946>,  <36.970558, 34.184990, 38.158207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722157, 34.624630, 37.562946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 34.830147, 37.770741>,  <37.159119, 34.953457, 37.895416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 34.830147, 37.770741>,  <36.722157, 34.624630, 37.562946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995258, 34.830147, 37.770741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374449, 0.364468, -0.852614,
		-0.627403, 0.776646, 0.056452,
		0.682754, 0.513794, 0.519482,
		37.200085, 34.984283, 37.926586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796261, 35.171211, 37.170128>,  <36.722157, 34.624630, 37.562946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796261, 35.171211, 37.170128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129539, 35.143894, 37.389626>,  <37.329506, 35.127502, 37.521324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129539, 35.143894, 37.389626>,  <36.796261, 35.171211, 37.170128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129539, 35.143894, 37.389626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547235, 0.244450, -0.800486,
		-0.079469, 0.967254, 0.241049,
		0.833197, -0.068296, 0.548742,
		37.379498, 35.123405, 37.554249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174404, 35.690853, 36.838127>,  <36.796261, 35.171211, 37.170128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174404, 35.690853, 36.838127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421764, 35.476795, 37.068325>,  <37.570179, 35.348358, 37.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421764, 35.476795, 37.068325>,  <37.174404, 35.690853, 36.838127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421764, 35.476795, 37.068325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730285, 0.120831, -0.672371,
		0.290280, 0.836073, 0.465532,
		0.618402, -0.535147, 0.575497,
		37.607285, 35.316250, 37.240974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783398, 36.103809, 36.799419>,  <37.174404, 35.690853, 36.838127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783398, 36.103809, 36.799419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889744, 35.748287, 36.948730>,  <37.953552, 35.534973, 37.038319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889744, 35.748287, 36.948730>,  <37.783398, 36.103809, 36.799419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889744, 35.748287, 36.948730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908843, 0.101983, -0.404479,
		0.321436, 0.446791, 0.834899,
		0.265863, -0.888807, 0.373282,
		37.969501, 35.481644, 37.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475845, 36.240601, 37.034248>,  <37.783398, 36.103809, 36.799419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475845, 36.240601, 37.034248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446564, 35.844692, 36.985256>,  <38.428993, 35.607147, 36.955860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446564, 35.844692, 36.985256>,  <38.475845, 36.240601, 37.034248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446564, 35.844692, 36.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951115, -0.032342, -0.307139,
		0.300035, -0.138979, 0.943750,
		-0.073209, -0.989767, -0.122481,
		38.424603, 35.547764, 36.948513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019413, 35.879707, 37.414398>,  <38.475845, 36.240601, 37.034248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019413, 35.879707, 37.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915249, 35.604820, 37.143127>,  <38.852749, 35.439888, 36.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915249, 35.604820, 37.143127>,  <39.019413, 35.879707, 37.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915249, 35.604820, 37.143127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962838, -0.132741, -0.235207,
		0.071618, -0.714221, 0.696247,
		-0.260411, -0.687218, -0.678172,
		38.837124, 35.398655, 36.939674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590050, 35.355724, 37.382874>,  <39.019413, 35.879707, 37.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590050, 35.355724, 37.382874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389076, 35.330757, 37.037930>,  <39.268494, 35.315777, 36.830963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389076, 35.330757, 37.037930>,  <39.590050, 35.355724, 37.382874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389076, 35.330757, 37.037930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861941, -0.114550, -0.493898,
		-0.067958, -0.991455, 0.111351,
		-0.502433, -0.062414, -0.862361,
		39.238346, 35.312035, 36.779221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924706, 34.825077, 37.058838>,  <39.590050, 35.355724, 37.382874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924706, 34.825077, 37.058838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760349, 35.008247, 36.743504>,  <39.661736, 35.118149, 36.554302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760349, 35.008247, 36.743504>,  <39.924706, 34.825077, 37.058838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760349, 35.008247, 36.743504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836454, -0.154615, -0.525775,
		-0.362653, -0.875444, -0.319501,
		-0.410887, 0.457922, -0.788340,
		39.637085, 35.145622, 36.507000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958138, 34.472908, 36.375202>,  <39.924706, 34.825077, 37.058838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958138, 34.472908, 36.375202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989243, 34.867023, 36.314323>,  <40.007904, 35.103493, 36.277798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989243, 34.867023, 36.314323>,  <39.958138, 34.472908, 36.375202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989243, 34.867023, 36.314323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856171, -0.144213, -0.496159,
		-0.510807, -0.091721, -0.854788,
		0.077763, 0.985287, -0.152194,
		40.012573, 35.162609, 36.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021240, 34.639530, 35.713337>,  <39.958138, 34.472908, 36.375202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021240, 34.639530, 35.713337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210815, 34.926067, 35.918175>,  <40.324562, 35.097988, 36.041077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210815, 34.926067, 35.918175>,  <40.021240, 34.639530, 35.713337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210815, 34.926067, 35.918175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834651, -0.180124, -0.520493,
		-0.280609, 0.674102, -0.683260,
		0.473937, 0.716339, 0.512096,
		40.352997, 35.140968, 36.071804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366615, 35.151913, 35.302479>,  <40.021240, 34.639530, 35.713337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366615, 35.151913, 35.302479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539509, 35.089878, 35.657810>,  <40.643246, 35.052658, 35.871010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539509, 35.089878, 35.657810>,  <40.366615, 35.151913, 35.302479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539509, 35.089878, 35.657810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680794, -0.589881, -0.434235,
		0.591350, 0.792458, -0.149384,
		0.432232, -0.155085, 0.888327,
		40.669178, 35.043354, 35.924309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129196, 35.400375, 35.358528>,  <40.366615, 35.151913, 35.302479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129196, 35.400375, 35.358528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997620, 35.100410, 35.588112>,  <40.918674, 34.920429, 35.725861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997620, 35.100410, 35.588112>,  <41.129196, 35.400375, 35.358528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997620, 35.100410, 35.588112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673972, -0.612153, -0.413559,
		0.661482, 0.250793, 0.706785,
		-0.328943, -0.749915, 0.573955,
		40.898937, 34.875435, 35.760300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544807, 35.010509, 35.117268>,  <41.129196, 35.400375, 35.358528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544807, 35.010509, 35.117268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344936, 34.771358, 35.367981>,  <41.225014, 34.627869, 35.518410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344936, 34.771358, 35.367981>,  <41.544807, 35.010509, 35.117268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344936, 34.771358, 35.367981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458994, -0.796412, -0.393767,
		0.734606, 0.090935, 0.672372,
		-0.499678, -0.597879, 0.626788,
		41.195034, 34.591995, 35.556019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066917, 34.532211, 35.540745>,  <41.544807, 35.010509, 35.117268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066917, 34.532211, 35.540745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704979, 34.394531, 35.440514>,  <41.487816, 34.311924, 35.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704979, 34.394531, 35.440514>,  <42.066917, 34.532211, 35.540745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704979, 34.394531, 35.440514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425717, -0.738453, -0.522926,
		-0.005047, -0.579839, 0.814715,
		-0.904842, -0.344199, -0.250574,
		41.433525, 34.291271, 35.365341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448380, 34.900906, 36.084953>,  <42.066917, 34.532211, 35.540745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448380, 34.900906, 36.084953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788643, 35.062225, 36.219845>,  <42.992802, 35.159019, 36.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788643, 35.062225, 36.219845>,  <42.448380, 34.900906, 36.084953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788643, 35.062225, 36.219845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110811, 0.764610, -0.634896,
		-0.513903, 0.502713, 0.695114,
		0.850661, 0.403301, 0.337229,
		43.043842, 35.183216, 36.321014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327103, 35.444294, 36.443802>,  <42.448380, 34.900906, 36.084953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327103, 35.444294, 36.443802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679630, 35.448658, 36.254841>,  <42.891148, 35.451279, 36.141464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679630, 35.448658, 36.254841>,  <42.327103, 35.444294, 36.443802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679630, 35.448658, 36.254841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369654, 0.638675, -0.674870,
		0.294347, 0.769399, 0.566908,
		0.881315, 0.010914, -0.472404,
		42.944023, 35.451931, 36.113121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240780, 36.054512, 36.218422>,  <42.327103, 35.444294, 36.443802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240780, 36.054512, 36.218422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532265, 35.883274, 36.004612>,  <42.707153, 35.780533, 35.876324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532265, 35.883274, 36.004612>,  <42.240780, 36.054512, 36.218422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532265, 35.883274, 36.004612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186586, 0.626891, -0.756435,
		0.658917, 0.650955, 0.376943,
		0.728707, -0.428095, -0.534528,
		42.750877, 35.754845, 35.844254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510708, 36.627247, 35.870525>,  <42.240780, 36.054512, 36.218422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510708, 36.627247, 35.870525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632416, 36.305416, 35.666534>,  <42.705441, 36.112316, 35.544140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632416, 36.305416, 35.666534>,  <42.510708, 36.627247, 35.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632416, 36.305416, 35.666534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023749, 0.528789, -0.848421,
		0.952290, 0.270261, 0.141786,
		0.304270, -0.804576, -0.509979,
		42.723698, 36.064045, 35.513542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053093, 36.908882, 35.391342>,  <42.510708, 36.627247, 35.870525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053093, 36.908882, 35.391342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911892, 36.570179, 35.232151>,  <42.827171, 36.366955, 35.136635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911892, 36.570179, 35.232151>,  <43.053093, 36.908882, 35.391342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911892, 36.570179, 35.232151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141391, 0.468754, -0.871939,
		0.924878, -0.251525, -0.285195,
		-0.353001, -0.846761, -0.397977,
		42.805992, 36.316151, 35.112759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418007, 36.832802, 34.759674>,  <43.053093, 36.908882, 35.391342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418007, 36.832802, 34.759674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118618, 36.572273, 34.709763>,  <42.938984, 36.415955, 34.679813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118618, 36.572273, 34.709763>,  <43.418007, 36.832802, 34.759674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118618, 36.572273, 34.709763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209814, 0.411066, -0.887132,
		0.629106, -0.637809, -0.444327,
		-0.748468, -0.651326, -0.124783,
		42.894077, 36.376877, 34.672329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598450, 36.534088, 34.082245>,  <43.418007, 36.832802, 34.759674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598450, 36.534088, 34.082245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211964, 36.457161, 34.150879>,  <42.980072, 36.411007, 34.192059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211964, 36.457161, 34.150879>,  <43.598450, 36.534088, 34.082245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211964, 36.457161, 34.150879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235846, 0.391238, -0.889556,
		0.103944, -0.899971, -0.423377,
		-0.966216, -0.192316, 0.171588,
		42.922100, 36.399467, 34.202354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332546, 36.108528, 33.571152>,  <43.598450, 36.534088, 34.082245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332546, 36.108528, 33.571152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028248, 36.317436, 33.725292>,  <42.845669, 36.442783, 33.817776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028248, 36.317436, 33.725292>,  <43.332546, 36.108528, 33.571152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028248, 36.317436, 33.725292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194041, 0.383550, -0.902905,
		-0.619364, -0.761656, -0.190442,
		-0.760747, 0.522273, 0.385349,
		42.800022, 36.474117, 33.840897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770161, 36.016258, 33.131477>,  <43.332546, 36.108528, 33.571152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770161, 36.016258, 33.131477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642941, 36.334396, 33.337879>,  <42.566608, 36.525280, 33.461720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642941, 36.334396, 33.337879>,  <42.770161, 36.016258, 33.131477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642941, 36.334396, 33.337879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061829, 0.525709, -0.848414,
		-0.946055, -0.301745, -0.118028,
		-0.318053, 0.795349, 0.516006,
		42.547523, 36.573002, 33.492680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150902, 36.308620, 32.794750>,  <42.770161, 36.016258, 33.131477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150902, 36.308620, 32.794750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302979, 36.604252, 33.017178>,  <42.394222, 36.781631, 33.150635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302979, 36.604252, 33.017178>,  <42.150902, 36.308620, 32.794750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302979, 36.604252, 33.017178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008246, 0.603903, -0.797015,
		-0.924873, 0.298429, 0.235691,
		0.380187, 0.739081, 0.556072,
		42.417034, 36.825977, 33.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791348, 36.868870, 32.519108>,  <42.150902, 36.308620, 32.794750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791348, 36.868870, 32.519108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119038, 37.007187, 32.702103>,  <42.315651, 37.090179, 32.811897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119038, 37.007187, 32.702103>,  <41.791348, 36.868870, 32.519108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119038, 37.007187, 32.702103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115634, 0.681757, -0.722382,
		-0.561691, 0.644696, 0.518528,
		0.819227, 0.345796, 0.457485,
		42.364807, 37.110924, 32.839348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643108, 37.562378, 32.564205>,  <41.791348, 36.868870, 32.519108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643108, 37.562378, 32.564205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037498, 37.518204, 32.614258>,  <42.274132, 37.491699, 32.644291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037498, 37.518204, 32.614258>,  <41.643108, 37.562378, 32.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037498, 37.518204, 32.614258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160310, 0.835260, -0.525967,
		-0.046432, 0.538650, 0.841249,
		0.985974, -0.110439, 0.125134,
		42.333290, 37.485073, 32.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898354, 38.360336, 32.730667>,  <41.643108, 37.562378, 32.564205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898354, 38.360336, 32.730667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214153, 38.139599, 32.623211>,  <42.403633, 38.007156, 32.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214153, 38.139599, 32.623211>,  <41.898354, 38.360336, 32.730667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214153, 38.139599, 32.623211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356828, 0.768823, -0.530646,
		0.499370, 0.323084, 0.803895,
		0.789496, -0.551840, -0.268642,
		42.451000, 37.974045, 32.542618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389397, 38.908733, 32.746674>,  <41.898354, 38.360336, 32.730667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389397, 38.908733, 32.746674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549004, 38.605686, 32.540062>,  <42.644768, 38.423859, 32.416096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549004, 38.605686, 32.540062>,  <42.389397, 38.908733, 32.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549004, 38.605686, 32.540062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401814, 0.650817, -0.644192,
		0.824216, 0.049496, 0.564109,
		0.399016, -0.757620, -0.516525,
		42.668709, 38.378399, 32.385105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081398, 39.189182, 32.604794>,  <42.389397, 38.908733, 32.746674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081398, 39.189182, 32.604794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977566, 38.900841, 32.347736>,  <42.915264, 38.727837, 32.193504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977566, 38.900841, 32.347736>,  <43.081398, 39.189182, 32.604794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977566, 38.900841, 32.347736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175448, 0.619176, -0.765402,
		0.949649, -0.311436, -0.034256,
		-0.259584, -0.720853, -0.642641,
		42.899689, 38.684586, 32.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690472, 39.172680, 32.067280>,  <43.081398, 39.189182, 32.604794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690472, 39.172680, 32.067280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386055, 38.992840, 31.880230>,  <43.203403, 38.884933, 31.768002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386055, 38.992840, 31.880230>,  <43.690472, 39.172680, 32.067280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386055, 38.992840, 31.880230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273306, 0.431530, -0.859701,
		0.588319, -0.782072, -0.205533,
		-0.761042, -0.449605, -0.467622,
		43.157742, 38.857960, 31.739943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940777, 38.897278, 31.436686>,  <43.690472, 39.172680, 32.067280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940777, 38.897278, 31.436686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543785, 38.936127, 31.406893>,  <43.305588, 38.959435, 31.389017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543785, 38.936127, 31.406893>,  <43.940777, 38.897278, 31.436686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543785, 38.936127, 31.406893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109645, 0.435089, -0.893687,
		-0.054392, -0.895134, -0.442467,
		-0.992481, 0.097124, -0.074481,
		43.246040, 38.965263, 31.384548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822205, 38.651310, 30.791113>,  <43.940777, 38.897278, 31.436686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822205, 38.651310, 30.791113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527363, 38.893715, 30.910732>,  <43.350456, 39.039158, 30.982504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527363, 38.893715, 30.910732>,  <43.822205, 38.651310, 30.791113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527363, 38.893715, 30.910732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028285, 0.469800, -0.882320,
		-0.675186, -0.641903, -0.363433,
		-0.737105, 0.606010, 0.299046,
		43.306232, 39.075520, 31.000446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299843, 38.677185, 30.207300>,  <43.822205, 38.651310, 30.791113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299843, 38.677185, 30.207300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205055, 38.985088, 30.444389>,  <43.148182, 39.169830, 30.586643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205055, 38.985088, 30.444389>,  <43.299843, 38.677185, 30.207300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205055, 38.985088, 30.444389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128197, 0.579992, -0.804472,
		-0.963022, -0.266620, -0.038760,
		-0.236969, 0.769755, 0.592724,
		43.133965, 39.216015, 30.622208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836178, 39.023399, 29.832642>,  <43.299843, 38.677185, 30.207300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836178, 39.023399, 29.832642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942944, 39.309906, 30.090548>,  <43.007004, 39.481812, 30.245291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942944, 39.309906, 30.090548>,  <42.836178, 39.023399, 29.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942944, 39.309906, 30.090548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024649, 0.673890, -0.738420,
		-0.963406, 0.181199, 0.197523,
		0.266910, 0.716267, 0.644764,
		43.023018, 39.524788, 30.283978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330006, 39.659840, 29.790518>,  <42.836178, 39.023399, 29.832642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330006, 39.659840, 29.790518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668728, 39.800896, 29.949799>,  <42.871960, 39.885529, 30.045366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668728, 39.800896, 29.949799>,  <42.330006, 39.659840, 29.790518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668728, 39.800896, 29.949799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027821, 0.776976, -0.628916,
		-0.531175, 0.521491, 0.667758,
		0.846805, 0.352642, 0.398202,
		42.922768, 39.906689, 30.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204853, 40.319294, 30.008148>,  <42.330006, 39.659840, 29.790518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204853, 40.319294, 30.008148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593983, 40.299988, 29.917564>,  <42.827461, 40.288403, 29.863214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593983, 40.299988, 29.917564>,  <42.204853, 40.319294, 30.008148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593983, 40.299988, 29.917564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065484, 0.880753, -0.469027,
		0.222095, 0.471110, 0.853657,
		0.972824, -0.048267, -0.226461,
		42.885830, 40.285507, 29.849627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491898, 41.060749, 30.095694>,  <42.204853, 40.319294, 30.008148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491898, 41.060749, 30.095694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775688, 40.862476, 29.895319>,  <42.945965, 40.743511, 29.775095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775688, 40.862476, 29.895319>,  <42.491898, 41.060749, 30.095694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775688, 40.862476, 29.895319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171074, 0.810701, -0.559908,
		0.683647, 0.311547, 0.659974,
		0.709479, -0.495684, -0.500936,
		42.988533, 40.713772, 29.745039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961090, 41.576309, 29.943447>,  <42.491898, 41.060749, 30.095694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961090, 41.576309, 29.943447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025059, 41.286678, 29.675077>,  <43.063442, 41.112900, 29.514055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025059, 41.286678, 29.675077>,  <42.961090, 41.576309, 29.943447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025059, 41.286678, 29.675077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297347, 0.683440, -0.666704,
		0.941280, -0.092874, 0.324602,
		0.159926, -0.724075, -0.670924,
		43.073036, 41.069454, 29.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174526, 42.272961, 29.679937>,  <42.961090, 41.576309, 29.943447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174526, 42.272961, 29.679937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096767, 42.399281, 30.051416>,  <43.050114, 42.475075, 30.274303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096767, 42.399281, 30.051416>,  <43.174526, 42.272961, 29.679937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096767, 42.399281, 30.051416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717822, 0.691052, -0.084734,
		-0.668537, 0.650167, -0.361029,
		-0.194398, 0.315802, 0.928697,
		43.038448, 42.494022, 30.330025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401749, 42.909851, 29.631834>,  <43.174526, 42.272961, 29.679937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401749, 42.909851, 29.631834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394363, 42.868896, 30.029663>,  <43.389931, 42.844322, 30.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394363, 42.868896, 30.029663>,  <43.401749, 42.909851, 29.631834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394363, 42.868896, 30.029663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779558, 0.621398, 0.078446,
		-0.626058, 0.776776, 0.068342,
		-0.018468, -0.102388, 0.994573,
		43.388824, 42.838181, 30.328035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402084, 43.601948, 29.923374>,  <43.401749, 42.909851, 29.631834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402084, 43.601948, 29.923374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570179, 43.341648, 30.176331>,  <43.671036, 43.185467, 30.328104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570179, 43.341648, 30.176331>,  <43.402084, 43.601948, 29.923374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570179, 43.341648, 30.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845408, 0.533979, -0.012314,
		-0.329671, 0.539805, 0.774550,
		0.420241, -0.650751, 0.632393,
		43.696251, 43.146423, 30.366049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629074, 43.935490, 30.533916>,  <43.402084, 43.601948, 29.923374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629074, 43.935490, 30.533916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862194, 43.624779, 30.438448>,  <44.002068, 43.438351, 30.381166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862194, 43.624779, 30.438448>,  <43.629074, 43.935490, 30.533916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862194, 43.624779, 30.438448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786746, 0.612879, -0.073550,
		0.203407, -0.144907, 0.968312,
		0.582800, -0.776776, -0.238669,
		44.037033, 43.391747, 30.366848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164333, 43.836563, 31.112562>,  <43.629074, 43.935490, 30.533916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164333, 43.836563, 31.112562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220081, 43.757763, 30.724384>,  <44.253529, 43.710484, 30.491478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220081, 43.757763, 30.724384>,  <44.164333, 43.836563, 31.112562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220081, 43.757763, 30.724384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683089, 0.728634, -0.049816,
		0.716914, -0.655958, 0.236120,
		0.139368, -0.197004, -0.970446,
		44.261890, 43.698662, 30.433250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826134, 43.645107, 31.021652>,  <44.164333, 43.836563, 31.112562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826134, 43.645107, 31.021652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689606, 43.793304, 30.676113>,  <44.607689, 43.882221, 30.468790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689606, 43.793304, 30.676113>,  <44.826134, 43.645107, 31.021652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689606, 43.793304, 30.676113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811330, 0.580170, -0.071742,
		0.474600, -0.725354, -0.498614,
		-0.341319, 0.370492, -0.863850,
		44.587212, 43.904453, 30.416958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274296, 43.448490, 30.430555>,  <44.826134, 43.645107, 31.021652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274296, 43.448490, 30.430555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109577, 43.812714, 30.416096>,  <45.010746, 44.031246, 30.407419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109577, 43.812714, 30.416096>,  <45.274296, 43.448490, 30.430555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109577, 43.812714, 30.416096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911143, 0.412090, 0.000749,
		0.015580, -0.032630, -0.999346,
		-0.411796, 0.910559, -0.036151,
		44.986038, 44.085880, 30.405251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953941, 43.072208, 30.504499>,  <45.274296, 43.448490, 30.430555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953941, 43.072208, 30.504499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689880, 43.184795, 30.783060>,  <45.531445, 43.252346, 30.950195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689880, 43.184795, 30.783060>,  <45.953941, 43.072208, 30.504499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689880, 43.184795, 30.783060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041420, -0.912086, 0.407901,
		0.749987, 0.298122, 0.590460,
		-0.660155, 0.281464, 0.696401,
		45.491833, 43.269234, 30.991980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189178, 42.798023, 31.178101>,  <45.953941, 43.072208, 30.504499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189178, 42.798023, 31.178101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795826, 42.861912, 31.212622>,  <45.559814, 42.900246, 31.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795826, 42.861912, 31.212622>,  <46.189178, 42.798023, 31.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795826, 42.861912, 31.212622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060604, -0.736928, 0.673250,
		0.171128, 0.656832, 0.734362,
		-0.983383, 0.159717, 0.086302,
		45.500813, 42.909828, 31.238512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033318, 43.094810, 31.918076>,  <46.189178, 42.798023, 31.178101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033318, 43.094810, 31.918076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737728, 42.906715, 31.725079>,  <45.560375, 42.793858, 31.609282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737728, 42.906715, 31.725079>,  <46.033318, 43.094810, 31.918076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737728, 42.906715, 31.725079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072465, -0.656510, 0.750828,
		-0.669830, 0.589803, 0.451065,
		-0.738970, -0.470241, -0.482490,
		45.516037, 42.765644, 31.580332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498508, 42.980743, 32.414120>,  <46.033318, 43.094810, 31.918076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498508, 42.980743, 32.414120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398407, 42.730076, 32.118916>,  <45.338345, 42.579674, 31.941793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398407, 42.730076, 32.118916>,  <45.498508, 42.980743, 32.414120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398407, 42.730076, 32.118916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097348, -0.742113, 0.663168,
		-0.963274, 0.237803, 0.124710,
		-0.250252, -0.626673, -0.738008,
		45.323330, 42.542072, 31.897512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866673, 42.671047, 32.507866>,  <45.498508, 42.980743, 32.414120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866673, 42.671047, 32.507866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059502, 42.398762, 32.287235>,  <45.175198, 42.235390, 32.154858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059502, 42.398762, 32.287235>,  <44.866673, 42.671047, 32.507866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059502, 42.398762, 32.287235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215393, -0.702317, 0.678495,
		-0.849244, -0.208275, -0.485186,
		0.482068, -0.680714, -0.551578,
		45.204121, 42.194546, 32.121761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525246, 42.054585, 32.538280>,  <44.866673, 42.671047, 32.507866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525246, 42.054585, 32.538280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891563, 41.940994, 32.424660>,  <45.111355, 41.872841, 32.356487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891563, 41.940994, 32.424660>,  <44.525246, 42.054585, 32.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891563, 41.940994, 32.424660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072421, -0.812350, 0.578656,
		-0.395074, -0.509356, -0.764508,
		0.915790, -0.283979, -0.284050,
		45.166302, 41.855801, 32.339443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458813, 41.414787, 32.178204>,  <44.525246, 42.054585, 32.538280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458813, 41.414787, 32.178204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842548, 41.433914, 32.289471>,  <45.072792, 41.445393, 32.356232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842548, 41.433914, 32.289471>,  <44.458813, 41.414787, 32.178204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842548, 41.433914, 32.289471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036738, -0.956004, 0.291044,
		0.279848, -0.289430, -0.915377,
		0.959341, 0.047819, 0.278169,
		45.130352, 41.448261, 32.372921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758190, 40.747532, 32.017544>,  <44.458813, 41.414787, 32.178204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758190, 40.747532, 32.017544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052681, 40.880878, 32.253117>,  <45.229374, 40.960884, 32.394463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052681, 40.880878, 32.253117>,  <44.758190, 40.747532, 32.017544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052681, 40.880878, 32.253117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155069, -0.930202, 0.332684,
		0.658732, -0.153605, -0.736531,
		0.736224, 0.333362, 0.588934,
		45.273548, 40.980888, 32.429798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311962, 40.402790, 31.798771>,  <44.758190, 40.747532, 32.017544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311962, 40.402790, 31.798771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410332, 40.515488, 32.169746>,  <45.469353, 40.583107, 32.392330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410332, 40.515488, 32.169746>,  <45.311962, 40.402790, 31.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410332, 40.515488, 32.169746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232407, -0.946052, 0.225771,
		0.941014, 0.160020, -0.298139,
		0.245927, 0.281743, 0.927438,
		45.484108, 40.600010, 32.447979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041058, 40.172199, 32.030132>,  <45.311962, 40.402790, 31.798771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041058, 40.172199, 32.030132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834404, 40.219238, 32.369370>,  <45.710411, 40.247459, 32.572910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834404, 40.219238, 32.369370>,  <46.041058, 40.172199, 32.030132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834404, 40.219238, 32.369370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221163, -0.938580, 0.264866,
		0.827150, 0.324405, 0.458894,
		-0.516633, 0.117594, 0.848093,
		45.679413, 40.254517, 32.623798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526470, 39.925613, 32.610661>,  <46.041058, 40.172199, 32.030132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526470, 39.925613, 32.610661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154106, 39.922089, 32.756718>,  <45.930687, 39.919975, 32.844353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154106, 39.922089, 32.756718>,  <46.526470, 39.925613, 32.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154106, 39.922089, 32.756718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128200, -0.943987, 0.304060,
		0.342015, 0.329864, 0.879896,
		-0.930909, -0.008810, 0.365146,
		45.874832, 39.919445, 32.866261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.578686, 39.577675, 33.258156>,  <46.526470, 39.925613, 32.610661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.578686, 39.577675, 33.258156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180279, 39.590374, 33.224846>,  <45.941235, 39.597992, 33.204861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180279, 39.590374, 33.224846>,  <46.578686, 39.577675, 33.258156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180279, 39.590374, 33.224846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071037, -0.847026, 0.526783,
		-0.053812, 0.530602, 0.845911,
		-0.996021, 0.031743, -0.083272,
		45.881474, 39.599895, 33.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301659, 39.502563, 33.910351>,  <46.578686, 39.577675, 33.258156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301659, 39.502563, 33.910351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025261, 39.357941, 33.659977>,  <45.859421, 39.271168, 33.509750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025261, 39.357941, 33.659977>,  <46.301659, 39.502563, 33.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025261, 39.357941, 33.659977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184617, -0.748932, 0.636410,
		-0.698884, 0.555316, 0.450761,
		-0.690998, -0.361558, -0.625937,
		45.817963, 39.249474, 33.472195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889343, 39.196522, 34.329617>,  <46.301659, 39.502563, 33.910351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889343, 39.196522, 34.329617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785255, 39.047562, 33.973278>,  <45.722805, 38.958183, 33.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785255, 39.047562, 33.973278>,  <45.889343, 39.196522, 34.329617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785255, 39.047562, 33.973278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279122, -0.854223, 0.438627,
		-0.924325, 0.362793, 0.118338,
		-0.260218, -0.372403, -0.890844,
		45.707191, 38.935841, 33.706024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354954, 38.956730, 34.472717>,  <45.889343, 39.196522, 34.329617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354954, 38.956730, 34.472717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442780, 38.778568, 34.125523>,  <45.495476, 38.671673, 33.917206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442780, 38.778568, 34.125523>,  <45.354954, 38.956730, 34.472717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442780, 38.778568, 34.125523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212955, -0.890126, 0.402897,
		-0.952073, 0.096382, -0.290288,
		0.219561, -0.445405, -0.867990,
		45.508648, 38.644947, 33.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827358, 38.542507, 34.316257>,  <45.354954, 38.956730, 34.472717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827358, 38.542507, 34.316257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128704, 38.394135, 34.099060>,  <45.309513, 38.305111, 33.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128704, 38.394135, 34.099060>,  <44.827358, 38.542507, 34.316257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128704, 38.394135, 34.099060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296252, -0.928630, 0.223341,
		-0.587088, -0.007394, -0.809489,
		0.753367, -0.370934, -0.542997,
		45.354713, 38.282856, 33.936161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524097, 37.957485, 34.246056>,  <44.827358, 38.542507, 34.316257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524097, 37.957485, 34.246056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890762, 37.875851, 34.108608>,  <45.110764, 37.826870, 34.026142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890762, 37.875851, 34.108608>,  <44.524097, 37.957485, 34.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890762, 37.875851, 34.108608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170154, -0.977261, 0.126524,
		-0.361624, -0.057513, -0.930548,
		0.916666, -0.204090, -0.343615,
		45.165764, 37.814625, 34.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470600, 37.473690, 33.703056>,  <44.524097, 37.957485, 34.246056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470600, 37.473690, 33.703056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825180, 37.440903, 33.885262>,  <45.037930, 37.421230, 33.994583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825180, 37.440903, 33.885262>,  <44.470600, 37.473690, 33.703056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825180, 37.440903, 33.885262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074574, -0.996629, -0.034209,
		0.456780, -0.003645, -0.889572,
		0.886448, -0.081964, 0.455512,
		45.091114, 37.416313, 34.021915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729736, 36.753403, 33.487629>,  <44.470600, 37.473690, 33.703056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729736, 36.753403, 33.487629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959061, 36.838791, 33.804043>,  <45.096657, 36.890022, 33.993893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959061, 36.838791, 33.804043>,  <44.729736, 36.753403, 33.487629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959061, 36.838791, 33.804043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015838, -0.962395, 0.271192,
		0.819182, -0.168006, -0.548374,
		0.573315, 0.213471, 0.791038,
		45.131054, 36.902832, 34.041355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326786, 36.316982, 33.434181>,  <44.729736, 36.753403, 33.487629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326786, 36.316982, 33.434181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287006, 36.413071, 33.820427>,  <45.263138, 36.470722, 34.052174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287006, 36.413071, 33.820427>,  <45.326786, 36.316982, 33.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287006, 36.413071, 33.820427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065595, -0.969894, 0.234526,
		0.992878, -0.040015, 0.112214,
		-0.099452, 0.240217, 0.965611,
		45.257172, 36.485134, 34.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733250, 35.848957, 33.732906>,  <45.326786, 36.316982, 33.434181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733250, 35.848957, 33.732906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497669, 35.982750, 34.027187>,  <45.356319, 36.063026, 34.203754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497669, 35.982750, 34.027187>,  <45.733250, 35.848957, 33.732906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497669, 35.982750, 34.027187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154142, -0.940114, 0.304017,
		0.793333, 0.065649, 0.605239,
		-0.588951, 0.334479, 0.735704,
		45.320984, 36.083092, 34.247898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949947, 35.509945, 34.313938>,  <45.733250, 35.848957, 33.732906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949947, 35.509945, 34.313938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582020, 35.624218, 34.421497>,  <45.361263, 35.692783, 34.486034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582020, 35.624218, 34.421497>,  <45.949947, 35.509945, 34.313938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582020, 35.624218, 34.421497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187738, -0.922335, 0.337716,
		0.344498, 0.260156, 0.902020,
		-0.919824, 0.285686, 0.268901,
		45.306072, 35.709923, 34.502167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889198, 35.360977, 35.050468>,  <45.949947, 35.509945, 34.313938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889198, 35.360977, 35.050468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501514, 35.416317, 34.968994>,  <45.268902, 35.449520, 34.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501514, 35.416317, 34.968994>,  <45.889198, 35.360977, 35.050468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501514, 35.416317, 34.968994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205377, -0.910536, 0.358810,
		-0.135826, 0.389596, 0.910915,
		-0.969212, 0.138345, -0.203688,
		45.210751, 35.457821, 34.907887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164997, 34.746593, 35.239079>,  <45.889198, 35.360977, 35.050468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164997, 34.746593, 35.239079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506550, 34.568157, 35.131828>,  <46.711479, 34.461094, 35.067478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506550, 34.568157, 35.131828>,  <46.164997, 34.746593, 35.239079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506550, 34.568157, 35.131828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375316, 0.884661, -0.276607,
		0.360596, 0.135556, 0.922819,
		0.853878, -0.446093, -0.268130,
		46.762714, 34.434330, 35.051388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704098, 35.097267, 35.557793>,  <46.164997, 34.746593, 35.239079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704098, 35.097267, 35.557793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867043, 34.933056, 35.231476>,  <46.964809, 34.834530, 35.035686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867043, 34.933056, 35.231476>,  <46.704098, 35.097267, 35.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867043, 34.933056, 35.231476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601940, 0.792477, -0.098223,
		0.686822, -0.451047, 0.569940,
		0.407361, -0.410532, -0.815795,
		46.989250, 34.809895, 34.986736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366230, 35.217690, 35.596348>,  <46.704098, 35.097267, 35.557793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366230, 35.217690, 35.596348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311649, 35.132122, 35.209438>,  <47.278900, 35.080780, 34.977291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.311649, 35.132122, 35.209438>,  <47.366230, 35.217690, 35.596348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.311649, 35.132122, 35.209438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688286, 0.681778, -0.247874,
		0.712491, -0.699584, 0.054208,
		-0.136451, -0.213918, -0.967275,
		47.270714, 35.067947, 34.919254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989864, 35.140533, 35.279099>,  <47.366230, 35.217690, 35.596348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989864, 35.140533, 35.279099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756386, 35.279148, 34.985374>,  <47.616299, 35.362316, 34.809139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756386, 35.279148, 34.985374>,  <47.989864, 35.140533, 35.279099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756386, 35.279148, 34.985374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659418, 0.729992, -0.179666,
		0.473780, -0.589087, -0.654606,
		-0.583696, 0.346537, -0.734310,
		47.581276, 35.383110, 34.765083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.482910, 38.959988, 45.496460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088665, 38.950962, 45.429466>,  <35.852116, 38.945545, 45.389271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088665, 38.950962, 45.429466>,  <36.482910, 38.959988, 45.496460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088665, 38.950962, 45.429466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152092, 0.313579, -0.937303,
		0.073671, -0.949294, -0.305636,
		-0.985617, -0.022567, -0.167481,
		35.792980, 38.944191, 45.379223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412971, 38.667088, 44.825935>,  <36.482910, 38.959988, 45.496460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412971, 38.667088, 44.825935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052891, 38.831638, 44.883072>,  <35.836842, 38.930367, 44.917355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052891, 38.831638, 44.883072>,  <36.412971, 38.667088, 44.825935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052891, 38.831638, 44.883072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060291, 0.207110, -0.976458,
		-0.431274, -0.887623, -0.161639,
		-0.900204, 0.411375, 0.142837,
		35.782829, 38.955051, 44.925922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965649, 38.296902, 44.358421>,  <36.412971, 38.667088, 44.825935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965649, 38.296902, 44.358421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794621, 38.647118, 44.448402>,  <35.692001, 38.857246, 44.502392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794621, 38.647118, 44.448402>,  <35.965649, 38.296902, 44.358421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794621, 38.647118, 44.448402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264157, 0.116976, -0.957360,
		-0.864524, -0.468765, 0.181265,
		-0.427574, 0.875543, 0.224956,
		35.666348, 38.909782, 44.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363972, 38.272209, 44.022274>,  <35.965649, 38.296902, 44.358421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363972, 38.272209, 44.022274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446808, 38.660244, 44.072952>,  <35.496510, 38.893063, 44.103359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446808, 38.660244, 44.072952>,  <35.363972, 38.272209, 44.022274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446808, 38.660244, 44.072952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166770, 0.162613, -0.972494,
		-0.964002, 0.180266, 0.195457,
		0.207092, 0.970083, 0.126696,
		35.508934, 38.951267, 44.110962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873322, 38.569630, 43.570606>,  <35.363972, 38.272209, 44.022274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873322, 38.569630, 43.570606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148102, 38.851810, 43.640388>,  <35.312969, 39.021118, 43.682259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148102, 38.851810, 43.640388>,  <34.873322, 38.569630, 43.570606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148102, 38.851810, 43.640388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047252, 0.196197, -0.979425,
		-0.725165, 0.681061, 0.101443,
		0.686952, 0.705452, 0.174457,
		35.354187, 39.063446, 43.692726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644337, 39.157974, 43.189865>,  <34.873322, 38.569630, 43.570606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644337, 39.157974, 43.189865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034309, 39.200432, 43.268085>,  <35.268295, 39.225906, 43.315018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034309, 39.200432, 43.268085>,  <34.644337, 39.157974, 43.189865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034309, 39.200432, 43.268085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187025, 0.085143, -0.978658,
		-0.120526, 0.990699, 0.063158,
		0.974933, 0.106142, 0.195548,
		35.326790, 39.232273, 43.326748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985218, 39.736729, 42.733841>,  <34.644337, 39.157974, 43.189865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985218, 39.736729, 42.733841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280373, 39.490723, 42.845036>,  <35.457466, 39.343121, 42.911751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280373, 39.490723, 42.845036>,  <34.985218, 39.736729, 42.733841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280373, 39.490723, 42.845036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331216, -0.028889, -0.943112,
		0.588060, 0.787985, 0.182386,
		0.737890, -0.615016, 0.277982,
		35.501740, 39.306217, 42.928429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431705, 39.971565, 42.302803>,  <34.985218, 39.736729, 42.733841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431705, 39.971565, 42.302803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553696, 39.615055, 42.437035>,  <35.626892, 39.401150, 42.517574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553696, 39.615055, 42.437035>,  <35.431705, 39.971565, 42.302803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553696, 39.615055, 42.437035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439250, -0.181007, -0.879941,
		0.845013, 0.415767, 0.336290,
		0.304980, -0.891277, 0.335579,
		35.645191, 39.347672, 42.537708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117222, 39.976265, 42.068848>,  <35.431705, 39.971565, 42.302803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117222, 39.976265, 42.068848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038567, 39.592232, 42.148411>,  <35.991371, 39.361813, 42.196148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038567, 39.592232, 42.148411>,  <36.117222, 39.976265, 42.068848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038567, 39.592232, 42.148411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688283, -0.279650, -0.669375,
		0.698283, 0.005279, 0.715802,
		-0.196641, -0.960087, 0.198909,
		35.979576, 39.304207, 42.208084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788879, 39.481461, 42.213688>,  <36.117222, 39.976265, 42.068848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788879, 39.481461, 42.213688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504990, 39.247051, 42.057293>,  <36.334656, 39.106407, 41.963455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504990, 39.247051, 42.057293>,  <36.788879, 39.481461, 42.213688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504990, 39.247051, 42.057293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645416, -0.318438, -0.694287,
		0.282365, -0.745099, 0.604233,
		-0.709724, -0.586025, -0.390983,
		36.292072, 39.071243, 41.939999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132805, 38.969200, 41.750793>,  <36.788879, 39.481461, 42.213688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132805, 38.969200, 41.750793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748161, 38.901764, 41.664177>,  <36.517376, 38.861301, 41.612209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748161, 38.901764, 41.664177>,  <37.132805, 38.969200, 41.750793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748161, 38.901764, 41.664177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274091, -0.550853, -0.788312,
		0.013622, -0.817397, 0.575914,
		-0.961607, -0.168591, -0.216537,
		36.459679, 38.851185, 41.599216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109451, 38.204201, 41.541904>,  <37.132805, 38.969200, 41.750793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109451, 38.204201, 41.541904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802528, 38.412872, 41.392727>,  <36.618374, 38.538074, 41.303219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802528, 38.412872, 41.392727>,  <37.109451, 38.204201, 41.541904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802528, 38.412872, 41.392727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066784, -0.513402, -0.855546,
		-0.637789, -0.681376, 0.359099,
		-0.767310, 0.521675, -0.372947,
		36.572334, 38.569374, 41.280842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755791, 37.639042, 41.113003>,  <37.109451, 38.204201, 41.541904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755791, 37.639042, 41.113003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605721, 37.995480, 41.010872>,  <36.515678, 38.209343, 40.949593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605721, 37.995480, 41.010872>,  <36.755791, 37.639042, 41.113003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605721, 37.995480, 41.010872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023876, -0.266062, -0.963660,
		-0.926645, -0.367640, 0.078544,
		-0.375177, 0.891096, -0.255323,
		36.493168, 38.262810, 40.934277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203274, 37.545845, 40.684448>,  <36.755791, 37.639042, 41.113003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203274, 37.545845, 40.684448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355530, 37.906437, 40.602032>,  <36.446884, 38.122791, 40.552582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355530, 37.906437, 40.602032>,  <36.203274, 37.545845, 40.684448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355530, 37.906437, 40.602032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018334, -0.215415, -0.976350,
		-0.924542, 0.375414, -0.065468,
		0.380638, 0.901477, -0.206043,
		36.469723, 38.176880, 40.540218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854549, 37.845039, 40.072765>,  <36.203274, 37.545845, 40.684448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854549, 37.845039, 40.072765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174976, 38.081455, 40.110649>,  <36.367233, 38.223305, 40.133381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.174976, 38.081455, 40.110649>,  <35.854549, 37.845039, 40.072765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174976, 38.081455, 40.110649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113278, 0.005684, -0.993547,
		-0.587762, 0.806624, -0.062398,
		0.801064, 0.591037, 0.094714,
		36.415295, 38.258766, 40.139065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808113, 38.179604, 39.532066>,  <35.854549, 37.845039, 40.072765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808113, 38.179604, 39.532066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192238, 38.243286, 39.623672>,  <36.422714, 38.281498, 39.678635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192238, 38.243286, 39.623672>,  <35.808113, 38.179604, 39.532066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192238, 38.243286, 39.623672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252319, -0.145961, -0.956572,
		-0.118868, 0.976395, -0.180340,
		0.960315, 0.159210, 0.229013,
		36.480331, 38.291050, 39.692375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021614, 38.637074, 39.063992>,  <35.808113, 38.179604, 39.532066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021614, 38.637074, 39.063992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352249, 38.465816, 39.210114>,  <36.550629, 38.363060, 39.297787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352249, 38.465816, 39.210114>,  <36.021614, 38.637074, 39.063992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352249, 38.465816, 39.210114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339946, -0.137480, -0.930342,
		0.448544, 0.893191, 0.031908,
		0.826586, -0.428146, 0.365303,
		36.600224, 38.337372, 39.319706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426369, 38.873573, 38.621449>,  <36.021614, 38.637074, 39.063992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426369, 38.873573, 38.621449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632893, 38.576145, 38.791401>,  <36.756805, 38.397686, 38.893372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632893, 38.576145, 38.791401>,  <36.426369, 38.873573, 38.621449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632893, 38.576145, 38.791401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478561, -0.160927, -0.863181,
		0.710213, 0.649001, 0.272757,
		0.516311, -0.743573, 0.424879,
		36.787785, 38.353073, 38.918865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141560, 38.978146, 38.628170>,  <36.426369, 38.873573, 38.621449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141560, 38.978146, 38.628170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119499, 38.578922, 38.639782>,  <37.106262, 38.339390, 38.646748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119499, 38.578922, 38.639782>,  <37.141560, 38.978146, 38.628170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119499, 38.578922, 38.639782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400646, -0.048753, -0.914935,
		0.914571, -0.038831, 0.402556,
		-0.055154, -0.998056, 0.029031,
		37.102955, 38.279507, 38.648491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752918, 38.806370, 38.302231>,  <37.141560, 38.978146, 38.628170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752918, 38.806370, 38.302231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492863, 38.502720, 38.289280>,  <37.336830, 38.320530, 38.281509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492863, 38.502720, 38.289280>,  <37.752918, 38.806370, 38.302231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492863, 38.502720, 38.289280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232853, -0.158503, -0.959508,
		0.723258, -0.631350, 0.279813,
		-0.650137, -0.759127, -0.032373,
		37.297821, 38.274982, 38.279568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058556, 38.442471, 37.904591>,  <37.752918, 38.806370, 38.302231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058556, 38.442471, 37.904591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704800, 38.255775, 37.906158>,  <37.492546, 38.143757, 37.907101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704800, 38.255775, 37.906158>,  <38.058556, 38.442471, 37.904591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704800, 38.255775, 37.906158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151403, -0.294801, -0.943488,
		0.441520, -0.833813, 0.331384,
		-0.884385, -0.466742, 0.003919,
		37.439484, 38.115753, 37.907333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101669, 37.750191, 37.542946>,  <38.058556, 38.442471, 37.904591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101669, 37.750191, 37.542946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729218, 37.894653, 37.522671>,  <37.505749, 37.981331, 37.510506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729218, 37.894653, 37.522671>,  <38.101669, 37.750191, 37.542946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729218, 37.894653, 37.522671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023362, -0.079642, -0.996550,
		-0.363948, -0.929098, 0.065719,
		-0.931126, 0.361157, -0.050691,
		37.449879, 38.003002, 37.507462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566910, 37.460773, 37.011471>,  <38.101669, 37.750191, 37.542946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566910, 37.460773, 37.011471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949028, 37.343719, 36.994617>,  <39.178299, 37.273487, 36.984505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949028, 37.343719, 36.994617>,  <38.566910, 37.460773, 37.011471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949028, 37.343719, 36.994617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081355, 0.123172, 0.989045,
		-0.284239, -0.948258, 0.141473,
		0.955295, -0.292634, -0.042135,
		39.235619, 37.255928, 36.981976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767475, 36.892712, 37.546280>,  <38.566910, 37.460773, 37.011471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767475, 36.892712, 37.546280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112991, 37.073784, 37.457783>,  <39.320301, 37.182426, 37.404686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112991, 37.073784, 37.457783>,  <38.767475, 36.892712, 37.546280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112991, 37.073784, 37.457783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237329, 0.021788, 0.971185,
		0.444455, -0.891407, -0.088614,
		0.863791, 0.452679, -0.221240,
		39.372128, 37.209587, 37.391411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150982, 36.492096, 37.782635>,  <38.767475, 36.892712, 37.546280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150982, 36.492096, 37.782635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342651, 36.841965, 37.753380>,  <39.457653, 37.051884, 37.735828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342651, 36.841965, 37.753380>,  <39.150982, 36.492096, 37.782635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342651, 36.841965, 37.753380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275761, -0.070918, 0.958606,
		0.833277, -0.479504, -0.275182,
		0.479171, 0.874670, -0.073134,
		39.486404, 37.104366, 37.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787685, 36.458801, 38.315250>,  <39.150982, 36.492096, 37.782635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787685, 36.458801, 38.315250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726665, 36.839901, 38.210182>,  <39.690052, 37.068562, 38.147141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726665, 36.839901, 38.210182>,  <39.787685, 36.458801, 38.315250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726665, 36.839901, 38.210182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153117, 0.285352, 0.946113,
		0.976363, 0.104109, -0.189413,
		-0.152548, 0.952752, -0.262666,
		39.680901, 37.125725, 38.131382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294674, 36.814770, 38.573654>,  <39.787685, 36.458801, 38.315250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294674, 36.814770, 38.573654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001141, 37.082836, 38.529186>,  <39.825020, 37.243675, 38.502506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001141, 37.082836, 38.529186>,  <40.294674, 36.814770, 38.573654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001141, 37.082836, 38.529186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012551, 0.176994, 0.984132,
		0.679211, 0.720796, -0.138296,
		-0.733836, 0.670169, -0.111170,
		39.780991, 37.283886, 38.495834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442429, 37.267166, 39.063923>,  <40.294674, 36.814770, 38.573654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442429, 37.267166, 39.063923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061813, 37.348370, 38.971519>,  <39.833443, 37.397091, 38.916077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061813, 37.348370, 38.971519>,  <40.442429, 37.267166, 39.063923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061813, 37.348370, 38.971519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210588, 0.117307, 0.970511,
		0.224117, 0.972126, -0.068872,
		-0.951538, 0.203005, -0.231008,
		39.776352, 37.409271, 38.902218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253689, 37.787338, 39.494461>,  <40.442429, 37.267166, 39.063923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253689, 37.787338, 39.494461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884327, 37.662823, 39.404640>,  <39.662708, 37.588112, 39.350750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884327, 37.662823, 39.404640>,  <40.253689, 37.787338, 39.494461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884327, 37.662823, 39.404640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278140, 0.139537, 0.950351,
		-0.264502, 0.940015, -0.215431,
		-0.923405, -0.311290, -0.224548,
		39.607304, 37.569435, 39.337276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829239, 38.282387, 39.752232>,  <40.253689, 37.787338, 39.494461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829239, 38.282387, 39.752232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606331, 37.951466, 39.723869>,  <39.472588, 37.752914, 39.706852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606331, 37.951466, 39.723869>,  <39.829239, 38.282387, 39.752232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606331, 37.951466, 39.723869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321665, 0.136369, 0.936982,
		-0.765496, 0.544957, -0.342108,
		-0.557268, -0.827300, -0.070903,
		39.439152, 37.703274, 39.702599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151798, 38.483772, 39.966999>,  <39.829239, 38.282387, 39.752232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151798, 38.483772, 39.966999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204140, 38.091881, 40.027676>,  <39.235546, 37.856747, 40.064083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204140, 38.091881, 40.027676>,  <39.151798, 38.483772, 39.966999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204140, 38.091881, 40.027676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364482, 0.094748, 0.926378,
		-0.921970, -0.176512, -0.344695,
		0.130858, -0.979728, 0.151690,
		39.243397, 37.797962, 40.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614861, 38.324783, 40.309746>,  <39.151798, 38.483772, 39.966999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614861, 38.324783, 40.309746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827869, 37.995029, 40.386486>,  <38.955673, 37.797176, 40.432529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827869, 37.995029, 40.386486>,  <38.614861, 38.324783, 40.309746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827869, 37.995029, 40.386486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332415, 0.004753, 0.943121,
		-0.778410, -0.566004, -0.271508,
		0.532520, -0.824389, 0.191848,
		38.987625, 37.747711, 40.444042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115669, 37.926804, 40.682652>,  <38.614861, 38.324783, 40.309746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115669, 37.926804, 40.682652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480827, 37.784454, 40.762630>,  <38.699921, 37.699043, 40.810616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480827, 37.784454, 40.762630>,  <38.115669, 37.926804, 40.682652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480827, 37.784454, 40.762630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243344, -0.081187, 0.966536,
		-0.327734, -0.931000, -0.160716,
		0.912894, -0.355876, 0.199946,
		38.754696, 37.677692, 40.822613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013329, 37.275665, 40.985455>,  <38.115669, 37.926804, 40.682652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013329, 37.275665, 40.985455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382080, 37.394924, 41.084450>,  <38.603329, 37.466480, 41.143848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382080, 37.394924, 41.084450>,  <38.013329, 37.275665, 40.985455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382080, 37.394924, 41.084450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187655, -0.215291, 0.958350,
		0.339013, -0.929923, -0.142522,
		0.921876, 0.298148, 0.247492,
		38.658642, 37.484367, 41.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229015, 36.762615, 41.421318>,  <38.013329, 37.275665, 40.985455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229015, 36.762615, 41.421318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462200, 37.080830, 41.487370>,  <38.602112, 37.271759, 41.527000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462200, 37.080830, 41.487370>,  <38.229015, 36.762615, 41.421318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462200, 37.080830, 41.487370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091511, -0.137658, 0.986243,
		0.807327, -0.590058, -0.007450,
		0.582966, 0.795539, 0.165132,
		38.637089, 37.319492, 41.536907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781124, 36.546898, 41.742996>,  <38.229015, 36.762615, 41.421318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781124, 36.546898, 41.742996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718307, 36.925850, 41.854572>,  <38.680618, 37.153221, 41.921516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718307, 36.925850, 41.854572>,  <38.781124, 36.546898, 41.742996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718307, 36.925850, 41.854572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213476, -0.308329, 0.927018,
		0.964243, 0.086037, 0.250664,
		-0.157045, 0.947381, 0.278937,
		38.671196, 37.210064, 41.938255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866760, 36.600983, 42.461224>,  <38.781124, 36.546898, 41.742996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866760, 36.600983, 42.461224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698837, 36.962845, 42.431919>,  <38.598083, 37.179962, 42.414337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698837, 36.962845, 42.431919>,  <38.866760, 36.600983, 42.461224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698837, 36.962845, 42.431919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262812, -0.043905, 0.963848,
		0.868729, 0.423886, 0.256185,
		-0.419809, 0.904651, -0.073260,
		38.572895, 37.234241, 42.409943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189980, 37.030434, 42.983101>,  <38.866760, 36.600983, 42.461224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189980, 37.030434, 42.983101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835373, 37.193768, 42.896053>,  <38.622608, 37.291767, 42.843826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835373, 37.193768, 42.896053>,  <39.189980, 37.030434, 42.983101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835373, 37.193768, 42.896053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255007, -0.038731, 0.966163,
		0.386093, 0.912008, 0.138465,
		-0.886512, 0.408338, -0.217615,
		38.569420, 37.316269, 42.830769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213650, 37.642101, 43.438694>,  <39.189980, 37.030434, 42.983101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213650, 37.642101, 43.438694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841099, 37.539642, 43.335217>,  <38.617569, 37.478168, 43.273132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841099, 37.539642, 43.335217>,  <39.213650, 37.642101, 43.438694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841099, 37.539642, 43.335217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296449, 0.121179, 0.947330,
		-0.211308, 0.959012, -0.188799,
		-0.931379, -0.256147, -0.258692,
		38.561684, 37.462799, 43.257610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731834, 38.227207, 43.614273>,  <39.213650, 37.642101, 43.438694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731834, 38.227207, 43.614273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477837, 37.918453, 43.601826>,  <38.325436, 37.733200, 43.594357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477837, 37.918453, 43.601826>,  <38.731834, 38.227207, 43.614273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477837, 37.918453, 43.601826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307993, 0.216021, 0.926540,
		-0.708463, 0.597933, -0.374908,
		-0.634997, -0.771888, -0.031117,
		38.287338, 37.686886, 43.592491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.192272, 38.387478, 44.204193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161503, 37.995277, 44.131866>,  <38.143040, 37.759956, 44.088470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161503, 37.995277, 44.131866>,  <38.192272, 38.387478, 44.204193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161503, 37.995277, 44.131866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195120, -0.163047, 0.967132,
		-0.977758, 0.109680, -0.178773,
		-0.076926, -0.980503, -0.180821,
		38.138424, 37.701126, 44.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502323, 38.237072, 44.426491>,  <38.192272, 38.387478, 44.204193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502323, 38.237072, 44.426491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754524, 37.926666, 44.433125>,  <37.905846, 37.740425, 44.437103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754524, 37.926666, 44.433125>,  <37.502323, 38.237072, 44.426491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754524, 37.926666, 44.433125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203081, -0.144308, 0.968470,
		-0.749150, -0.613989, -0.248579,
		0.630502, -0.776011, 0.016581,
		37.943676, 37.693863, 44.438099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108978, 37.769306, 44.831875>,  <37.502323, 38.237072, 44.426491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108978, 37.769306, 44.831875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486973, 37.638577, 44.837387>,  <37.713768, 37.560139, 44.840694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486973, 37.638577, 44.837387>,  <37.108978, 37.769306, 44.831875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486973, 37.638577, 44.837387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110197, -0.278407, 0.954121,
		-0.308001, -0.903145, -0.299105,
		0.944983, -0.326830, 0.013774,
		37.770470, 37.540531, 44.841518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111370, 37.076698, 45.093342>,  <37.108978, 37.769306, 44.831875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111370, 37.076698, 45.093342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494419, 37.183872, 45.135609>,  <37.724251, 37.248177, 45.160969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494419, 37.183872, 45.135609>,  <37.111370, 37.076698, 45.093342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494419, 37.183872, 45.135609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007360, -0.343992, 0.938944,
		0.287920, -0.899935, -0.327444,
		0.957626, 0.267931, 0.105666,
		37.781708, 37.264252, 45.167309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411175, 36.512642, 45.490730>,  <37.111370, 37.076698, 45.093342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411175, 36.512642, 45.490730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644329, 36.834343, 45.537079>,  <37.784222, 37.027363, 45.564888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644329, 36.834343, 45.537079>,  <37.411175, 36.512642, 45.490730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644329, 36.834343, 45.537079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025154, -0.124673, 0.991879,
		0.812167, -0.581064, -0.052439,
		0.582883, 0.804252, 0.115871,
		37.819195, 37.075619, 45.571838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882545, 36.307678, 46.010757>,  <37.411175, 36.512642, 45.490730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882545, 36.307678, 46.010757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909180, 36.706722, 46.003410>,  <37.925159, 36.946148, 45.999001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909180, 36.706722, 46.003410>,  <37.882545, 36.307678, 46.010757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909180, 36.706722, 46.003410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022492, 0.019905, 0.999549,
		0.997527, -0.066139, 0.023763,
		0.066582, 0.997612, -0.018369,
		37.929153, 37.006004, 45.997898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394070, 36.536858, 46.506454>,  <37.882545, 36.307678, 46.010757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394070, 36.536858, 46.506454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168903, 36.865860, 46.473953>,  <38.033802, 37.063263, 46.454453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168903, 36.865860, 46.473953>,  <38.394070, 36.536858, 46.506454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168903, 36.865860, 46.473953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, 0.030046, 0.994568,
		0.820481, 0.567960, 0.065056,
		-0.562920, 0.822508, -0.081254,
		38.000027, 37.112614, 46.449577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590279, 36.902416, 47.012863>,  <38.394070, 36.536858, 46.506454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590279, 36.902416, 47.012863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255199, 37.094288, 46.908421>,  <38.054153, 37.209412, 46.845753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255199, 37.094288, 46.908421>,  <38.590279, 36.902416, 47.012863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255199, 37.094288, 46.908421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235729, 0.113698, 0.965145,
		0.492646, 0.870047, 0.017830,
		-0.837694, 0.479678, -0.261108,
		38.003891, 37.238190, 46.830090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651264, 37.533779, 47.368313>,  <38.590279, 36.902416, 47.012863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651264, 37.533779, 47.368313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273411, 37.461372, 47.258846>,  <38.046700, 37.417927, 47.193169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273411, 37.461372, 47.258846>,  <38.651264, 37.533779, 47.368313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273411, 37.461372, 47.258846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273883, -0.024287, 0.961456,
		-0.180690, 0.983179, -0.026636,
		-0.944637, -0.181021, -0.273664,
		37.990021, 37.407066, 47.176746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302116, 38.017937, 47.689163>,  <38.651264, 37.533779, 47.368313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302116, 38.017937, 47.689163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036194, 37.729916, 47.609615>,  <37.876640, 37.557102, 47.561886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036194, 37.729916, 47.609615>,  <38.302116, 38.017937, 47.689163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036194, 37.729916, 47.609615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349044, 0.064048, 0.934915,
		-0.660453, 0.690955, -0.293911,
		-0.664808, -0.720055, -0.198873,
		37.836750, 37.513901, 47.549953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663433, 38.330284, 47.906055>,  <38.302116, 38.017937, 47.689163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663433, 38.330284, 47.906055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651001, 37.930477, 47.907146>,  <37.643539, 37.690594, 47.907803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651001, 37.930477, 47.907146>,  <37.663433, 38.330284, 47.906055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651001, 37.930477, 47.907146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273246, 0.011124, 0.961880,
		-0.961442, 0.029152, -0.273459,
		-0.031083, -0.999513, 0.002729,
		37.641678, 37.630623, 47.907967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273277, 38.205311, 48.473827>,  <37.663433, 38.330284, 47.906055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273277, 38.205311, 48.473827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398106, 37.832802, 48.398636>,  <37.473003, 37.609295, 48.353519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398106, 37.832802, 48.398636>,  <37.273277, 38.205311, 48.473827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398106, 37.832802, 48.398636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073194, -0.220843, 0.972559,
		-0.947235, -0.289749, -0.137083,
		0.312072, -0.931275, -0.187982,
		37.491726, 37.553421, 48.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817661, 37.820770, 48.882408>,  <37.273277, 38.205311, 48.473827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817661, 37.820770, 48.882408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168125, 37.636234, 48.826527>,  <37.378403, 37.525513, 48.792999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168125, 37.636234, 48.826527>,  <36.817661, 37.820770, 48.882408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168125, 37.636234, 48.826527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037123, -0.353542, 0.934682,
		-0.480594, -0.813742, -0.326884,
		0.876157, -0.461337, -0.139701,
		37.430973, 37.497833, 48.784615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687122, 37.143833, 49.193527>,  <36.817661, 37.820770, 48.882408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687122, 37.143833, 49.193527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084179, 37.190102, 49.179188>,  <37.322414, 37.217861, 49.170586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084179, 37.190102, 49.179188>,  <36.687122, 37.143833, 49.193527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084179, 37.190102, 49.179188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082649, -0.430749, 0.898679,
		0.088508, -0.895028, -0.437138,
		0.992641, 0.115670, -0.035848,
		37.381969, 37.224804, 49.168434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987442, 36.597740, 49.458740>,  <36.687122, 37.143833, 49.193527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987442, 36.597740, 49.458740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305168, 36.839638, 49.481895>,  <37.495804, 36.984776, 49.495789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305168, 36.839638, 49.481895>,  <36.987442, 36.597740, 49.458740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305168, 36.839638, 49.481895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219940, -0.375095, 0.900517,
		0.566294, -0.702562, -0.430950,
		0.794316, 0.604740, 0.057892,
		37.543465, 37.021061, 49.499264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572540, 36.218292, 49.479660>,  <36.987442, 36.597740, 49.458740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572540, 36.218292, 49.479660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642990, 36.570305, 49.656078>,  <37.685261, 36.781513, 49.761929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642990, 36.570305, 49.656078>,  <37.572540, 36.218292, 49.479660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642990, 36.570305, 49.656078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148631, -0.466693, 0.871841,
		0.973082, -0.088002, -0.212997,
		0.176128, 0.880031, 0.441050,
		37.695827, 36.834312, 49.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043694, 36.043331, 49.981842>,  <37.572540, 36.218292, 49.479660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043694, 36.043331, 49.981842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925400, 36.410763, 50.086731>,  <37.854424, 36.631222, 50.149666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925400, 36.410763, 50.086731>,  <38.043694, 36.043331, 49.981842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925400, 36.410763, 50.086731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028783, -0.265808, 0.963596,
		0.954837, 0.292516, 0.052170,
		-0.295734, 0.918575, 0.262223,
		37.836681, 36.686337, 50.165398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371277, 36.203411, 50.571079>,  <38.043694, 36.043331, 49.981842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371277, 36.203411, 50.571079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070538, 36.464996, 50.604698>,  <37.890095, 36.621948, 50.624870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070538, 36.464996, 50.604698>,  <38.371277, 36.203411, 50.571079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070538, 36.464996, 50.604698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074364, -0.210757, 0.974706,
		0.655135, 0.726576, 0.207088,
		-0.751843, 0.653963, 0.084043,
		37.844986, 36.661186, 50.629910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393818, 36.459450, 51.217632>,  <38.371277, 36.203411, 50.571079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393818, 36.459450, 51.217632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017906, 36.514675, 51.092567>,  <37.792358, 36.547810, 51.017529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017906, 36.514675, 51.092567>,  <38.393818, 36.459450, 51.217632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017906, 36.514675, 51.092567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322765, -0.057531, 0.944729,
		0.112442, 0.988752, 0.098627,
		-0.939776, 0.138060, -0.312666,
		37.735973, 36.556095, 50.998768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034958, 36.858662, 51.829514>,  <38.393818, 36.459450, 51.217632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034958, 36.858662, 51.829514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778725, 36.662205, 51.593399>,  <37.624985, 36.544331, 51.451729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778725, 36.662205, 51.593399>,  <38.034958, 36.858662, 51.829514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778725, 36.662205, 51.593399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469417, -0.357890, 0.807194,
		-0.607701, 0.794165, -0.001290,
		-0.640583, -0.491138, -0.590285,
		37.586548, 36.514862, 51.416313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461758, 36.895973, 52.187527>,  <38.034958, 36.858662, 51.829514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461758, 36.895973, 52.187527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375027, 36.594650, 51.939167>,  <37.322987, 36.413857, 51.790154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375027, 36.594650, 51.939167>,  <37.461758, 36.895973, 52.187527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375027, 36.594650, 51.939167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471992, -0.475848, 0.742154,
		-0.854523, 0.453977, -0.252379,
		-0.216827, -0.753309, -0.620897,
		37.309978, 36.368656, 51.752899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774426, 36.702744, 52.341370>,  <37.461758, 36.895973, 52.187527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774426, 36.702744, 52.341370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964527, 36.387280, 52.185341>,  <37.078587, 36.198002, 52.091724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964527, 36.387280, 52.185341>,  <36.774426, 36.702744, 52.341370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964527, 36.387280, 52.185341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481293, -0.604154, 0.635102,
		-0.736542, -0.114092, -0.666699,
		0.475250, -0.788658, -0.390073,
		37.107101, 36.150681, 52.068317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271454, 36.268562, 51.963032>,  <36.774426, 36.702744, 52.341370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271454, 36.268562, 51.963032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588959, 36.131126, 52.163780>,  <36.779465, 36.048664, 52.284229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588959, 36.131126, 52.163780>,  <36.271454, 36.268562, 51.963032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588959, 36.131126, 52.163780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607295, -0.493275, 0.622794,
		0.033576, -0.799140, -0.600207,
		0.793767, -0.343591, 0.501875,
		36.827087, 36.028049, 52.314342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475220, 35.507946, 51.826775>,  <36.271454, 36.268562, 51.963032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475220, 35.507946, 51.826775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530830, 35.673370, 52.186695>,  <36.564198, 35.772625, 52.402649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530830, 35.673370, 52.186695>,  <36.475220, 35.507946, 51.826775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530830, 35.673370, 52.186695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739743, -0.560706, 0.372007,
		0.658369, -0.717341, 0.227972,
		0.139031, 0.413558, 0.899800,
		36.572540, 35.797440, 52.456635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945076, 35.220955, 52.358181>,  <36.475220, 35.507946, 51.826775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945076, 35.220955, 52.358181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620129, 35.383224, 52.525745>,  <35.425159, 35.480587, 52.626286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620129, 35.383224, 52.525745>,  <35.945076, 35.220955, 52.358181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620129, 35.383224, 52.525745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357366, 0.221333, -0.907359,
		-0.460813, -0.886814, -0.034829,
		-0.812368, 0.405676, 0.418910,
		35.376419, 35.504929, 52.651417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376320, 35.039253, 51.952694>,  <35.945076, 35.220955, 52.358181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376320, 35.039253, 51.952694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242435, 35.363514, 52.144867>,  <35.162106, 35.558071, 52.260170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242435, 35.363514, 52.144867>,  <35.376320, 35.039253, 51.952694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242435, 35.363514, 52.144867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343419, 0.369842, -0.863296,
		-0.877515, -0.453944, 0.154602,
		-0.334710, 0.810649, 0.480435,
		35.142021, 35.606709, 52.288998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843277, 35.247284, 51.545570>,  <35.376320, 35.039253, 51.952694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843277, 35.247284, 51.545570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857430, 35.577583, 51.770744>,  <34.865921, 35.775761, 51.905849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857430, 35.577583, 51.770744>,  <34.843277, 35.247284, 51.545570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857430, 35.577583, 51.770744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425537, 0.522117, -0.739129,
		-0.904249, -0.213398, 0.369859,
		0.035381, 0.825745, 0.562933,
		34.868042, 35.825306, 51.939625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311852, 35.580124, 51.440773>,  <34.843277, 35.247284, 51.545570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311852, 35.580124, 51.440773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573051, 35.859383, 51.558201>,  <34.729771, 36.026936, 51.628658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573051, 35.859383, 51.558201>,  <34.311852, 35.580124, 51.440773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573051, 35.859383, 51.558201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330855, 0.611645, -0.718627,
		-0.681267, 0.372135, 0.630389,
		0.653001, 0.698144, 0.293571,
		34.768951, 36.068825, 51.646271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910034, 36.243412, 51.368984>,  <34.311852, 35.580124, 51.440773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910034, 36.243412, 51.368984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292969, 36.358082, 51.383526>,  <34.522728, 36.426884, 51.392250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292969, 36.358082, 51.383526>,  <33.910034, 36.243412, 51.368984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292969, 36.358082, 51.383526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166527, 0.650133, -0.741347,
		-0.236164, 0.703665, 0.670136,
		0.957337, 0.286675, 0.036359,
		34.580170, 36.444084, 51.394432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878632, 36.982658, 51.271271>,  <33.910034, 36.243412, 51.368984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878632, 36.982658, 51.271271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236355, 36.848789, 51.152477>,  <34.450989, 36.768467, 51.081200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236355, 36.848789, 51.152477>,  <33.878632, 36.982658, 51.271271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236355, 36.848789, 51.152477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031275, 0.615361, -0.787625,
		0.446350, 0.713670, 0.539858,
		0.894311, -0.334673, -0.296986,
		34.504650, 36.748386, 51.063381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188629, 37.544689, 50.833618>,  <33.878632, 36.982658, 51.271271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188629, 37.544689, 50.833618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445660, 37.247822, 50.757416>,  <34.599876, 37.069702, 50.711697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445660, 37.247822, 50.757416>,  <34.188629, 37.544689, 50.833618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445660, 37.247822, 50.757416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196829, 0.400164, -0.895057,
		0.740513, 0.537642, 0.403214,
		0.642572, -0.742166, -0.190503,
		34.638432, 37.025173, 50.700264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895512, 37.827610, 50.533863>,  <34.188629, 37.544689, 50.833618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895512, 37.827610, 50.533863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825523, 37.450085, 50.421711>,  <34.783531, 37.223572, 50.354420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825523, 37.450085, 50.421711>,  <34.895512, 37.827610, 50.533863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825523, 37.450085, 50.421711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262902, 0.229644, -0.937095,
		0.948825, -0.237674, 0.207949,
		-0.174969, -0.943809, -0.280377,
		34.773033, 37.166943, 50.337597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512745, 37.518906, 50.237167>,  <34.895512, 37.827610, 50.533863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512745, 37.518906, 50.237167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199051, 37.311184, 50.101345>,  <35.010834, 37.186550, 50.019852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199051, 37.311184, 50.101345>,  <35.512745, 37.518906, 50.237167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199051, 37.311184, 50.101345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167822, 0.349325, -0.921850,
		0.597332, -0.779935, -0.186804,
		-0.784239, -0.519301, -0.339553,
		34.963779, 37.155396, 49.999477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756420, 37.280640, 49.614868>,  <35.512745, 37.518906, 50.237167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756420, 37.280640, 49.614868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374256, 37.179504, 49.553864>,  <35.144958, 37.118824, 49.517262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374256, 37.179504, 49.553864>,  <35.756420, 37.280640, 49.614868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374256, 37.179504, 49.553864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078438, 0.280630, -0.956606,
		0.284712, -0.925903, -0.248278,
		-0.955399, -0.252883, -0.152524,
		35.087631, 37.103653, 49.508110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820698, 36.756142, 49.112602>,  <35.756420, 37.280640, 49.614868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820698, 36.756142, 49.112602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449726, 36.899254, 49.069035>,  <35.227142, 36.985123, 49.042892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449726, 36.899254, 49.069035>,  <35.820698, 36.756142, 49.112602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449726, 36.899254, 49.069035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167490, 0.136933, -0.976318,
		-0.334394, -0.923711, -0.186921,
		-0.927431, 0.357782, -0.108923,
		35.171497, 37.006588, 49.036358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507221, 36.545547, 48.483105>,  <35.820698, 36.756142, 49.112602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507221, 36.545547, 48.483105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268032, 36.858051, 48.554722>,  <35.124519, 37.045555, 48.597691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268032, 36.858051, 48.554722>,  <35.507221, 36.545547, 48.483105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268032, 36.858051, 48.554722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092057, 0.154952, -0.983624,
		-0.796211, -0.604664, -0.020737,
		-0.597975, 0.781263, 0.179038,
		35.088638, 37.092430, 48.608433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992321, 36.432507, 48.065788>,  <35.507221, 36.545547, 48.483105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992321, 36.432507, 48.065788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006752, 36.823429, 48.149288>,  <35.015411, 37.057983, 48.199387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006752, 36.823429, 48.149288>,  <34.992321, 36.432507, 48.065788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006752, 36.823429, 48.149288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023374, 0.208001, -0.977849,
		-0.999075, 0.040160, -0.015338,
		0.036080, 0.977304, 0.208747,
		35.017574, 37.116619, 48.211914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602272, 36.757515, 47.515312>,  <34.992321, 36.432507, 48.065788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602272, 36.757515, 47.515312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797020, 37.073311, 47.664803>,  <34.913868, 37.262787, 47.754498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797020, 37.073311, 47.664803>,  <34.602272, 36.757515, 47.515312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797020, 37.073311, 47.664803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063138, 0.394933, -0.916538,
		-0.871191, 0.469828, 0.142433,
		0.486866, 0.789487, 0.373727,
		34.943081, 37.310158, 47.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479824, 37.299770, 47.078568>,  <34.602272, 36.757515, 47.515312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479824, 37.299770, 47.078568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800846, 37.454346, 47.260368>,  <34.993462, 37.547089, 47.369450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800846, 37.454346, 47.260368>,  <34.479824, 37.299770, 47.078568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800846, 37.454346, 47.260368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188193, 0.558954, -0.807561,
		-0.566113, 0.733647, 0.375869,
		0.802558, 0.386435, 0.454499,
		35.041615, 37.570274, 47.396717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455219, 38.068306, 46.887497>,  <34.479824, 37.299770, 47.078568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455219, 38.068306, 46.887497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831722, 38.020046, 47.013664>,  <35.057625, 37.991089, 47.089363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831722, 38.020046, 47.013664>,  <34.455219, 38.068306, 46.887497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831722, 38.020046, 47.013664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297037, 0.740132, -0.603303,
		-0.160662, 0.661551, 0.732488,
		0.941253, -0.120648, 0.315416,
		35.114098, 37.983852, 47.108288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655537, 38.764481, 47.183994>,  <34.455219, 38.068306, 46.887497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655537, 38.764481, 47.183994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970852, 38.554939, 47.054886>,  <35.160042, 38.429214, 46.977421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970852, 38.554939, 47.054886>,  <34.655537, 38.764481, 47.183994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970852, 38.554939, 47.054886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297355, 0.783570, -0.545525,
		0.538689, 0.334052, 0.773449,
		0.788285, -0.523857, -0.322769,
		35.207336, 38.397781, 46.958054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056938, 39.277103, 47.002052>,  <34.655537, 38.764481, 47.183994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056938, 39.277103, 47.002052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200397, 38.955975, 46.811535>,  <35.286472, 38.763298, 46.697224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.200397, 38.955975, 46.811535>,  <35.056938, 39.277103, 47.002052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200397, 38.955975, 46.811535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271205, 0.577843, -0.769770,
		0.893208, 0.146902, 0.424970,
		0.358647, -0.802819, -0.476293,
		35.307991, 38.715130, 46.668648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758896, 39.341064, 46.714451>,  <35.056938, 39.277103, 47.002052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758896, 39.341064, 46.714451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616283, 39.045208, 46.486130>,  <35.530716, 38.867695, 46.349136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616283, 39.045208, 46.486130>,  <35.758896, 39.341064, 46.714451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616283, 39.045208, 46.486130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119986, 0.569641, -0.813088,
		0.926548, -0.358377, -0.114346,
		-0.356528, -0.739645, -0.570800,
		35.509323, 38.823315, 46.314888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124985, 39.428699, 46.095741>,  <35.758896, 39.341064, 46.714451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124985, 39.428699, 46.095741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845322, 39.175182, 45.963387>,  <35.677525, 39.023071, 45.883972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845322, 39.175182, 45.963387>,  <36.124985, 39.428699, 46.095741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845322, 39.175182, 45.963387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170809, 0.301332, -0.938096,
		0.694266, -0.712393, -0.102420,
		-0.699156, -0.633794, -0.330888,
		35.635574, 38.985043, 45.864120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.038284, 40.010258, 29.168631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739014, 40.229084, 29.318806>,  <43.559452, 40.360378, 29.408911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739014, 40.229084, 29.318806>,  <44.038284, 40.010258, 29.168631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739014, 40.229084, 29.318806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149723, -0.690453, 0.707713,
		0.646384, 0.473285, 0.598490,
		-0.748179, 0.547062, 0.375436,
		43.514561, 40.393204, 29.431437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134018, 40.169556, 29.864010>,  <44.038284, 40.010258, 29.168631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134018, 40.169556, 29.864010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737774, 40.224239, 29.864714>,  <43.500027, 40.257050, 29.865135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737774, 40.224239, 29.864714>,  <44.134018, 40.169556, 29.864010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737774, 40.224239, 29.864714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091566, -0.672952, 0.733997,
		0.101528, 0.726944, 0.679151,
		-0.990610, 0.136708, 0.001760,
		43.440590, 40.265251, 29.865242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010563, 40.373844, 30.565332>,  <44.134018, 40.169556, 29.864010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010563, 40.373844, 30.565332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662052, 40.244965, 30.417244>,  <43.452946, 40.167637, 30.328390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662052, 40.244965, 30.417244>,  <44.010563, 40.373844, 30.565332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662052, 40.244965, 30.417244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141609, -0.557216, 0.818204,
		-0.469920, 0.765308, 0.439862,
		-0.871276, -0.322202, -0.370221,
		43.400669, 40.148304, 30.306177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376690, 40.473042, 31.106001>,  <44.010563, 40.373844, 30.565332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376690, 40.473042, 31.106001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289845, 40.183800, 30.843708>,  <43.237736, 40.010254, 30.686333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289845, 40.183800, 30.843708>,  <43.376690, 40.473042, 31.106001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289845, 40.183800, 30.843708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214904, -0.619868, 0.754705,
		-0.952195, 0.304780, -0.020813,
		-0.217118, -0.723100, -0.655734,
		43.224709, 39.966869, 30.646988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716560, 40.262749, 31.267185>,  <43.376690, 40.473042, 31.106001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716560, 40.262749, 31.267185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868763, 39.941444, 31.083891>,  <42.960087, 39.748661, 30.973915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868763, 39.941444, 31.083891>,  <42.716560, 40.262749, 31.267185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868763, 39.941444, 31.083891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294542, -0.574972, 0.763316,
		-0.876617, -0.155480, -0.455378,
		0.380510, -0.803264, -0.458235,
		42.982914, 39.700466, 30.946421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227123, 39.679359, 31.456890>,  <42.716560, 40.262749, 31.267185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227123, 39.679359, 31.456890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572071, 39.518272, 31.334160>,  <42.779037, 39.421619, 31.260521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572071, 39.518272, 31.334160>,  <42.227123, 39.679359, 31.456890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572071, 39.518272, 31.334160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181062, -0.811273, 0.555925,
		-0.472801, -0.423856, -0.772531,
		0.862366, -0.402718, -0.306826,
		42.830780, 39.397457, 31.242111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968273, 39.128208, 31.128019>,  <42.227123, 39.679359, 31.456890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968273, 39.128208, 31.128019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350231, 39.074959, 31.234196>,  <42.579407, 39.043007, 31.297901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350231, 39.074959, 31.234196>,  <41.968273, 39.128208, 31.128019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350231, 39.074959, 31.234196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267617, -0.773183, 0.574952,
		0.128693, -0.620054, -0.773932,
		0.954892, -0.133125, 0.265441,
		42.636700, 39.035023, 31.313828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078449, 38.294804, 31.110462>,  <41.968273, 39.128208, 31.128019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078449, 38.294804, 31.110462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370056, 38.469269, 31.321474>,  <42.545021, 38.573948, 31.448082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370056, 38.469269, 31.321474>,  <42.078449, 38.294804, 31.110462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370056, 38.469269, 31.321474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025899, -0.787715, 0.615495,
		0.684000, -0.435046, -0.585558,
		0.729022, 0.436164, 0.527530,
		42.588764, 38.600117, 31.479733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710312, 37.881592, 31.173878>,  <42.078449, 38.294804, 31.110462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710312, 37.881592, 31.173878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742306, 38.125118, 31.489586>,  <42.761501, 38.271233, 31.679010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742306, 38.125118, 31.489586>,  <42.710312, 37.881592, 31.173878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742306, 38.125118, 31.489586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016797, -0.790870, 0.611753,
		0.996654, -0.062190, -0.053034,
		0.079988, 0.608816, 0.789269,
		42.766304, 38.307762, 31.726366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113758, 37.415550, 31.642193>,  <42.710312, 37.881592, 31.173878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113758, 37.415550, 31.642193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000462, 37.717480, 31.878838>,  <42.932484, 37.898640, 32.020824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000462, 37.717480, 31.878838>,  <43.113758, 37.415550, 31.642193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000462, 37.717480, 31.878838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047550, -0.605064, 0.794755,
		0.957868, 0.253242, 0.135489,
		-0.283245, 0.754828, 0.591613,
		42.915489, 37.943928, 32.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536251, 37.401814, 32.180607>,  <43.113758, 37.415550, 31.642193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536251, 37.401814, 32.180607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211609, 37.597427, 32.308445>,  <43.016823, 37.714794, 32.385147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211609, 37.597427, 32.308445>,  <43.536251, 37.401814, 32.180607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211609, 37.597427, 32.308445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097245, -0.652516, 0.751509,
		0.576053, 0.578852, 0.577143,
		-0.811608, 0.489033, 0.319593,
		42.968128, 37.744137, 32.404324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678509, 37.518597, 32.859440>,  <43.536251, 37.401814, 32.180607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678509, 37.518597, 32.859440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285233, 37.519386, 32.786407>,  <43.049267, 37.519859, 32.742588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285233, 37.519386, 32.786407>,  <43.678509, 37.518597, 32.859440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285233, 37.519386, 32.786407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156352, -0.525597, 0.836243,
		-0.094313, 0.850731, 0.517070,
		-0.983188, 0.001977, -0.182584,
		42.990276, 37.519978, 32.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337620, 37.674854, 33.452137>,  <43.678509, 37.518597, 32.859440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337620, 37.674854, 33.452137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055656, 37.477139, 33.248653>,  <42.886478, 37.358509, 33.126564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055656, 37.477139, 33.248653>,  <43.337620, 37.674854, 33.452137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055656, 37.477139, 33.248653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183849, -0.565359, 0.804095,
		-0.685059, 0.660337, 0.307650,
		-0.704907, -0.494292, -0.508707,
		42.844185, 37.328850, 33.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775723, 37.775047, 33.918816>,  <43.337620, 37.674854, 33.452137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775723, 37.775047, 33.918816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618732, 37.491638, 33.684223>,  <42.524540, 37.321594, 33.543468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618732, 37.491638, 33.684223>,  <42.775723, 37.775047, 33.918816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618732, 37.491638, 33.684223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186448, -0.563121, 0.805066,
		-0.900666, 0.425319, 0.088910,
		-0.392477, -0.708519, -0.586484,
		42.500988, 37.279083, 33.508278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066681, 37.628468, 34.147579>,  <42.775723, 37.775047, 33.918816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066681, 37.628468, 34.147579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212093, 37.312889, 33.949421>,  <42.299339, 37.123543, 33.830528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212093, 37.312889, 33.949421>,  <42.066681, 37.628468, 34.147579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212093, 37.312889, 33.949421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131481, -0.569906, 0.811123,
		-0.922257, -0.229734, -0.310910,
		0.363532, -0.788942, -0.495394,
		42.321152, 37.076206, 33.800804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726593, 36.985058, 34.313667>,  <42.066681, 37.628468, 34.147579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726593, 36.985058, 34.313667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068520, 36.830173, 34.175480>,  <42.273678, 36.737244, 34.092567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068520, 36.830173, 34.175480>,  <41.726593, 36.985058, 34.313667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068520, 36.830173, 34.175480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096948, -0.773181, 0.626731,
		-0.509787, -0.502250, -0.698471,
		0.854820, -0.387215, -0.345466,
		42.324966, 36.714008, 34.071838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627163, 36.285835, 34.341976>,  <41.726593, 36.985058, 34.313667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627163, 36.285835, 34.341976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022648, 36.331917, 34.303661>,  <42.259937, 36.359566, 34.280674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.022648, 36.331917, 34.303661>,  <41.627163, 36.285835, 34.341976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022648, 36.331917, 34.303661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149787, -0.774058, 0.615141,
		-0.003274, -0.622545, -0.782577,
		0.988713, 0.115206, -0.095783,
		42.319263, 36.366478, 34.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889378, 35.536793, 34.475666>,  <41.627163, 36.285835, 34.341976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889378, 35.536793, 34.475666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178566, 35.808239, 34.527519>,  <42.352077, 35.971107, 34.558632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178566, 35.808239, 34.527519>,  <41.889378, 35.536793, 34.475666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178566, 35.808239, 34.527519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320740, -0.495860, 0.807000,
		0.611918, -0.541857, -0.576148,
		0.722967, 0.678612, 0.129631,
		42.395454, 36.011822, 34.566410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460571, 35.121811, 34.635475>,  <41.889378, 35.536793, 34.475666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460571, 35.121811, 34.635475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594810, 35.472408, 34.773537>,  <42.675354, 35.682766, 34.856373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594810, 35.472408, 34.773537>,  <42.460571, 35.121811, 34.635475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594810, 35.472408, 34.773537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342937, -0.454942, 0.821841,
		0.877364, -0.157441, -0.453260,
		0.335599, 0.876493, 0.345157,
		42.695492, 35.735355, 34.877083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065376, 34.993382, 34.830799>,  <42.460571, 35.121811, 34.635475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065376, 34.993382, 34.830799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969231, 35.322990, 35.036018>,  <42.911545, 35.520756, 35.159149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969231, 35.322990, 35.036018>,  <43.065376, 34.993382, 34.830799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969231, 35.322990, 35.036018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563940, -0.311649, 0.764753,
		0.790061, 0.473147, -0.389787,
		-0.240364, 0.824018, 0.513049,
		42.897121, 35.570194, 35.189934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636940, 35.335590, 35.030712>,  <43.065376, 34.993382, 34.830799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636940, 35.335590, 35.030712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359596, 35.452473, 35.294186>,  <43.193188, 35.522602, 35.452271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359596, 35.452473, 35.294186>,  <43.636940, 35.335590, 35.030712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359596, 35.452473, 35.294186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561339, -0.354124, 0.747994,
		0.451826, 0.888375, 0.081508,
		-0.693363, 0.292209, 0.658682,
		43.151588, 35.540134, 35.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984070, 35.652794, 34.436127>,  <43.636940, 35.335590, 35.030712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984070, 35.652794, 34.436127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340839, 35.576672, 34.600204>,  <44.554901, 35.530998, 34.698650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340839, 35.576672, 34.600204>,  <43.984070, 35.652794, 34.436127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340839, 35.576672, 34.600204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269605, 0.952064, -0.144526,
		-0.363025, 0.239496, 0.900475,
		0.891923, -0.190306, 0.410192,
		44.608418, 35.519581, 34.723263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133499, 36.123726, 34.921650>,  <43.984070, 35.652794, 34.436127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133499, 36.123726, 34.921650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493752, 35.992859, 34.807224>,  <44.709904, 35.914341, 34.738571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493752, 35.992859, 34.807224>,  <44.133499, 36.123726, 34.921650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493752, 35.992859, 34.807224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272922, 0.938035, -0.213552,
		0.338202, 0.114258, 0.934112,
		0.900629, -0.327163, -0.286062,
		44.763939, 35.894711, 34.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699379, 36.492641, 35.293499>,  <44.133499, 36.123726, 34.921650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699379, 36.492641, 35.293499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870491, 36.376278, 34.951183>,  <44.973156, 36.306461, 34.745792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870491, 36.376278, 34.951183>,  <44.699379, 36.492641, 35.293499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870491, 36.376278, 34.951183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240776, 0.949258, -0.202327,
		0.871226, -0.119504, 0.476114,
		0.427776, -0.290910, -0.855792,
		44.998825, 36.289005, 34.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215492, 36.874996, 35.359577>,  <44.699379, 36.492641, 35.293499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215492, 36.874996, 35.359577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214382, 36.759148, 34.976723>,  <45.213718, 36.689640, 34.747009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214382, 36.759148, 34.976723>,  <45.215492, 36.874996, 35.359577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214382, 36.759148, 34.976723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285371, 0.917111, -0.278334,
		0.958413, -0.273910, 0.080108,
		-0.002771, -0.289619, -0.957138,
		45.213551, 36.672260, 34.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840534, 37.196678, 35.076412>,  <45.215492, 36.874996, 35.359577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840534, 37.196678, 35.076412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604271, 37.120102, 34.762859>,  <45.462513, 37.074158, 34.574726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604271, 37.120102, 34.762859>,  <45.840534, 37.196678, 35.076412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604271, 37.120102, 34.762859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082086, 0.952155, -0.294384,
		0.802735, -0.238227, -0.546685,
		-0.590660, -0.191437, -0.783883,
		45.427074, 37.062672, 34.527695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259716, 37.392258, 34.477627>,  <45.840534, 37.196678, 35.076412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259716, 37.392258, 34.477627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888817, 37.396744, 34.327915>,  <45.666279, 37.399437, 34.238087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888817, 37.396744, 34.327915>,  <46.259716, 37.392258, 34.477627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888817, 37.396744, 34.327915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247728, 0.767909, -0.590717,
		0.280787, -0.640460, -0.714821,
		-0.927248, 0.011215, -0.374279,
		45.610641, 37.400108, 34.215630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479610, 37.597424, 33.801952>,  <46.259716, 37.392258, 34.477627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479610, 37.597424, 33.801952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085533, 37.640141, 33.855610>,  <45.849087, 37.665771, 33.887806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.085533, 37.640141, 33.855610>,  <46.479610, 37.597424, 33.801952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085533, 37.640141, 33.855610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007668, 0.809019, -0.587732,
		-0.171294, -0.578000, -0.797856,
		-0.985190, 0.106793, 0.134148,
		45.789974, 37.672180, 33.895855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138519, 37.596611, 33.120773>,  <46.479610, 37.597424, 33.801952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138519, 37.596611, 33.120773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922531, 37.806919, 33.383678>,  <45.792938, 37.933102, 33.541424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.922531, 37.806919, 33.383678>,  <46.138519, 37.596611, 33.120773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922531, 37.806919, 33.383678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033662, 0.766780, -0.641026,
		-0.841009, -0.368261, -0.396342,
		-0.539972, 0.525768, 0.657266,
		45.760540, 37.964649, 33.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743980, 38.035763, 32.761513>,  <46.138519, 37.596611, 33.120773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743980, 38.035763, 32.761513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673100, 38.230789, 33.103477>,  <45.630573, 38.347805, 33.308659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673100, 38.230789, 33.103477>,  <45.743980, 38.035763, 32.761513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673100, 38.230789, 33.103477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213194, 0.829019, -0.516987,
		-0.960807, -0.273872, -0.042955,
		-0.177199, 0.487567, 0.854915,
		45.619942, 38.377060, 33.359951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103680, 38.398956, 32.640591>,  <45.743980, 38.035763, 32.761513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103680, 38.398956, 32.640591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286320, 38.563442, 32.956165>,  <45.395905, 38.662132, 33.145508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286320, 38.563442, 32.956165>,  <45.103680, 38.398956, 32.640591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286320, 38.563442, 32.956165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240615, 0.910802, -0.335477,
		-0.856515, -0.036649, 0.514820,
		0.456603, 0.411214, 0.788934,
		45.423302, 38.686806, 33.192844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851482, 38.998390, 32.616707>,  <45.103680, 38.398956, 32.640591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851482, 38.998390, 32.616707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131527, 39.073246, 32.892334>,  <45.299553, 39.118160, 33.057713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131527, 39.073246, 32.892334>,  <44.851482, 38.998390, 32.616707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131527, 39.073246, 32.892334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020070, 0.969819, -0.243000,
		-0.713750, 0.156298, 0.682739,
		0.700113, 0.187144, 0.689071,
		45.341560, 39.129391, 33.099056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648876, 39.529510, 32.857769>,  <44.851482, 38.998390, 32.616707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648876, 39.529510, 32.857769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031475, 39.528343, 32.974464>,  <45.261032, 39.527641, 33.044483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031475, 39.528343, 32.974464>,  <44.648876, 39.529510, 32.857769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031475, 39.528343, 32.974464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047160, 0.988349, -0.144717,
		-0.287920, 0.152179, 0.945486,
		0.956492, -0.002922, 0.291742,
		45.318424, 39.527466, 33.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722675, 39.948959, 33.451477>,  <44.648876, 39.529510, 32.857769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722675, 39.948959, 33.451477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074070, 39.947659, 33.260376>,  <45.284908, 39.946877, 33.145714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074070, 39.947659, 33.260376>,  <44.722675, 39.948959, 33.451477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074070, 39.947659, 33.260376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106332, 0.973565, -0.202151,
		0.465784, 0.228387, 0.854918,
		0.878487, -0.003254, -0.477756,
		45.337616, 39.946682, 33.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097523, 40.662872, 33.679752>,  <44.722675, 39.948959, 33.451477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097523, 40.662872, 33.679752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291470, 40.528904, 33.356583>,  <45.407837, 40.448524, 33.162682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291470, 40.528904, 33.356583>,  <45.097523, 40.662872, 33.679752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291470, 40.528904, 33.356583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001853, 0.924164, -0.381992,
		0.874585, 0.183719, 0.448718,
		0.484868, -0.334916, -0.807920,
		45.436932, 40.428429, 33.114208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690651, 41.079811, 33.613342>,  <45.097523, 40.662872, 33.679752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690651, 41.079811, 33.613342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625050, 40.935856, 33.245956>,  <45.585690, 40.849483, 33.025524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625050, 40.935856, 33.245956>,  <45.690651, 41.079811, 33.613342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625050, 40.935856, 33.245956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248557, 0.885959, -0.391530,
		0.954633, -0.292502, -0.055845,
		-0.164000, -0.359887, -0.918469,
		45.575851, 40.827888, 32.970417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204090, 41.462608, 33.196587>,  <45.690651, 41.079811, 33.613342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204090, 41.462608, 33.196587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911278, 41.311779, 32.969627>,  <45.735588, 41.221283, 32.833450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911278, 41.311779, 32.969627>,  <46.204090, 41.462608, 33.196587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911278, 41.311779, 32.969627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013280, 0.840599, -0.541496,
		0.681137, -0.388859, -0.620355,
		-0.732036, -0.377071, -0.567399,
		45.691666, 41.198658, 32.799408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425282, 41.429207, 32.488445>,  <46.204090, 41.462608, 33.196587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425282, 41.429207, 32.488445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025730, 41.448181, 32.488689>,  <45.785999, 41.459568, 32.488834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025730, 41.448181, 32.488689>,  <46.425282, 41.429207, 32.488445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025730, 41.448181, 32.488689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036833, 0.783557, -0.620227,
		-0.029902, -0.619506, -0.784422,
		-0.998874, 0.047438, 0.000612,
		45.726067, 41.462414, 32.488873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293308, 41.442604, 31.824566>,  <46.425282, 41.429207, 32.488445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293308, 41.442604, 31.824566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945389, 41.566181, 31.978449>,  <45.736637, 41.640327, 32.070778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945389, 41.566181, 31.978449>,  <46.293308, 41.442604, 31.824566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945389, 41.566181, 31.978449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069737, 0.694905, -0.715712,
		-0.488448, -0.649356, -0.582885,
		-0.869802, 0.308940, 0.384709,
		45.684448, 41.658863, 32.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807156, 41.452087, 31.257284>,  <46.293308, 41.442604, 31.824566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807156, 41.452087, 31.257284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.622166, 41.669502, 31.537479>,  <45.511173, 41.799950, 31.705597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.622166, 41.669502, 31.537479>,  <45.807156, 41.452087, 31.257284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622166, 41.669502, 31.537479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132384, 0.738869, -0.660717,
		-0.876693, -0.398299, -0.269753,
		-0.462475, 0.543536, 0.700490,
		45.483421, 41.832561, 31.747627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055931, 41.733566, 30.928047>,  <45.807156, 41.452087, 31.257284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055931, 41.733566, 30.928047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154762, 41.973240, 31.232660>,  <45.214062, 42.117043, 31.415428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.154762, 41.973240, 31.232660>,  <45.055931, 41.733566, 30.928047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154762, 41.973240, 31.232660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074603, 0.795328, -0.601572,
		-0.966120, 0.091822, 0.241207,
		0.247076, 0.599185, 0.761532,
		45.228886, 42.152996, 31.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555935, 42.198143, 30.967962>,  <45.055931, 41.733566, 30.928047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555935, 42.198143, 30.967962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867538, 42.364864, 31.155333>,  <45.054501, 42.464897, 31.267756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867538, 42.364864, 31.155333>,  <44.555935, 42.198143, 30.967962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867538, 42.364864, 31.155333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074050, 0.803003, -0.591356,
		-0.622624, 0.425985, 0.656411,
		0.779009, 0.416800, 0.468425,
		45.101242, 42.489902, 31.295860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.836803, 37.799282, 41.474609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463913, 37.700539, 41.368767>,  <39.240177, 37.641293, 41.305260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463913, 37.700539, 41.368767>,  <39.836803, 37.799282, 41.474609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463913, 37.700539, 41.368767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346528, -0.398261, -0.849298,
		0.104270, -0.883431, 0.456812,
		-0.932226, -0.246855, -0.264607,
		39.184246, 37.626484, 41.289383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994507, 37.279030, 41.097649>,  <39.836803, 37.799282, 41.474609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994507, 37.279030, 41.097649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618477, 37.394009, 41.024281>,  <39.392860, 37.462997, 40.980259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618477, 37.394009, 41.024281>,  <39.994507, 37.279030, 41.097649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618477, 37.394009, 41.024281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158910, -0.106598, -0.981522,
		-0.301687, -0.951846, 0.054531,
		-0.940070, 0.287447, -0.183417,
		39.336456, 37.480244, 40.969257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703129, 36.698540, 40.622955>,  <39.994507, 37.279030, 41.097649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703129, 36.698540, 40.622955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471382, 37.019184, 40.563953>,  <39.332333, 37.211571, 40.528553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471382, 37.019184, 40.563953>,  <39.703129, 36.698540, 40.622955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471382, 37.019184, 40.563953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154328, -0.069809, -0.985550,
		-0.800324, -0.593758, -0.083266,
		-0.579366, 0.801610, -0.147503,
		39.297573, 37.259666, 40.519703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285202, 36.477821, 40.083981>,  <39.703129, 36.698540, 40.622955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285202, 36.477821, 40.083981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278263, 36.877563, 40.071415>,  <39.274101, 37.117409, 40.063873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278263, 36.877563, 40.071415>,  <39.285202, 36.477821, 40.083981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278263, 36.877563, 40.071415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005694, -0.031520, -0.999487,
		-0.999833, -0.017158, 0.006237,
		-0.017346, 0.999356, -0.031417,
		39.273060, 37.177372, 40.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712955, 36.637569, 39.637199>,  <39.285202, 36.477821, 40.083981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712955, 36.637569, 39.637199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934597, 36.969574, 39.662666>,  <39.067581, 37.168777, 39.677948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934597, 36.969574, 39.662666>,  <38.712955, 36.637569, 39.637199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934597, 36.969574, 39.662666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079162, 0.128675, -0.988522,
		-0.828677, 0.542701, 0.137005,
		0.554101, 0.830011, 0.063669,
		39.100826, 37.218578, 39.681767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413212, 37.072945, 39.051231>,  <38.712955, 36.637569, 39.637199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413212, 37.072945, 39.051231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777264, 37.214436, 39.137531>,  <38.995693, 37.299332, 39.189312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777264, 37.214436, 39.137531>,  <38.413212, 37.072945, 39.051231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777264, 37.214436, 39.137531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177524, 0.137584, -0.974451,
		-0.374375, 0.925174, 0.062423,
		0.910125, 0.353729, 0.215749,
		39.050301, 37.320553, 39.202255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520550, 37.700562, 38.608158>,  <38.413212, 37.072945, 39.051231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520550, 37.700562, 38.608158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901203, 37.621239, 38.702019>,  <39.129597, 37.573647, 38.758335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901203, 37.621239, 38.702019>,  <38.520550, 37.700562, 38.608158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901203, 37.621239, 38.702019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257303, 0.097073, -0.961443,
		0.167883, 0.975321, 0.143403,
		0.951636, -0.198308, 0.234656,
		39.186695, 37.561745, 38.772415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867138, 38.064751, 38.117599>,  <38.520550, 37.700562, 38.608158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867138, 38.064751, 38.117599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156490, 37.826435, 38.257172>,  <39.330101, 37.683445, 38.340916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156490, 37.826435, 38.257172>,  <38.867138, 38.064751, 38.117599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156490, 37.826435, 38.257172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375625, -0.084450, -0.922916,
		0.579330, 0.798689, 0.162704,
		0.723383, -0.595788, 0.348933,
		39.373505, 37.647697, 38.361851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539585, 38.423985, 37.923130>,  <38.867138, 38.064751, 38.117599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539585, 38.423985, 37.923130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570023, 38.028778, 37.976852>,  <39.588284, 37.791656, 38.009087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570023, 38.028778, 37.976852>,  <39.539585, 38.423985, 37.923130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570023, 38.028778, 37.976852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262325, -0.110112, -0.958677,
		0.961975, 0.108180, 0.250802,
		0.076093, -0.988015, 0.134303,
		39.592850, 37.732372, 38.017143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117558, 38.239941, 37.553230>,  <39.539585, 38.423985, 37.923130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117558, 38.239941, 37.553230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916504, 37.899345, 37.612999>,  <39.795872, 37.694988, 37.648861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916504, 37.899345, 37.612999>,  <40.117558, 38.239941, 37.553230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916504, 37.899345, 37.612999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097629, -0.227643, -0.968838,
		0.858971, -0.472380, 0.197551,
		-0.502631, -0.851490, 0.149420,
		39.765713, 37.643898, 37.657825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529301, 37.696514, 37.261162>,  <40.117558, 38.239941, 37.553230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529301, 37.696514, 37.261162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152752, 37.563881, 37.286087>,  <39.926823, 37.484303, 37.301041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152752, 37.563881, 37.286087>,  <40.529301, 37.696514, 37.261162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152752, 37.563881, 37.286087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016499, -0.229713, -0.973118,
		0.336979, -0.915034, 0.221715,
		-0.941368, -0.331579, 0.062311,
		39.870342, 37.464409, 37.304779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499569, 37.014347, 36.779663>,  <40.529301, 37.696514, 37.261162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499569, 37.014347, 36.779663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117062, 37.110035, 36.846973>,  <39.887558, 37.167450, 36.887360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117062, 37.110035, 36.846973>,  <40.499569, 37.014347, 36.779663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117062, 37.110035, 36.846973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243829, -0.334312, -0.910375,
		-0.161526, -0.911596, 0.378023,
		-0.956272, 0.239222, 0.168274,
		39.830181, 37.181801, 36.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090637, 36.506824, 36.547958>,  <40.499569, 37.014347, 36.779663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090637, 36.506824, 36.547958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873085, 36.842381, 36.556477>,  <39.742554, 37.043716, 36.561588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873085, 36.842381, 36.556477>,  <40.090637, 36.506824, 36.547958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873085, 36.842381, 36.556477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372568, -0.218656, -0.901877,
		-0.751923, -0.498445, 0.431468,
		-0.543879, 0.838894, 0.021292,
		39.709923, 37.094048, 36.562866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340199, 36.299366, 36.356468>,  <40.090637, 36.506824, 36.547958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340199, 36.299366, 36.356468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454941, 36.672905, 36.271004>,  <39.523785, 36.897026, 36.219727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454941, 36.672905, 36.271004>,  <39.340199, 36.299366, 36.356468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454941, 36.672905, 36.271004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403070, -0.084675, -0.911244,
		-0.869052, 0.347511, 0.352115,
		0.286852, 0.933845, -0.213658,
		39.540997, 36.953060, 36.206905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704605, 36.195309, 35.749115>,  <39.340199, 36.299366, 36.356468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704605, 36.195309, 35.749115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759491, 35.807335, 35.829521>,  <39.792423, 35.574551, 35.877766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759491, 35.807335, 35.829521>,  <39.704605, 36.195309, 35.749115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759491, 35.807335, 35.829521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913685, -0.045553, 0.403862,
		-0.382561, -0.239080, -0.892462,
		0.137210, -0.969931, 0.201017,
		39.800655, 35.516357, 35.889828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033001, 35.770367, 35.500546>,  <39.704605, 36.195309, 35.749115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033001, 35.770367, 35.500546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224110, 35.581730, 35.797012>,  <39.338776, 35.468548, 35.974892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224110, 35.581730, 35.797012>,  <39.033001, 35.770367, 35.500546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224110, 35.581730, 35.797012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866622, -0.114852, 0.485567,
		-0.143865, -0.874305, -0.463565,
		0.477775, -0.471592, 0.741169,
		39.367443, 35.440254, 36.019363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622517, 35.159531, 35.609634>,  <39.033001, 35.770367, 35.500546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622517, 35.159531, 35.609634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812347, 35.199333, 35.959461>,  <38.926247, 35.223217, 36.169357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812347, 35.199333, 35.959461>,  <38.622517, 35.159531, 35.609634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812347, 35.199333, 35.959461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850205, -0.205400, 0.484729,
		0.227871, -0.973606, -0.012875,
		0.474579, 0.099510, 0.874570,
		38.954720, 35.229187, 36.221832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472565, 34.586823, 35.996117>,  <38.622517, 35.159531, 35.609634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472565, 34.586823, 35.996117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583851, 34.845200, 36.280472>,  <38.650623, 35.000225, 36.451084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583851, 34.845200, 36.280472>,  <38.472565, 34.586823, 35.996117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583851, 34.845200, 36.280472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816962, -0.230090, 0.528802,
		0.505141, -0.727889, 0.463692,
		0.278218, 0.645939, 0.710885,
		38.667316, 35.038982, 36.493736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329884, 34.217899, 36.640675>,  <38.472565, 34.586823, 35.996117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329884, 34.217899, 36.640675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359905, 34.603397, 36.743092>,  <38.377918, 34.834698, 36.804543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359905, 34.603397, 36.743092>,  <38.329884, 34.217899, 36.640675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359905, 34.603397, 36.743092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726103, -0.123173, 0.676464,
		0.683478, -0.236684, 0.690535,
		0.075052, 0.963747, 0.256043,
		38.382420, 34.892521, 36.819904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354057, 34.239491, 37.338692>,  <38.329884, 34.217899, 36.640675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354057, 34.239491, 37.338692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232578, 34.610222, 37.250362>,  <38.159691, 34.832661, 37.197365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232578, 34.610222, 37.250362>,  <38.354057, 34.239491, 37.338692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232578, 34.610222, 37.250362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751036, -0.090261, 0.654063,
		0.586269, 0.364487, 0.723490,
		-0.303701, 0.926824, -0.220825,
		38.141468, 34.888268, 37.184116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481529, 34.662868, 37.933228>,  <38.354057, 34.239491, 37.338692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481529, 34.662868, 37.933228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205151, 34.853203, 37.715538>,  <38.039322, 34.967403, 37.584923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205151, 34.853203, 37.715538>,  <38.481529, 34.662868, 37.933228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205151, 34.853203, 37.715538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608772, 0.023005, 0.793012,
		0.389861, 0.879235, 0.273778,
		-0.690945, 0.475833, -0.544223,
		37.997868, 34.995953, 37.552273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475742, 35.293076, 38.239811>,  <38.481529, 34.662868, 37.933228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475742, 35.293076, 38.239811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135426, 35.251968, 38.033665>,  <37.931236, 35.227303, 37.909977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135426, 35.251968, 38.033665>,  <38.475742, 35.293076, 38.239811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135426, 35.251968, 38.033665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515323, 0.355311, 0.779869,
		0.102970, 0.929081, -0.355252,
		-0.850787, -0.102767, -0.515364,
		37.880188, 35.221138, 37.879055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100693, 35.747078, 38.611633>,  <38.475742, 35.293076, 38.239811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100693, 35.747078, 38.611633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834942, 35.528271, 38.407917>,  <37.675491, 35.396988, 38.285686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834942, 35.528271, 38.407917>,  <38.100693, 35.747078, 38.611633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834942, 35.528271, 38.407917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694296, 0.199439, 0.691503,
		-0.276690, 0.813018, -0.512293,
		-0.664376, -0.547015, -0.509293,
		37.635628, 35.364166, 38.255131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487419, 36.015068, 38.891399>,  <38.100693, 35.747078, 38.611633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487419, 36.015068, 38.891399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379524, 35.675941, 38.708771>,  <37.314785, 35.472466, 38.599194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379524, 35.675941, 38.708771>,  <37.487419, 36.015068, 38.891399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379524, 35.675941, 38.708771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664620, -0.179178, 0.725379,
		-0.696793, 0.499109, -0.515141,
		-0.269741, -0.847812, -0.456568,
		37.298603, 35.421597, 38.571800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749294, 36.010914, 38.699726>,  <37.487419, 36.015068, 38.891399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749294, 36.010914, 38.699726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875504, 35.633965, 38.744225>,  <36.951229, 35.407795, 38.770924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875504, 35.633965, 38.744225>,  <36.749294, 36.010914, 38.699726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875504, 35.633965, 38.744225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588387, -0.102321, 0.802080,
		-0.744477, -0.318530, -0.586765,
		0.315524, -0.942375, 0.111243,
		36.970161, 35.351254, 38.777599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150749, 35.810337, 39.018208>,  <36.749294, 36.010914, 38.699726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150749, 35.810337, 39.018208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413677, 35.513344, 39.069828>,  <36.571434, 35.335148, 39.100800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413677, 35.513344, 39.069828>,  <36.150749, 35.810337, 39.018208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413677, 35.513344, 39.069828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422847, -0.221623, 0.878683,
		-0.623807, -0.632141, -0.459633,
		0.657317, -0.742483, 0.129048,
		36.610874, 35.290600, 39.108543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770885, 35.294643, 39.223953>,  <36.150749, 35.810337, 39.018208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770885, 35.294643, 39.223953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137215, 35.200344, 39.353989>,  <36.357014, 35.143764, 39.432011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137215, 35.200344, 39.353989>,  <35.770885, 35.294643, 39.223953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137215, 35.200344, 39.353989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371965, -0.192927, 0.907977,
		-0.151324, -0.952474, -0.264374,
		0.915829, -0.235737, 0.325092,
		36.411964, 35.129620, 39.451515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686073, 34.698502, 39.680767>,  <35.770885, 35.294643, 39.223953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686073, 34.698502, 39.680767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047855, 34.846264, 39.766098>,  <36.264923, 34.934921, 39.817295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047855, 34.846264, 39.766098>,  <35.686073, 34.698502, 39.680767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047855, 34.846264, 39.766098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156618, -0.177596, 0.971561,
		0.396786, -0.912140, -0.102772,
		0.904451, 0.369406, 0.213325,
		36.319191, 34.957085, 39.830097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327358, 34.380966, 39.149082>,  <35.686073, 34.698502, 39.680767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327358, 34.380966, 39.149082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162552, 34.016499, 39.150436>,  <35.063667, 33.797817, 39.151249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162552, 34.016499, 39.150436>,  <35.327358, 34.380966, 39.149082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162552, 34.016499, 39.150436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241571, 0.105645, -0.964615,
		0.878573, -0.398251, -0.263640,
		-0.412012, -0.911172, 0.003389,
		35.038948, 33.743149, 39.151455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589417, 34.086288, 38.516151>,  <35.327358, 34.380966, 39.149082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589417, 34.086288, 38.516151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273167, 33.861485, 38.613358>,  <35.083416, 33.726601, 38.671680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273167, 33.861485, 38.613358>,  <35.589417, 34.086288, 38.516151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273167, 33.861485, 38.613358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290639, -0.004874, -0.956820,
		0.538928, -0.827116, -0.159489,
		-0.790624, -0.562010, 0.243019,
		35.035980, 33.692883, 38.686264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549442, 33.555119, 38.018711>,  <35.589417, 34.086288, 38.516151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549442, 33.555119, 38.018711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180752, 33.592007, 38.169395>,  <34.959538, 33.614140, 38.259808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180752, 33.592007, 38.169395>,  <35.549442, 33.555119, 38.018711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180752, 33.592007, 38.169395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378143, 0.002093, -0.925745,
		-0.086166, -0.995736, 0.032946,
		-0.921728, 0.092226, 0.376711,
		34.904232, 33.619675, 38.282410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233479, 33.117294, 37.574081>,  <35.549442, 33.555119, 38.018711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233479, 33.117294, 37.574081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933746, 33.327435, 37.735329>,  <34.753906, 33.453518, 37.832077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933746, 33.327435, 37.735329>,  <35.233479, 33.117294, 37.574081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933746, 33.327435, 37.735329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361520, 0.185483, -0.913728,
		-0.554801, -0.830423, 0.050937,
		-0.749333, 0.525352, 0.403120,
		34.708946, 33.485039, 37.856266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553257, 32.869057, 37.254520>,  <35.233479, 33.117294, 37.574081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553257, 32.869057, 37.254520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488728, 33.244568, 37.376282>,  <34.450008, 33.469875, 37.449341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488728, 33.244568, 37.376282>,  <34.553257, 32.869057, 37.254520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488728, 33.244568, 37.376282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314280, 0.243520, -0.917565,
		-0.935522, -0.243697, 0.255754,
		-0.161326, 0.938781, 0.304408,
		34.440331, 33.526203, 37.467606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921352, 33.078983, 36.975800>,  <34.553257, 32.869057, 37.254520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921352, 33.078983, 36.975800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069695, 33.440384, 37.061737>,  <34.158699, 33.657223, 37.113300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069695, 33.440384, 37.061737>,  <33.921352, 33.078983, 36.975800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069695, 33.440384, 37.061737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490472, 0.386991, -0.780817,
		-0.788608, 0.184198, 0.586659,
		0.370856, 0.903498, 0.214840,
		34.180950, 33.711433, 37.126190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430080, 33.715096, 37.060005>,  <33.921352, 33.078983, 36.975800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430080, 33.715096, 37.060005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769726, 33.904362, 36.966091>,  <33.973515, 34.017921, 36.909744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769726, 33.904362, 36.966091>,  <33.430080, 33.715096, 37.060005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769726, 33.904362, 36.966091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486655, 0.527971, -0.695998,
		-0.205359, 0.705241, 0.678574,
		0.849113, 0.473161, -0.234786,
		34.024460, 34.046310, 36.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291645, 34.366608, 36.980988>,  <33.430080, 33.715096, 37.060005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291645, 34.366608, 36.980988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662430, 34.384850, 36.832039>,  <33.884903, 34.395794, 36.742672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662430, 34.384850, 36.832039>,  <33.291645, 34.366608, 36.980988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662430, 34.384850, 36.832039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308118, 0.658789, -0.686338,
		0.214014, 0.750945, 0.624724,
		0.926963, 0.045603, -0.372370,
		33.940517, 34.398529, 36.720329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535561, 35.012142, 37.157410>,  <33.291645, 34.366608, 36.980988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535561, 35.012142, 37.157410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702862, 34.889969, 36.815235>,  <33.803242, 34.816666, 36.609932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702862, 34.889969, 36.815235>,  <33.535561, 35.012142, 37.157410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702862, 34.889969, 36.815235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387011, 0.792086, -0.472040,
		0.821758, 0.528496, 0.213086,
		0.418254, -0.305436, -0.855437,
		33.828339, 34.798340, 36.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618641, 35.566414, 36.788971>,  <33.535561, 35.012142, 37.157410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618641, 35.566414, 36.788971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712112, 35.329369, 36.480633>,  <33.768196, 35.187141, 36.295628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712112, 35.329369, 36.480633>,  <33.618641, 35.566414, 36.788971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712112, 35.329369, 36.480633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382457, 0.672868, -0.633226,
		0.893937, 0.442785, -0.069416,
		0.233675, -0.592612, -0.770848,
		33.782215, 35.151585, 36.249378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863552, 36.014374, 36.303127>,  <33.618641, 35.566414, 36.788971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863552, 36.014374, 36.303127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748280, 35.688675, 36.101555>,  <33.679115, 35.493256, 35.980614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748280, 35.688675, 36.101555>,  <33.863552, 36.014374, 36.303127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748280, 35.688675, 36.101555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466880, 0.578945, -0.668465,
		0.836046, 0.042632, -0.547001,
		-0.288185, -0.814251, -0.503929,
		33.661823, 35.444401, 35.950375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995731, 36.002934, 35.565701>,  <33.863552, 36.014374, 36.303127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995731, 36.002934, 35.565701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679783, 35.765121, 35.625889>,  <33.490215, 35.622433, 35.662003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679783, 35.765121, 35.625889>,  <33.995731, 36.002934, 35.565701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679783, 35.765121, 35.625889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494155, 0.471683, -0.730292,
		0.363204, -0.651192, -0.666357,
		-0.789870, -0.594529, 0.150472,
		33.442822, 35.586761, 35.671032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.605633, 32.748417, 42.502510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212723, 32.705708, 42.564140>,  <35.976978, 32.680080, 42.601120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.212723, 32.705708, 42.564140>,  <36.605633, 32.748417, 42.502510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212723, 32.705708, 42.564140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153262, -0.015872, -0.988058,
		0.107948, -0.994156, -0.000774,
		-0.982272, -0.106777, 0.154080,
		35.918041, 32.673676, 42.610363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408314, 32.167439, 42.165359>,  <36.605633, 32.748417, 42.502510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408314, 32.167439, 42.165359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074543, 32.384544, 42.203590>,  <35.874279, 32.514809, 42.226528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.074543, 32.384544, 42.203590>,  <36.408314, 32.167439, 42.165359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074543, 32.384544, 42.203590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160085, -0.072765, -0.984418,
		-0.527353, -0.836727, 0.147606,
		-0.834429, 0.542764, 0.095575,
		35.824215, 32.547375, 42.232262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021881, 32.027866, 41.547287>,  <36.408314, 32.167439, 42.165359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021881, 32.027866, 41.547287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792122, 32.329266, 41.675224>,  <35.654266, 32.510105, 41.751987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792122, 32.329266, 41.675224>,  <36.021881, 32.027866, 41.547287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792122, 32.329266, 41.675224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298746, 0.170815, -0.938921,
		-0.762114, -0.634867, 0.126990,
		-0.574398, 0.753503, 0.319844,
		35.619801, 32.555317, 41.771179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307194, 31.907772, 41.202904>,  <36.021881, 32.027866, 41.547287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307194, 31.907772, 41.202904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351913, 32.291363, 41.307106>,  <35.378746, 32.521519, 41.369625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351913, 32.291363, 41.307106>,  <35.307194, 31.907772, 41.202904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351913, 32.291363, 41.307106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348755, 0.283337, -0.893359,
		-0.930521, 0.009027, 0.366126,
		0.111801, 0.958978, 0.260503,
		35.385452, 32.579056, 41.385258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626987, 32.251999, 41.052414>,  <35.307194, 31.907772, 41.202904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626987, 32.251999, 41.052414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908634, 32.534706, 41.079830>,  <35.077621, 32.704330, 41.096279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908634, 32.534706, 41.079830>,  <34.626987, 32.251999, 41.052414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908634, 32.534706, 41.079830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138234, 0.231109, -0.963058,
		-0.696499, 0.668630, 0.260427,
		0.704116, 0.706769, 0.068540,
		35.119869, 32.746738, 41.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265217, 32.911499, 40.923740>,  <34.626987, 32.251999, 41.052414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265217, 32.911499, 40.923740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655659, 32.958984, 40.850933>,  <34.889923, 32.987476, 40.807247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655659, 32.958984, 40.850933>,  <34.265217, 32.911499, 40.923740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655659, 32.958984, 40.850933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217068, 0.492812, -0.842626,
		-0.010332, 0.861999, 0.506804,
		0.976102, 0.118717, -0.182021,
		34.948490, 32.994598, 40.796326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275444, 33.526306, 40.616005>,  <34.265217, 32.911499, 40.923740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275444, 33.526306, 40.616005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615364, 33.354366, 40.493973>,  <34.819317, 33.251202, 40.420753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615364, 33.354366, 40.493973>,  <34.275444, 33.526306, 40.616005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615364, 33.354366, 40.493973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080484, 0.466173, -0.881025,
		0.520930, 0.773246, 0.361556,
		0.849796, -0.429853, -0.305078,
		34.870304, 33.225410, 40.402451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694466, 34.026920, 40.319839>,  <34.275444, 33.526306, 40.616005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694466, 34.026920, 40.319839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847675, 33.684044, 40.182137>,  <34.939602, 33.478317, 40.099514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847675, 33.684044, 40.182137>,  <34.694466, 34.026920, 40.319839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847675, 33.684044, 40.182137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125310, 0.417452, -0.900017,
		0.915198, 0.301592, 0.267311,
		0.383028, -0.857191, -0.344258,
		34.962585, 33.426888, 40.078857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324894, 34.159649, 40.196926>,  <34.694466, 34.026920, 40.319839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324894, 34.159649, 40.196926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205879, 33.860874, 39.959084>,  <35.134472, 33.681610, 39.816376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205879, 33.860874, 39.959084>,  <35.324894, 34.159649, 40.196926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205879, 33.860874, 39.959084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060682, 0.606763, -0.792563,
		0.952780, -0.271899, -0.135209,
		-0.297537, -0.746933, -0.594611,
		35.116619, 33.636795, 39.780701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151539, 34.179775, 40.169525>,  <35.324894, 34.159649, 40.196926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151539, 34.179775, 40.169525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268356, 34.559006, 40.219906>,  <36.338448, 34.786545, 40.250134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268356, 34.559006, 40.219906>,  <36.151539, 34.179775, 40.169525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268356, 34.559006, 40.219906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124931, -0.092747, 0.987821,
		0.948210, -0.304221, 0.091358,
		0.292043, 0.948076, 0.125950,
		36.355968, 34.843430, 40.257690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400307, 34.104836, 40.783546>,  <36.151539, 34.179775, 40.169525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400307, 34.104836, 40.783546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402248, 34.501793, 40.734333>,  <36.403412, 34.739967, 40.704803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402248, 34.501793, 40.734333>,  <36.400307, 34.104836, 40.783546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402248, 34.501793, 40.734333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178084, 0.121930, 0.976432,
		0.984003, 0.017172, 0.177320,
		0.004853, 0.992390, -0.123038,
		36.403706, 34.799511, 40.697422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942097, 34.312107, 41.240452>,  <36.400307, 34.104836, 40.783546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942097, 34.312107, 41.240452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719044, 34.637836, 41.176041>,  <36.585213, 34.833275, 41.137394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719044, 34.637836, 41.176041>,  <36.942097, 34.312107, 41.240452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719044, 34.637836, 41.176041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093207, 0.131338, 0.986946,
		0.824840, 0.565359, 0.002662,
		-0.557630, 0.814321, -0.161028,
		36.551754, 34.882133, 41.127731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248119, 34.842476, 41.560749>,  <36.942097, 34.312107, 41.240452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248119, 34.842476, 41.560749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868172, 34.966892, 41.548103>,  <36.640202, 35.041542, 41.540516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868172, 34.966892, 41.548103>,  <37.248119, 34.842476, 41.560749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868172, 34.966892, 41.548103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013788, 0.142701, 0.989670,
		0.312342, 0.939622, -0.139836,
		-0.949870, 0.311043, -0.031616,
		36.583210, 35.060204, 41.538620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234684, 35.483139, 41.863827>,  <37.248119, 34.842476, 41.560749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234684, 35.483139, 41.863827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853638, 35.369362, 41.906952>,  <36.625011, 35.301094, 41.932827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853638, 35.369362, 41.906952>,  <37.234684, 35.483139, 41.863827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853638, 35.369362, 41.906952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015123, 0.398265, 0.917146,
		-0.303812, 0.872054, -0.383694,
		-0.952612, -0.284442, 0.107809,
		36.567856, 35.284031, 41.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021194, 35.986576, 42.294399>,  <37.234684, 35.483139, 41.863827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021194, 35.986576, 42.294399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721722, 35.721489, 42.287708>,  <36.542038, 35.562435, 42.283695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721722, 35.721489, 42.287708>,  <37.021194, 35.986576, 42.294399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721722, 35.721489, 42.287708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214282, 0.218046, 0.952124,
		-0.627344, 0.716420, -0.305256,
		-0.748680, -0.662720, -0.016726,
		36.497116, 35.522675, 42.282692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465588, 36.349709, 42.519840>,  <37.021194, 35.986576, 42.294399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465588, 36.349709, 42.519840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378017, 35.963955, 42.579227>,  <36.325478, 35.732502, 42.614861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378017, 35.963955, 42.579227>,  <36.465588, 36.349709, 42.519840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378017, 35.963955, 42.579227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266796, 0.205519, 0.941585,
		-0.938559, 0.166525, -0.302286,
		-0.218923, -0.964381, 0.148463,
		36.312340, 35.674641, 42.623768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780697, 36.367573, 42.829964>,  <36.465588, 36.349709, 42.519840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780697, 36.367573, 42.829964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964485, 36.026974, 42.931026>,  <36.074760, 35.822613, 42.991665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964485, 36.026974, 42.931026>,  <35.780697, 36.367573, 42.829964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964485, 36.026974, 42.931026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361837, 0.080337, 0.928773,
		-0.811146, -0.518168, -0.271190,
		0.459474, -0.851498, 0.252658,
		36.102325, 35.771526, 43.006824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312248, 35.992695, 43.304909>,  <35.780697, 36.367573, 42.829964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312248, 35.992695, 43.304909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656418, 35.801594, 43.375805>,  <35.862919, 35.686932, 43.418343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656418, 35.801594, 43.375805>,  <35.312248, 35.992695, 43.304909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656418, 35.801594, 43.375805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, 0.173683, 0.979160,
		-0.498583, -0.861152, 0.099153,
		0.860427, -0.477756, 0.177240,
		35.914547, 35.658268, 43.428978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203915, 35.460423, 43.824005>,  <35.312248, 35.992695, 43.304909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203915, 35.460423, 43.824005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593151, 35.534779, 43.878468>,  <35.826694, 35.579391, 43.911144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593151, 35.534779, 43.878468>,  <35.203915, 35.460423, 43.824005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593151, 35.534779, 43.878468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106059, -0.163247, 0.980868,
		0.204564, -0.968914, -0.139138,
		0.973090, 0.185893, 0.136157,
		35.885078, 35.590546, 43.919315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355297, 34.996155, 44.300014>,  <35.203915, 35.460423, 43.824005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355297, 34.996155, 44.300014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678299, 35.231873, 44.289677>,  <35.872101, 35.373302, 44.283474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678299, 35.231873, 44.289677>,  <35.355297, 34.996155, 44.300014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678299, 35.231873, 44.289677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109604, -0.106848, 0.988216,
		0.579585, -0.800824, -0.150869,
		0.807507, 0.589291, -0.025846,
		35.920551, 35.408661, 44.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785385, 34.672298, 44.629440>,  <35.355297, 34.996155, 44.300014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785385, 34.672298, 44.629440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956829, 35.032162, 44.662708>,  <36.059696, 35.248077, 44.682671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956829, 35.032162, 44.662708>,  <35.785385, 34.672298, 44.629440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956829, 35.032162, 44.662708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003479, -0.090414, 0.995898,
		0.903485, -0.427137, -0.035622,
		0.428605, 0.899655, 0.083174,
		36.085411, 35.302059, 44.687660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518578, 34.600132, 44.901260>,  <35.785385, 34.672298, 44.629440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518578, 34.600132, 44.901260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424007, 34.982834, 44.969048>,  <36.367264, 35.212456, 45.009720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424007, 34.982834, 44.969048>,  <36.518578, 34.600132, 44.901260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424007, 34.982834, 44.969048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263869, -0.104636, 0.958866,
		0.935134, 0.271418, -0.227720,
		-0.236426, 0.956757, 0.169467,
		36.353081, 35.269859, 45.019886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080124, 34.823013, 45.309860>,  <36.518578, 34.600132, 44.901260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080124, 34.823013, 45.309860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778332, 35.081841, 45.353794>,  <36.597256, 35.237137, 45.380154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778332, 35.081841, 45.353794>,  <37.080124, 34.823013, 45.309860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778332, 35.081841, 45.353794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180660, 0.043869, 0.982567,
		0.630974, 0.761165, -0.149998,
		-0.754476, 0.647073, 0.109832,
		36.551991, 35.275963, 45.386745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.073589, 36.522427, 45.944134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446033, 36.414310, 46.042099>,  <32.669498, 36.349442, 46.100880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446033, 36.414310, 46.042099>,  <32.073589, 36.522427, 45.944134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446033, 36.414310, 46.042099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285097, 0.120492, -0.950895,
		0.227511, 0.955208, 0.189251,
		0.931106, -0.270294, 0.244914,
		32.725365, 36.333221, 46.115574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505024, 37.093399, 45.774498>,  <32.073589, 36.522427, 45.944134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505024, 37.093399, 45.774498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717018, 36.755074, 45.798882>,  <32.844215, 36.552078, 45.813511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717018, 36.755074, 45.798882>,  <32.505024, 37.093399, 45.774498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717018, 36.755074, 45.798882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366907, 0.163905, -0.915704,
		0.764522, 0.507678, 0.397202,
		0.529986, -0.845812, 0.060962,
		32.876015, 36.501331, 45.817169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251324, 37.130993, 45.797890>,  <32.505024, 37.093399, 45.774498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251324, 37.130993, 45.797890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189770, 36.765503, 45.647469>,  <33.152836, 36.546207, 45.557213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189770, 36.765503, 45.647469>,  <33.251324, 37.130993, 45.797890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189770, 36.765503, 45.647469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618288, 0.207825, -0.757977,
		0.770739, -0.349156, 0.532965,
		-0.153888, -0.913728, -0.376058,
		33.143604, 36.491386, 45.534653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850536, 37.028168, 45.576511>,  <33.251324, 37.130993, 45.797890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850536, 37.028168, 45.576511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632549, 36.768494, 45.364258>,  <33.501759, 36.612690, 45.236904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.632549, 36.768494, 45.364258>,  <33.850536, 37.028168, 45.576511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632549, 36.768494, 45.364258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522708, 0.231792, -0.820395,
		0.655582, -0.724456, 0.213013,
		-0.544966, -0.649180, -0.530638,
		33.469059, 36.573738, 45.205067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283291, 36.791325, 45.110992>,  <33.850536, 37.028168, 45.576511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283291, 36.791325, 45.110992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925949, 36.691612, 44.961445>,  <33.711544, 36.631786, 44.871716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925949, 36.691612, 44.961445>,  <34.283291, 36.791325, 45.110992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925949, 36.691612, 44.961445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357490, 0.109814, -0.927438,
		0.272249, -0.962185, -0.008988,
		-0.893354, -0.249281, -0.373868,
		33.657944, 36.616829, 44.849285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436321, 36.405430, 44.536655>,  <34.283291, 36.791325, 45.110992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436321, 36.405430, 44.536655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062630, 36.520142, 44.451824>,  <33.838417, 36.588970, 44.400925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062630, 36.520142, 44.451824>,  <34.436321, 36.405430, 44.536655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062630, 36.520142, 44.451824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273070, 0.192533, -0.942531,
		-0.229465, -0.938450, -0.258180,
		-0.934226, 0.286779, -0.212083,
		33.782360, 36.606174, 44.388199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230797, 35.991264, 43.941650>,  <34.436321, 36.405430, 44.536655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230797, 35.991264, 43.941650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018440, 36.328651, 43.974434>,  <33.891026, 36.531082, 43.994102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018440, 36.328651, 43.974434>,  <34.230797, 35.991264, 43.941650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018440, 36.328651, 43.974434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102967, 0.160198, -0.981700,
		-0.841162, -0.512736, -0.171897,
		-0.530891, 0.843468, 0.081957,
		33.859173, 36.581692, 43.999020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820942, 36.040913, 43.300716>,  <34.230797, 35.991264, 43.941650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820942, 36.040913, 43.300716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780102, 36.403255, 43.465157>,  <33.755600, 36.620663, 43.563820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780102, 36.403255, 43.465157>,  <33.820942, 36.040913, 43.300716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780102, 36.403255, 43.465157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052444, 0.407782, -0.911572,
		-0.993391, -0.114628, 0.005874,
		-0.102096, 0.905855, 0.411098,
		33.749474, 36.675011, 43.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327507, 36.257782, 42.976871>,  <33.820942, 36.040913, 43.300716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327507, 36.257782, 42.976871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524368, 36.573509, 43.123711>,  <33.642487, 36.762947, 43.211815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524368, 36.573509, 43.123711>,  <33.327507, 36.257782, 42.976871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524368, 36.573509, 43.123711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128210, 0.351377, -0.927414,
		-0.861016, 0.503494, 0.071732,
		0.492153, 0.789321, 0.367095,
		33.672012, 36.810307, 43.233841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114773, 36.752792, 42.519085>,  <33.327507, 36.257782, 42.976871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114773, 36.752792, 42.519085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445175, 36.908134, 42.682495>,  <33.643417, 37.001339, 42.780540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445175, 36.908134, 42.682495>,  <33.114773, 36.752792, 42.519085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445175, 36.908134, 42.682495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245087, 0.405216, -0.880757,
		-0.507586, 0.827636, 0.239531,
		0.826008, 0.388353, 0.408525,
		33.692978, 37.024639, 42.805054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008854, 37.497829, 42.411854>,  <33.114773, 36.752792, 42.519085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008854, 37.497829, 42.411854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390739, 37.389908, 42.462032>,  <33.619869, 37.325157, 42.492138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390739, 37.389908, 42.462032>,  <33.008854, 37.497829, 42.411854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390739, 37.389908, 42.462032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242917, 0.463328, -0.852243,
		0.171814, 0.844118, 0.507883,
		0.954710, -0.269801, 0.125445,
		33.677151, 37.308968, 42.499664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325912, 38.102154, 42.176624>,  <33.008854, 37.497829, 42.411854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325912, 38.102154, 42.176624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602100, 37.812935, 42.168083>,  <33.767811, 37.639404, 42.162956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602100, 37.812935, 42.168083>,  <33.325912, 38.102154, 42.176624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602100, 37.812935, 42.168083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489514, 0.488785, -0.722125,
		0.532570, 0.488150, 0.691432,
		0.690467, -0.723048, -0.021357,
		33.809242, 37.596020, 42.161674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903011, 38.413300, 41.854416>,  <33.325912, 38.102154, 42.176624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903011, 38.413300, 41.854416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017586, 38.031208, 41.824757>,  <34.086330, 37.801952, 41.806961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017586, 38.031208, 41.824757>,  <33.903011, 38.413300, 41.854416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017586, 38.031208, 41.824757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309651, 0.165540, -0.936329,
		0.906680, 0.245241, 0.343204,
		0.286440, -0.955224, -0.074153,
		34.103519, 37.744640, 41.802509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591347, 38.453884, 41.650085>,  <33.903011, 38.413300, 41.854416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591347, 38.453884, 41.650085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434376, 38.103638, 41.537453>,  <34.340191, 37.893490, 41.469872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434376, 38.103638, 41.537453>,  <34.591347, 38.453884, 41.650085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434376, 38.103638, 41.537453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140243, 0.245602, -0.959173,
		0.909027, -0.415898, 0.026418,
		-0.392430, -0.875619, -0.281585,
		34.316647, 37.840954, 41.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262791, 38.277054, 41.864429>,  <34.591347, 38.453884, 41.650085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262791, 38.277054, 41.864429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596802, 38.497089, 41.869030>,  <35.797207, 38.629112, 41.871792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596802, 38.497089, 41.869030>,  <35.262791, 38.277054, 41.864429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596802, 38.497089, 41.869030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117201, 0.157409, 0.980554,
		0.537581, -0.820137, 0.195911,
		0.835027, 0.550089, 0.011501,
		35.847309, 38.662117, 41.872478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826180, 38.063313, 42.396179>,  <35.262791, 38.277054, 41.864429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826180, 38.063313, 42.396179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899513, 38.451492, 42.333416>,  <35.943516, 38.684399, 42.295757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899513, 38.451492, 42.333416>,  <35.826180, 38.063313, 42.396179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899513, 38.451492, 42.333416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062325, 0.170764, 0.983339,
		0.981073, -0.170503, 0.091790,
		0.183337, 0.970448, -0.156905,
		35.954514, 38.742626, 42.286343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180351, 38.209724, 42.925350>,  <35.826180, 38.063313, 42.396179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180351, 38.209724, 42.925350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041138, 38.564514, 42.803925>,  <35.957607, 38.777386, 42.731068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041138, 38.564514, 42.803925>,  <36.180351, 38.209724, 42.925350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041138, 38.564514, 42.803925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182665, 0.253440, 0.949948,
		0.919513, 0.386068, 0.073813,
		-0.348037, 0.886972, -0.303563,
		35.936726, 38.830605, 42.712856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509109, 38.715145, 43.429260>,  <36.180351, 38.209724, 42.925350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509109, 38.715145, 43.429260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193859, 38.895607, 43.261776>,  <36.004711, 39.003883, 43.161285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193859, 38.895607, 43.261776>,  <36.509109, 38.715145, 43.429260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193859, 38.895607, 43.261776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194053, 0.463449, 0.864615,
		0.584129, 0.762675, -0.277706,
		-0.788122, 0.451157, -0.418713,
		35.957424, 39.030952, 43.136162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542458, 39.450260, 43.561970>,  <36.509109, 38.715145, 43.429260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542458, 39.450260, 43.561970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161617, 39.349403, 43.492764>,  <35.933113, 39.288891, 43.451241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161617, 39.349403, 43.492764>,  <36.542458, 39.450260, 43.561970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161617, 39.349403, 43.492764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264210, 0.393461, 0.880557,
		-0.153951, 0.884089, -0.441232,
		-0.952099, -0.252140, -0.173011,
		35.875988, 39.273762, 43.440861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250282, 40.005177, 43.778252>,  <36.542458, 39.450260, 43.561970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250282, 40.005177, 43.778252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989075, 39.702316, 43.771404>,  <35.832348, 39.520599, 43.767296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989075, 39.702316, 43.771404>,  <36.250282, 40.005177, 43.778252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989075, 39.702316, 43.771404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175533, 0.129332, 0.975941,
		-0.736717, 0.640315, -0.217360,
		-0.653021, -0.757146, -0.017116,
		35.793167, 39.475174, 43.766270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665020, 40.240372, 44.173168>,  <36.250282, 40.005177, 43.778252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665020, 40.240372, 44.173168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616280, 39.843491, 44.162762>,  <35.587036, 39.605362, 44.156517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616280, 39.843491, 44.162762>,  <35.665020, 40.240372, 44.173168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616280, 39.843491, 44.162762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100772, -0.013710, 0.994815,
		-0.987420, 0.123840, -0.098316,
		-0.121850, -0.992207, -0.026017,
		35.579723, 39.545830, 44.154957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170731, 40.070835, 44.651360>,  <35.665020, 40.240372, 44.173168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170731, 40.070835, 44.651360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324162, 39.703804, 44.609577>,  <35.416222, 39.483585, 44.584507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324162, 39.703804, 44.609577>,  <35.170731, 40.070835, 44.651360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324162, 39.703804, 44.609577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134547, -0.167432, 0.976659,
		-0.913653, -0.360574, -0.187682,
		0.383581, -0.917580, -0.104460,
		35.439236, 39.428532, 44.578239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717098, 39.627682, 45.042263>,  <35.170731, 40.070835, 44.651360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717098, 39.627682, 45.042263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060085, 39.424099, 45.012035>,  <35.265877, 39.301949, 44.993896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060085, 39.424099, 45.012035>,  <34.717098, 39.627682, 45.042263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060085, 39.424099, 45.012035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058926, -0.243043, 0.968224,
		-0.511155, -0.825766, -0.238392,
		0.857466, -0.508960, -0.075573,
		35.317326, 39.271412, 44.989365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515835, 39.018276, 45.253139>,  <34.717098, 39.627682, 45.042263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515835, 39.018276, 45.253139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911644, 38.983414, 45.299183>,  <35.149128, 38.962498, 45.326809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911644, 38.983414, 45.299183>,  <34.515835, 39.018276, 45.253139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911644, 38.983414, 45.299183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136433, -0.303661, 0.942962,
		-0.047229, -0.948786, -0.312370,
		0.989523, -0.087153, 0.115104,
		35.208500, 38.957268, 45.333714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586143, 38.327606, 45.435070>,  <34.515835, 39.018276, 45.253139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586143, 38.327606, 45.435070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.907009, 38.522717, 45.572826>,  <35.099529, 38.639782, 45.655479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.907009, 38.522717, 45.572826>,  <34.586143, 38.327606, 45.435070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907009, 38.522717, 45.572826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075353, -0.489461, 0.868763,
		0.592332, -0.722840, -0.355872,
		0.802163, 0.487780, 0.344392,
		35.147659, 38.669052, 45.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092567, 37.828671, 45.594921>,  <34.586143, 38.327606, 45.435070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092567, 37.828671, 45.594921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196171, 38.144241, 45.817814>,  <35.258335, 38.333584, 45.951550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196171, 38.144241, 45.817814>,  <35.092567, 37.828671, 45.594921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196171, 38.144241, 45.817814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128897, -0.599995, 0.789551,
		0.957235, -0.132676, -0.257095,
		0.259011, 0.788925, 0.557235,
		35.273872, 38.380920, 45.984985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659176, 37.634285, 45.933777>,  <35.092567, 37.828671, 45.594921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659176, 37.634285, 45.933777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518517, 37.941826, 46.147400>,  <35.434120, 38.126350, 46.275574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518517, 37.941826, 46.147400>,  <35.659176, 37.634285, 45.933777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518517, 37.941826, 46.147400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054539, -0.586349, 0.808221,
		0.934540, 0.255086, 0.248123,
		-0.351653, 0.768847, 0.534054,
		35.413021, 38.172482, 46.307617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149036, 37.590599, 46.533783>,  <35.659176, 37.634285, 45.933777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149036, 37.590599, 46.533783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846302, 37.840317, 46.611198>,  <35.664661, 37.990147, 46.657646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846302, 37.840317, 46.611198>,  <36.149036, 37.590599, 46.533783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846302, 37.840317, 46.611198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267701, -0.566211, 0.779578,
		0.596272, 0.538199, 0.595652,
		-0.756833, 0.624297, 0.193539,
		35.619251, 38.027607, 46.669262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894203, 37.790405, 46.530720>,  <36.149036, 37.590599, 46.533783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894203, 37.790405, 46.530720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222000, 37.581093, 46.624195>,  <37.418678, 37.455505, 46.680283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222000, 37.581093, 46.624195>,  <36.894203, 37.790405, 46.530720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222000, 37.581093, 46.624195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342730, 0.120672, -0.931652,
		0.459317, 0.843572, 0.278234,
		0.819490, -0.523282, 0.233691,
		37.467846, 37.424107, 46.694302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384949, 38.221001, 46.189709>,  <36.894203, 37.790405, 46.530720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384949, 38.221001, 46.189709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548775, 37.868881, 46.285477>,  <37.647072, 37.657608, 46.342937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548775, 37.868881, 46.285477>,  <37.384949, 38.221001, 46.189709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548775, 37.868881, 46.285477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531620, 0.017026, -0.846812,
		0.741375, 0.474106, 0.474960,
		0.409565, -0.880303, 0.239422,
		37.671646, 37.604790, 46.357304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120136, 38.365875, 46.009354>,  <37.384949, 38.221001, 46.189709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120136, 38.365875, 46.009354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054211, 37.971390, 46.003433>,  <38.014656, 37.734699, 45.999882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054211, 37.971390, 46.003433>,  <38.120136, 38.365875, 46.009354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054211, 37.971390, 46.003433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398206, -0.052803, -0.915775,
		0.902368, -0.156829, 0.401419,
		-0.164816, -0.986213, -0.014802,
		38.004765, 37.675526, 45.998993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674301, 38.065781, 45.751720>,  <38.120136, 38.365875, 46.009354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674301, 38.065781, 45.751720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423859, 37.761360, 45.683849>,  <38.273594, 37.578709, 45.643127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423859, 37.761360, 45.683849>,  <38.674301, 38.065781, 45.751720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423859, 37.761360, 45.683849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309069, -0.042439, -0.950092,
		0.715870, -0.647299, 0.261789,
		-0.626104, -0.761054, -0.169680,
		38.236027, 37.533043, 45.632946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011406, 37.456497, 45.314495>,  <38.674301, 38.065781, 45.751720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011406, 37.456497, 45.314495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617981, 37.415104, 45.255295>,  <38.381927, 37.390270, 45.219776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617981, 37.415104, 45.255295>,  <39.011406, 37.456497, 45.314495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617981, 37.415104, 45.255295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152248, -0.034385, -0.987744,
		0.097121, -0.994037, 0.049574,
		-0.983559, -0.103478, -0.148001,
		38.322914, 37.384060, 45.210896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917332, 36.941967, 44.856491>,  <39.011406, 37.456497, 45.314495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917332, 36.941967, 44.856491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563560, 37.128166, 44.843258>,  <38.351295, 37.239887, 44.835320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.563560, 37.128166, 44.843258>,  <38.917332, 36.941967, 44.856491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563560, 37.128166, 44.843258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010026, -0.089830, -0.995907,
		-0.466565, -0.880478, 0.084116,
		-0.884430, 0.465498, -0.033084,
		38.298233, 37.267815, 44.833332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447365, 36.520424, 44.365509>,  <38.917332, 36.941967, 44.856491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447365, 36.520424, 44.365509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284462, 36.885326, 44.383060>,  <38.186718, 37.104267, 44.393593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284462, 36.885326, 44.383060>,  <38.447365, 36.520424, 44.365509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284462, 36.885326, 44.383060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159241, -0.023614, -0.986957,
		-0.899322, -0.408937, 0.154886,
		-0.407261, 0.912257, 0.043883,
		38.162285, 37.159004, 44.396225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024742, 36.420605, 43.825279>,  <38.447365, 36.520424, 44.365509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024742, 36.420605, 43.825279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033558, 36.816387, 43.882530>,  <38.038849, 37.053856, 43.916882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033558, 36.816387, 43.882530>,  <38.024742, 36.420605, 43.825279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033558, 36.816387, 43.882530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092930, 0.144567, -0.985122,
		-0.995429, 0.008414, 0.095137,
		0.022042, 0.989459, 0.143124,
		38.040169, 37.113224, 43.925468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404362, 36.776096, 43.485634>,  <38.024742, 36.420605, 43.825279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404362, 36.776096, 43.485634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710526, 37.032036, 43.513180>,  <37.894222, 37.185600, 43.529709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710526, 37.032036, 43.513180>,  <37.404362, 36.776096, 43.485634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710526, 37.032036, 43.513180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002933, 0.110481, -0.993874,
		-0.643541, 0.760515, 0.086440,
		0.765406, 0.639852, 0.068869,
		37.940147, 37.223991, 43.533840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326729, 37.202541, 42.904430>,  <37.404362, 36.776096, 43.485634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326729, 37.202541, 42.904430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700729, 37.298222, 43.009163>,  <37.925129, 37.355629, 43.072002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700729, 37.298222, 43.009163>,  <37.326729, 37.202541, 42.904430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700729, 37.298222, 43.009163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230203, 0.152252, -0.961159,
		-0.269777, 0.958958, 0.087290,
		0.935001, 0.239204, 0.261829,
		37.981228, 37.369984, 43.087711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458530, 37.900097, 42.562630>,  <37.326729, 37.202541, 42.904430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458530, 37.900097, 42.562630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792896, 37.695827, 42.643085>,  <37.993515, 37.573265, 42.691360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792896, 37.695827, 42.643085>,  <37.458530, 37.900097, 42.562630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792896, 37.695827, 42.643085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392085, 0.299164, -0.869925,
		0.384071, 0.806050, 0.450303,
		0.835918, -0.510670, 0.201140,
		38.043671, 37.542625, 42.703426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982960, 38.409966, 42.407661>,  <37.458530, 37.900097, 42.562630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982960, 38.409966, 42.407661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159306, 38.051395, 42.389484>,  <38.265114, 37.836254, 42.378578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159306, 38.051395, 42.389484>,  <37.982960, 38.409966, 42.407661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159306, 38.051395, 42.389484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437764, 0.258935, -0.860997,
		0.783584, 0.359689, 0.506577,
		0.440861, -0.896424, -0.045438,
		38.291565, 37.782467, 42.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723721, 38.489426, 42.316666>,  <37.982960, 38.409966, 42.407661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723721, 38.489426, 42.316666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.659176, 38.107201, 42.217979>,  <38.620449, 37.877865, 42.158768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.659176, 38.107201, 42.217979>,  <38.723721, 38.489426, 42.316666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659176, 38.107201, 42.217979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389086, 0.168142, -0.905726,
		0.906959, -0.242139, 0.344664,
		-0.161359, -0.955561, -0.246711,
		38.610767, 37.820534, 42.143967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256405, 38.417824, 41.804058>,  <38.723721, 38.489426, 42.316666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256405, 38.417824, 41.804058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096474, 38.058849, 41.729496>,  <39.000515, 37.843464, 41.684757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.096474, 38.058849, 41.729496>,  <39.256405, 38.417824, 41.804058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096474, 38.058849, 41.729496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404163, 0.009913, -0.914633,
		0.822672, -0.441036, 0.358746,
		-0.399830, -0.897435, -0.186405,
		38.976524, 37.789619, 41.673576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.099600, 43.009338, 40.736717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.047344, 43.067837, 40.344482>,  <25.015991, 43.102936, 40.109142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.047344, 43.067837, 40.344482>,  <25.099600, 43.009338, 40.736717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047344, 43.067837, 40.344482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134520, -0.977300, -0.163674,
		-0.982262, -0.153291, 0.108002,
		-0.130640, 0.146243, -0.980585,
		25.008152, 43.111710, 40.050308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675453, 42.528400, 40.605038>,  <25.099600, 43.009338, 40.736717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675453, 42.528400, 40.605038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.806873, 42.624191, 40.239590>,  <24.885725, 42.681667, 40.020321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.806873, 42.624191, 40.239590>,  <24.675453, 42.528400, 40.605038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806873, 42.624191, 40.239590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142753, -0.968800, -0.202605,
		-0.933636, -0.063857, -0.352484,
		0.328549, 0.239477, -0.913623,
		24.905437, 42.696033, 39.965504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217873, 42.122990, 40.227634>,  <24.675453, 42.528400, 40.605038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217873, 42.122990, 40.227634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.537437, 42.211456, 40.003910>,  <24.729176, 42.264538, 39.869675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.537437, 42.211456, 40.003910>,  <24.217873, 42.122990, 40.227634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.537437, 42.211456, 40.003910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026137, -0.916287, -0.399668,
		-0.600882, 0.333917, -0.726251,
		0.798911, 0.221171, -0.559308,
		24.777111, 42.277809, 39.836117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153381, 41.900043, 39.509682>,  <24.217873, 42.122990, 40.227634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153381, 41.900043, 39.509682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.549723, 41.949287, 39.531796>,  <24.787527, 41.978832, 39.545063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.549723, 41.949287, 39.531796>,  <24.153381, 41.900043, 39.509682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549723, 41.949287, 39.531796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134542, -0.933049, -0.333643,
		0.010509, 0.338029, -0.941077,
		0.990852, 0.123108, 0.055285,
		24.846979, 41.986221, 39.548382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343355, 41.680420, 38.903290>,  <24.153381, 41.900043, 39.509682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343355, 41.680420, 38.903290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.665152, 41.655964, 39.139614>,  <24.858231, 41.641289, 39.281406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.665152, 41.655964, 39.139614>,  <24.343355, 41.680420, 38.903290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665152, 41.655964, 39.139614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237143, -0.878903, -0.413875,
		0.544568, 0.473065, -0.692571,
		0.804493, -0.061144, 0.590807,
		24.906500, 41.637619, 39.316856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854116, 41.500767, 38.477505>,  <24.343355, 41.680420, 38.903290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854116, 41.500767, 38.477505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.967930, 41.400120, 38.847527>,  <25.036217, 41.339733, 39.069542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.967930, 41.400120, 38.847527>,  <24.854116, 41.500767, 38.477505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967930, 41.400120, 38.847527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359282, -0.866627, -0.346229,
		0.888796, 0.430870, -0.156183,
		0.284532, -0.251613, 0.925058,
		25.053289, 41.324635, 39.125046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526211, 41.318989, 38.466869>,  <24.854116, 41.500767, 38.477505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526211, 41.318989, 38.466869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.396284, 41.133801, 38.796757>,  <25.318329, 41.022690, 38.994690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.396284, 41.133801, 38.796757>,  <25.526211, 41.318989, 38.466869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396284, 41.133801, 38.796757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396991, -0.858200, -0.325408,
		0.858424, 0.221707, 0.462552,
		-0.324816, -0.462968, 0.824715,
		25.298840, 40.994911, 39.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016169, 40.864315, 38.567101>,  <25.526211, 41.318989, 38.466869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016169, 40.864315, 38.567101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753885, 40.732918, 38.839024>,  <25.596516, 40.654079, 39.002178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753885, 40.732918, 38.839024>,  <26.016169, 40.864315, 38.567101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753885, 40.732918, 38.839024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435436, -0.900096, -0.014943,
		0.616798, 0.286214, 0.733241,
		-0.655710, -0.328496, 0.679805,
		25.557173, 40.634369, 39.042965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399551, 40.449089, 39.095650>,  <26.016169, 40.864315, 38.567101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399551, 40.449089, 39.095650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025934, 40.312820, 39.052738>,  <25.801764, 40.231060, 39.026993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025934, 40.312820, 39.052738>,  <26.399551, 40.449089, 39.095650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025934, 40.312820, 39.052738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325663, -0.935675, 0.135853,
		-0.146660, 0.091955, 0.984904,
		-0.934042, -0.340671, -0.107280,
		25.745722, 40.210621, 39.020554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301414, 39.905979, 39.485069>,  <26.399551, 40.449089, 39.095650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301414, 39.905979, 39.485069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978802, 39.851662, 39.254917>,  <25.785234, 39.819069, 39.116825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.978802, 39.851662, 39.254917>,  <26.301414, 39.905979, 39.485069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978802, 39.851662, 39.254917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086811, -0.989915, 0.111946,
		-0.584784, 0.040338, 0.810186,
		-0.806531, -0.135797, -0.575384,
		25.736843, 39.810921, 39.082302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011902, 39.283199, 39.841938>,  <26.301414, 39.905979, 39.485069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011902, 39.283199, 39.841938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863762, 39.313557, 39.471622>,  <25.774878, 39.331772, 39.249435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863762, 39.313557, 39.471622>,  <26.011902, 39.283199, 39.841938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863762, 39.313557, 39.471622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199462, -0.966910, -0.159060,
		-0.907225, -0.243567, 0.342955,
		-0.370348, 0.075897, -0.925787,
		25.752657, 39.336327, 39.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473886, 38.734135, 39.742062>,  <26.011902, 39.283199, 39.841938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473886, 38.734135, 39.742062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607533, 38.844437, 39.381546>,  <25.687719, 38.910618, 39.165237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607533, 38.844437, 39.381546>,  <25.473886, 38.734135, 39.742062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607533, 38.844437, 39.381546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022963, -0.958344, -0.284694,
		-0.942253, 0.074424, -0.326529,
		0.334115, 0.275752, -0.901293,
		25.707767, 38.927162, 39.111156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162970, 38.167641, 39.312611>,  <25.473886, 38.734135, 39.742062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162970, 38.167641, 39.312611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.421288, 38.318531, 39.047085>,  <25.576279, 38.409065, 38.887768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.421288, 38.318531, 39.047085>,  <25.162970, 38.167641, 39.312611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421288, 38.318531, 39.047085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157592, -0.916560, -0.367535,
		-0.747068, 0.132741, -0.651359,
		0.645797, 0.377223, -0.663814,
		25.615026, 38.431698, 38.847942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975382, 37.973602, 38.608349>,  <25.162970, 38.167641, 39.312611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975382, 37.973602, 38.608349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.362585, 38.071030, 38.584236>,  <25.594908, 38.129486, 38.569767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.362585, 38.071030, 38.584236>,  <24.975382, 37.973602, 38.608349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362585, 38.071030, 38.584236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207474, -0.912076, -0.353656,
		-0.141121, 0.329835, -0.933431,
		0.968008, 0.243571, -0.060281,
		25.652987, 38.144100, 38.566151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107143, 37.814041, 37.919735>,  <24.975382, 37.973602, 38.608349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107143, 37.814041, 37.919735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473139, 37.858524, 38.074875>,  <25.692736, 37.885216, 38.167957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473139, 37.858524, 38.074875>,  <25.107143, 37.814041, 37.919735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473139, 37.858524, 38.074875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307609, -0.814316, -0.492205,
		0.261091, 0.569668, -0.779301,
		0.914991, 0.111209, 0.387846,
		25.747637, 37.891888, 38.191227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529089, 38.045696, 37.355736>,  <25.107143, 37.814041, 37.919735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529089, 38.045696, 37.355736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774736, 37.879707, 37.624260>,  <25.922125, 37.780113, 37.785374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774736, 37.879707, 37.624260>,  <25.529089, 38.045696, 37.355736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774736, 37.879707, 37.624260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278372, -0.682036, -0.676266,
		0.738490, 0.602181, -0.303333,
		0.614119, -0.414976, 0.671307,
		25.958973, 37.755215, 37.825653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111347, 37.866501, 37.060516>,  <25.529089, 38.045696, 37.355736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111347, 37.866501, 37.060516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182116, 37.643658, 37.385067>,  <26.224577, 37.509953, 37.579796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182116, 37.643658, 37.385067>,  <26.111347, 37.866501, 37.060516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182116, 37.643658, 37.385067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369855, -0.726328, -0.579357,
		0.912089, 0.402593, 0.077545,
		0.176921, -0.557105, 0.811377,
		26.235191, 37.476524, 37.628479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778849, 37.549637, 36.918499>,  <26.111347, 37.866501, 37.060516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778849, 37.549637, 36.918499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583691, 37.313457, 37.175663>,  <26.466595, 37.171749, 37.329960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583691, 37.313457, 37.175663>,  <26.778849, 37.549637, 36.918499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583691, 37.313457, 37.175663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327928, -0.806548, -0.491877,
		0.808963, -0.029158, 0.587136,
		-0.487896, -0.590449, 0.642905,
		26.437323, 37.136322, 37.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242653, 37.014248, 37.293701>,  <26.778849, 37.549637, 36.918499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242653, 37.014248, 37.293701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873526, 36.881824, 37.214901>,  <26.652050, 36.802372, 37.167622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873526, 36.881824, 37.214901>,  <27.242653, 37.014248, 37.293701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873526, 36.881824, 37.214901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382663, -0.728678, -0.567976,
		0.044481, -0.599524, 0.799120,
		-0.922817, -0.331058, -0.197003,
		26.596680, 36.782509, 37.155800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860401, 37.174759, 37.512779>,  <27.242653, 37.014248, 37.293701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860401, 37.174759, 37.512779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031923, 37.380939, 37.216015>,  <28.134838, 37.504646, 37.037956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031923, 37.380939, 37.216015>,  <27.860401, 37.174759, 37.512779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031923, 37.380939, 37.216015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269972, 0.710605, 0.649735,
		0.862114, -0.478907, 0.165555,
		0.428807, 0.515450, -0.741914,
		28.160566, 37.535576, 36.993443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527689, 37.389660, 37.725246>,  <27.860401, 37.174759, 37.512779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527689, 37.389660, 37.725246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428570, 37.643806, 37.432697>,  <28.369099, 37.796295, 37.257168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428570, 37.643806, 37.432697>,  <28.527689, 37.389660, 37.725246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428570, 37.643806, 37.432697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222249, 0.772065, 0.595417,
		0.942975, -0.015005, -0.332524,
		-0.247796, 0.635367, -0.731373,
		28.354231, 37.834415, 37.213284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100225, 37.951508, 37.738590>,  <28.527689, 37.389660, 37.725246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100225, 37.951508, 37.738590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809753, 38.110184, 37.513985>,  <28.635471, 38.205391, 37.379219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809753, 38.110184, 37.513985>,  <29.100225, 37.951508, 37.738590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809753, 38.110184, 37.513985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140167, 0.885014, 0.443963,
		0.673067, 0.243690, -0.698281,
		-0.726178, 0.396692, -0.561516,
		28.591900, 38.229191, 37.345531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342381, 38.579380, 37.576275>,  <29.100225, 37.951508, 37.738590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342381, 38.579380, 37.576275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947699, 38.623985, 37.528984>,  <28.710890, 38.650749, 37.500610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947699, 38.623985, 37.528984>,  <29.342381, 38.579380, 37.576275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947699, 38.623985, 37.528984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026142, 0.826887, 0.561760,
		0.160408, 0.551201, -0.818808,
		-0.986705, 0.111516, -0.118229,
		28.651688, 38.657440, 37.493515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237471, 39.255375, 37.539062>,  <29.342381, 38.579380, 37.576275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237471, 39.255375, 37.539062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854485, 39.156891, 37.599251>,  <28.624693, 39.097801, 37.635365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854485, 39.156891, 37.599251>,  <29.237471, 39.255375, 37.539062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854485, 39.156891, 37.599251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179053, 0.915886, 0.359294,
		-0.226277, 0.317069, -0.921013,
		-0.957465, -0.246210, 0.150472,
		28.567245, 39.083027, 37.644394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843859, 39.849579, 37.411819>,  <29.237471, 39.255375, 37.539062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843859, 39.849579, 37.411819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633722, 39.608955, 37.652534>,  <28.507641, 39.464581, 37.796963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633722, 39.608955, 37.652534>,  <28.843859, 39.849579, 37.411819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633722, 39.608955, 37.652534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160143, 0.764499, 0.624416,
		-0.835687, 0.231659, -0.497958,
		-0.525340, -0.601560, 0.601784,
		28.476120, 39.428486, 37.833069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123081, 40.077179, 37.549866>,  <28.843859, 39.849579, 37.411819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123081, 40.077179, 37.549866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251471, 39.852211, 37.854671>,  <28.328505, 39.717232, 38.037556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.251471, 39.852211, 37.854671>,  <28.123081, 40.077179, 37.549866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251471, 39.852211, 37.854671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260399, 0.721170, 0.641955,
		-0.910588, -0.404477, 0.085023,
		0.320972, -0.562416, 0.762014,
		28.347763, 39.683487, 38.083275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803324, 40.412594, 38.002823>,  <28.123081, 40.077179, 37.549866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803324, 40.412594, 38.002823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035833, 40.173134, 38.223274>,  <28.175339, 40.029457, 38.355545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035833, 40.173134, 38.223274>,  <27.803324, 40.412594, 38.002823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035833, 40.173134, 38.223274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080919, 0.716473, 0.692906,
		-0.809675, -0.358171, 0.464909,
		0.581273, -0.598649, 0.551127,
		28.210215, 39.993538, 38.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606884, 40.543190, 38.681610>,  <27.803324, 40.412594, 38.002823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606884, 40.543190, 38.681610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968266, 40.379932, 38.734058>,  <28.185095, 40.281979, 38.765530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968266, 40.379932, 38.734058>,  <27.606884, 40.543190, 38.681610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968266, 40.379932, 38.734058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139197, 0.568594, 0.810756,
		-0.405459, -0.714228, 0.570510,
		0.903453, -0.408141, 0.131123,
		28.239302, 40.257488, 38.773396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664375, 40.211159, 39.335480>,  <27.606884, 40.543190, 38.681610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664375, 40.211159, 39.335480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.040218, 40.313862, 39.244957>,  <28.265724, 40.375484, 39.190643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.040218, 40.313862, 39.244957>,  <27.664375, 40.211159, 39.335480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040218, 40.313862, 39.244957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016666, 0.626116, 0.779552,
		0.341847, -0.736245, 0.584024,
		0.939608, 0.256754, -0.226306,
		28.322102, 40.390888, 39.177067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945974, 40.339256, 39.842850>,  <27.664375, 40.211159, 39.335480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945974, 40.339256, 39.842850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254347, 40.498165, 39.643715>,  <28.439371, 40.593510, 39.524235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254347, 40.498165, 39.643715>,  <27.945974, 40.339256, 39.842850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254347, 40.498165, 39.643715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101507, 0.695004, 0.711805,
		0.628776, -0.599288, 0.495475,
		0.770933, 0.397271, -0.497834,
		28.485626, 40.617348, 39.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568514, 40.276779, 40.241917>,  <27.945974, 40.339256, 39.842850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568514, 40.276779, 40.241917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656958, 40.589043, 40.008102>,  <28.710024, 40.776402, 39.867813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656958, 40.589043, 40.008102>,  <28.568514, 40.276779, 40.241917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656958, 40.589043, 40.008102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078276, 0.583230, 0.808526,
		0.972103, -0.224526, 0.067850,
		0.221108, 0.780660, -0.584535,
		28.723289, 40.823242, 39.832741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112030, 40.651524, 40.538467>,  <28.568514, 40.276779, 40.241917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112030, 40.651524, 40.538467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941868, 40.910423, 40.285454>,  <28.839769, 41.065765, 40.133648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941868, 40.910423, 40.285454>,  <29.112030, 40.651524, 40.538467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941868, 40.910423, 40.285454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010061, 0.702266, 0.711844,
		0.904946, 0.296459, -0.305261,
		-0.425407, 0.647252, -0.632530,
		28.814245, 41.104599, 40.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380169, 41.254578, 40.698132>,  <29.112030, 40.651524, 40.538467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380169, 41.254578, 40.698132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064716, 41.380611, 40.486931>,  <28.875444, 41.456234, 40.360210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064716, 41.380611, 40.486931>,  <29.380169, 41.254578, 40.698132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064716, 41.380611, 40.486931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159495, 0.724496, 0.670572,
		0.593822, 0.613046, -0.521105,
		-0.788630, 0.315087, -0.527999,
		28.828127, 41.475136, 40.328529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563492, 41.963631, 40.520821>,  <29.380169, 41.254578, 40.698132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563492, 41.963631, 40.520821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165905, 41.931931, 40.490482>,  <28.927353, 41.912910, 40.472279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165905, 41.931931, 40.490482>,  <29.563492, 41.963631, 40.520821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165905, 41.931931, 40.490482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105953, 0.872671, 0.476675,
		0.028406, 0.481834, -0.875802,
		-0.993965, -0.079254, -0.075841,
		28.867716, 41.908154, 40.467731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360941, 42.627476, 40.401337>,  <29.563492, 41.963631, 40.520821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360941, 42.627476, 40.401337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015717, 42.456829, 40.509506>,  <28.808582, 42.354443, 40.574409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015717, 42.456829, 40.509506>,  <29.360941, 42.627476, 40.401337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015717, 42.456829, 40.509506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274248, 0.845383, 0.458383,
		-0.424166, 0.321448, -0.846613,
		-0.863059, -0.426613, 0.270426,
		28.756800, 42.328846, 40.590633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773670, 43.000488, 40.130806>,  <29.360941, 42.627476, 40.401337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773670, 43.000488, 40.130806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624443, 42.793667, 40.438957>,  <28.534906, 42.669575, 40.623848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624443, 42.793667, 40.438957>,  <28.773670, 43.000488, 40.130806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624443, 42.793667, 40.438957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462024, 0.823579, 0.329014,
		-0.804583, -0.233188, -0.546141,
		-0.373069, -0.517050, 0.770376,
		28.512522, 42.638554, 40.670071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032093, 43.306427, 40.270802>,  <28.773670, 43.000488, 40.130806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032093, 43.306427, 40.270802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150148, 43.116581, 40.602497>,  <28.220982, 43.002674, 40.801514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150148, 43.116581, 40.602497>,  <28.032093, 43.306427, 40.270802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150148, 43.116581, 40.602497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311485, 0.772688, 0.553110,
		-0.903256, -0.421538, 0.080213,
		0.295136, -0.474614, 0.829238,
		28.238689, 42.974197, 40.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519768, 43.392548, 40.729931>,  <28.032093, 43.306427, 40.270802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519768, 43.392548, 40.729931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.820864, 43.304199, 40.977997>,  <28.001522, 43.251190, 41.126835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.820864, 43.304199, 40.977997>,  <27.519768, 43.392548, 40.729931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820864, 43.304199, 40.977997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284843, 0.740018, 0.609292,
		-0.593504, -0.635287, 0.494129,
		0.752741, -0.220868, 0.620161,
		28.046686, 43.237938, 41.164043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212883, 43.174854, 41.346771>,  <27.519768, 43.392548, 40.729931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212883, 43.174854, 41.346771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588739, 43.299816, 41.402599>,  <27.814253, 43.374794, 41.436096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588739, 43.299816, 41.402599>,  <27.212883, 43.174854, 41.346771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588739, 43.299816, 41.402599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328599, 0.710210, 0.622595,
		0.095376, -0.630878, 0.769998,
		0.939642, 0.312401, 0.139569,
		27.870632, 43.393536, 41.444469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232479, 43.350018, 41.987713>,  <27.212883, 43.174854, 41.346771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232479, 43.350018, 41.987713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572289, 43.528778, 41.875580>,  <27.776175, 43.636036, 41.808300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572289, 43.528778, 41.875580>,  <27.232479, 43.350018, 41.987713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572289, 43.528778, 41.875580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108678, 0.668239, 0.735966,
		0.516235, -0.594754, 0.616254,
		0.849524, 0.446905, -0.280331,
		27.827145, 43.662849, 41.791481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475737, 43.586494, 42.669159>,  <27.232479, 43.350018, 41.987713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475737, 43.586494, 42.669159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667410, 43.797077, 42.388237>,  <27.782413, 43.923428, 42.219685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667410, 43.797077, 42.388237>,  <27.475737, 43.586494, 42.669159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667410, 43.797077, 42.388237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023178, 0.792281, 0.609716,
		0.877408, -0.308444, 0.367447,
		0.479185, 0.526453, -0.702303,
		27.811165, 43.955013, 42.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056131, 43.842075, 43.026932>,  <27.475737, 43.586494, 42.669159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056131, 43.842075, 43.026932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008175, 44.077541, 42.707157>,  <27.979401, 44.218822, 42.515293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008175, 44.077541, 42.707157>,  <28.056131, 43.842075, 43.026932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008175, 44.077541, 42.707157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002782, 0.805439, 0.592672,
		0.992783, 0.068832, -0.098202,
		-0.119891, 0.588668, -0.799435,
		27.972208, 44.254143, 42.467327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.401737, 35.388226, 45.620209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015991, 35.468052, 45.689682>,  <36.784542, 35.515949, 45.731365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015991, 35.468052, 45.689682>,  <37.401737, 35.388226, 45.620209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015991, 35.468052, 45.689682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178466, 0.006111, 0.983927,
		0.195301, 0.979864, -0.041509,
		-0.964369, 0.199570, 0.173679,
		36.726681, 35.527924, 45.741787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315933, 35.807194, 46.234848>,  <37.401737, 35.388226, 45.620209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315933, 35.807194, 46.234848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957760, 35.631012, 46.208946>,  <36.742855, 35.525303, 46.193405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957760, 35.631012, 46.208946>,  <37.315933, 35.807194, 46.234848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957760, 35.631012, 46.208946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034969, -0.075420, 0.996538,
		-0.443813, 0.894602, 0.052132,
		-0.895437, -0.440454, -0.064756,
		36.689129, 35.498875, 46.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936859, 36.051746, 46.794277>,  <37.315933, 35.807194, 46.234848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936859, 36.051746, 46.794277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720383, 35.731453, 46.691566>,  <36.590496, 35.539276, 46.629940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720383, 35.731453, 46.691566>,  <36.936859, 36.051746, 46.794277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720383, 35.731453, 46.691566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050076, -0.274132, 0.960387,
		-0.839406, 0.532613, 0.108261,
		-0.541192, -0.800734, -0.256779,
		36.558025, 35.491234, 46.614532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325993, 36.036106, 47.274345>,  <36.936859, 36.051746, 46.794277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325993, 36.036106, 47.274345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395157, 35.663403, 47.146641>,  <36.436657, 35.439781, 47.070019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395157, 35.663403, 47.146641>,  <36.325993, 36.036106, 47.274345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395157, 35.663403, 47.146641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144926, -0.344687, 0.927463,
		-0.974217, -0.114100, -0.194636,
		0.172912, -0.931757, -0.319263,
		36.447029, 35.383877, 47.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031792, 35.710602, 47.817097>,  <36.325993, 36.036106, 47.274345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031792, 35.710602, 47.817097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224220, 35.416874, 47.625538>,  <36.339680, 35.240639, 47.510601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224220, 35.416874, 47.625538>,  <36.031792, 35.710602, 47.817097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224220, 35.416874, 47.625538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134445, -0.478008, 0.868005,
		-0.866310, -0.481960, -0.131231,
		0.481073, -0.734318, -0.478900,
		36.368542, 35.196579, 47.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677578, 35.053074, 47.956646>,  <36.031792, 35.710602, 47.817097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677578, 35.053074, 47.956646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048534, 34.958130, 47.840988>,  <36.271107, 34.901165, 47.771591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048534, 34.958130, 47.840988>,  <35.677578, 35.053074, 47.956646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048534, 34.958130, 47.840988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144138, -0.486540, 0.861686,
		-0.345210, -0.840797, -0.417000,
		0.927391, -0.237358, -0.289149,
		36.326752, 34.886921, 47.754242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805664, 34.364731, 48.161659>,  <35.677578, 35.053074, 47.956646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805664, 34.364731, 48.161659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174412, 34.514286, 48.120934>,  <36.395660, 34.604019, 48.096497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174412, 34.514286, 48.120934>,  <35.805664, 34.364731, 48.161659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174412, 34.514286, 48.120934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225583, -0.304170, 0.925523,
		0.315073, -0.876178, -0.364748,
		0.921868, 0.373888, -0.101815,
		36.450974, 34.626453, 48.090389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203560, 33.853649, 48.466228>,  <35.805664, 34.364731, 48.161659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203560, 33.853649, 48.466228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416828, 34.191570, 48.448185>,  <36.544788, 34.394325, 48.437359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416828, 34.191570, 48.448185>,  <36.203560, 33.853649, 48.466228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416828, 34.191570, 48.448185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342563, -0.166828, 0.924564,
		0.773551, -0.508402, -0.378347,
		0.533169, 0.844805, -0.045110,
		36.576778, 34.445011, 48.434650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918781, 33.611702, 48.587471>,  <36.203560, 33.853649, 48.466228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918781, 33.611702, 48.587471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869427, 34.003609, 48.650497>,  <36.839813, 34.238754, 48.688313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869427, 34.003609, 48.650497>,  <36.918781, 33.611702, 48.587471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869427, 34.003609, 48.650497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337008, -0.107975, 0.935290,
		0.933381, 0.168506, -0.316867,
		-0.123389, 0.979769, 0.157570,
		36.832409, 34.297539, 48.697769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621609, 33.920895, 48.758846>,  <36.918781, 33.611702, 48.587471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621609, 33.920895, 48.758846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305588, 34.119789, 48.902275>,  <37.115974, 34.239124, 48.988335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305588, 34.119789, 48.902275>,  <37.621609, 33.920895, 48.758846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305588, 34.119789, 48.902275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349352, -0.115467, 0.929850,
		0.503755, 0.859900, -0.082484,
		-0.790053, 0.497232, 0.358574,
		37.068573, 34.268959, 49.009846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910828, 34.257008, 49.306591>,  <37.621609, 33.920895, 48.758846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910828, 34.257008, 49.306591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518665, 34.294998, 49.375633>,  <37.283367, 34.317795, 49.417057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518665, 34.294998, 49.375633>,  <37.910828, 34.257008, 49.306591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518665, 34.294998, 49.375633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149842, -0.209312, 0.966300,
		0.127906, 0.973225, 0.190978,
		-0.980402, 0.094979, 0.172602,
		37.224545, 34.323490, 49.427414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906380, 34.743271, 49.916306>,  <37.910828, 34.257008, 49.306591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906380, 34.743271, 49.916306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581646, 34.511467, 49.887737>,  <37.386806, 34.372383, 49.870598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581646, 34.511467, 49.887737>,  <37.906380, 34.743271, 49.916306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581646, 34.511467, 49.887737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125698, -0.292906, 0.947843,
		-0.570203, 0.760510, 0.310633,
		-0.811830, -0.579509, -0.071422,
		37.338097, 34.337616, 49.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627274, 34.782589, 50.633675>,  <37.906380, 34.743271, 49.916306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627274, 34.782589, 50.633675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456734, 34.459160, 50.471474>,  <37.354408, 34.265102, 50.374153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456734, 34.459160, 50.471474>,  <37.627274, 34.782589, 50.633675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456734, 34.459160, 50.471474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073547, -0.477794, 0.875388,
		-0.901562, 0.343401, 0.263177,
		-0.426353, -0.808572, -0.405505,
		37.328827, 34.216587, 50.349823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096767, 34.657097, 51.015656>,  <37.627274, 34.782589, 50.633675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096767, 34.657097, 51.015656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253010, 34.330246, 50.846081>,  <37.346756, 34.134136, 50.744335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253010, 34.330246, 50.846081>,  <37.096767, 34.657097, 51.015656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253010, 34.330246, 50.846081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098238, -0.420896, 0.901774,
		-0.915300, -0.393888, -0.084133,
		0.390610, -0.817128, -0.423941,
		37.370193, 34.085106, 50.718899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582470, 35.206520, 51.327534>,  <37.096767, 34.657097, 51.015656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582470, 35.206520, 51.327534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369892, 35.479538, 51.528214>,  <37.242344, 35.643349, 51.648621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369892, 35.479538, 51.528214>,  <37.582470, 35.206520, 51.327534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369892, 35.479538, 51.528214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133423, 0.652317, -0.746110,
		-0.836520, -0.329577, -0.437737,
		-0.531444, 0.682540, 0.501703,
		37.210461, 35.684299, 51.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019421, 35.481327, 50.820007>,  <37.582470, 35.206520, 51.327534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019421, 35.481327, 50.820007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093506, 35.748692, 51.108150>,  <37.137959, 35.909111, 51.281036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093506, 35.748692, 51.108150>,  <37.019421, 35.481327, 50.820007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093506, 35.748692, 51.108150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092904, 0.717848, -0.689973,
		-0.978296, 0.194718, 0.070858,
		0.185216, 0.668415, 0.720359,
		37.149071, 35.949215, 51.324257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580196, 36.068398, 50.688988>,  <37.019421, 35.481327, 50.820007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580196, 36.068398, 50.688988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882381, 36.205303, 50.912460>,  <37.063694, 36.287445, 51.046543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882381, 36.205303, 50.912460>,  <36.580196, 36.068398, 50.688988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882381, 36.205303, 50.912460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246380, 0.641716, -0.726290,
		-0.607097, 0.686336, 0.400469,
		0.755467, 0.342262, 0.558684,
		37.109020, 36.307983, 51.080067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489300, 36.710060, 50.668858>,  <36.580196, 36.068398, 50.688988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489300, 36.710060, 50.668858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875648, 36.671375, 50.764977>,  <37.107456, 36.648167, 50.822647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875648, 36.671375, 50.764977>,  <36.489300, 36.710060, 50.668858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875648, 36.671375, 50.764977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242746, 0.661660, -0.709423,
		-0.090387, 0.743541, 0.662553,
		0.965870, -0.096710, 0.240297,
		37.165409, 36.642361, 50.837067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785381, 37.370880, 50.603893>,  <36.489300, 36.710060, 50.668858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785381, 37.370880, 50.603893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122753, 37.157364, 50.628235>,  <37.325176, 37.029255, 50.642841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.122753, 37.157364, 50.628235>,  <36.785381, 37.370880, 50.603893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122753, 37.157364, 50.628235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350806, 0.461397, -0.814891,
		0.406903, 0.708648, 0.576411,
		0.843425, -0.533790, 0.060854,
		37.375782, 36.997227, 50.646492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384235, 37.794662, 50.578571>,  <36.785381, 37.370880, 50.603893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384235, 37.794662, 50.578571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519337, 37.443409, 50.443043>,  <37.600399, 37.232655, 50.361725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519337, 37.443409, 50.443043>,  <37.384235, 37.794662, 50.578571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519337, 37.443409, 50.443043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164806, 0.409588, -0.897260,
		0.926694, 0.247213, 0.283062,
		0.337753, -0.878136, -0.338821,
		37.620663, 37.179970, 50.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016884, 38.020222, 50.270855>,  <37.384235, 37.794662, 50.578571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016884, 38.020222, 50.270855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930080, 37.660984, 50.117840>,  <37.877998, 37.445442, 50.026031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930080, 37.660984, 50.117840>,  <38.016884, 38.020222, 50.270855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930080, 37.660984, 50.117840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203577, 0.341627, -0.917522,
		0.954706, -0.276987, 0.108695,
		-0.217008, -0.898092, -0.382542,
		37.864979, 37.391556, 50.003078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475811, 37.908371, 49.641937>,  <38.016884, 38.020222, 50.270855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475811, 37.908371, 49.641937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214207, 37.608120, 49.604332>,  <38.057243, 37.427971, 49.581768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214207, 37.608120, 49.604332>,  <38.475811, 37.908371, 49.641937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214207, 37.608120, 49.604332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101947, 0.035688, -0.994149,
		0.749587, -0.659766, 0.053184,
		-0.654008, -0.750623, -0.094012,
		38.018005, 37.382935, 49.576130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731716, 37.302921, 49.121002>,  <38.475811, 37.908371, 49.641937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731716, 37.302921, 49.121002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332069, 37.286102, 49.121227>,  <38.092281, 37.276009, 49.121365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332069, 37.286102, 49.121227>,  <38.731716, 37.302921, 49.121002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332069, 37.286102, 49.121227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000894, -0.034666, -0.999399,
		0.042046, -0.998514, 0.034673,
		-0.999115, -0.042052, 0.000565,
		38.032333, 37.273487, 49.121395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579189, 36.837578, 48.627731>,  <38.731716, 37.302921, 49.121002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579189, 36.837578, 48.627731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241261, 37.048443, 48.664349>,  <38.038506, 37.174961, 48.686317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241261, 37.048443, 48.664349>,  <38.579189, 36.837578, 48.627731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241261, 37.048443, 48.664349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137723, -0.048930, -0.989261,
		-0.517022, -0.848355, 0.113939,
		-0.844820, 0.527162, 0.091540,
		37.987816, 37.206593, 48.691811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137230, 36.464748, 48.350060>,  <38.579189, 36.837578, 48.627731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137230, 36.464748, 48.350060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.950855, 36.818630, 48.344322>,  <37.839031, 37.030960, 48.340881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.950855, 36.818630, 48.344322>,  <38.137230, 36.464748, 48.350060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950855, 36.818630, 48.344322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177782, -0.109484, -0.977960,
		-0.866773, -0.453119, 0.208297,
		-0.465938, 0.884701, -0.014342,
		37.811073, 37.084042, 48.340019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553715, 36.300488, 47.920723>,  <38.137230, 36.464748, 48.350060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553715, 36.300488, 47.920723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559071, 36.700443, 47.918339>,  <37.562286, 36.940418, 47.916908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559071, 36.700443, 47.918339>,  <37.553715, 36.300488, 47.920723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559071, 36.700443, 47.918339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144315, -0.003964, -0.989524,
		-0.989441, 0.014113, 0.144247,
		0.013394, 0.999892, -0.005959,
		37.563087, 37.000412, 47.916550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929516, 36.598850, 47.474483>,  <37.553715, 36.300488, 47.920723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929516, 36.598850, 47.474483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220367, 36.872570, 47.496490>,  <37.394878, 37.036800, 47.509693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220367, 36.872570, 47.496490>,  <36.929516, 36.598850, 47.474483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220367, 36.872570, 47.496490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008982, 0.089619, -0.995936,
		-0.686446, 0.723676, 0.071311,
		0.727125, 0.684297, 0.055018,
		37.438503, 37.077858, 47.512997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662708, 37.200928, 47.049919>,  <36.929516, 36.598850, 47.474483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662708, 37.200928, 47.049919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060986, 37.225548, 47.077625>,  <37.299953, 37.240318, 47.094250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060986, 37.225548, 47.077625>,  <36.662708, 37.200928, 47.049919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060986, 37.225548, 47.077625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067265, 0.033984, -0.997156,
		-0.063729, 0.997525, 0.029698,
		0.995698, 0.061550, 0.069264,
		37.359695, 37.244011, 47.098404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344536, 37.867882, 47.284180>,  <36.662708, 37.200928, 47.049919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344536, 37.867882, 47.284180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949768, 37.930134, 47.267361>,  <35.712906, 37.967484, 47.257267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949768, 37.930134, 47.267361>,  <36.344536, 37.867882, 47.284180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949768, 37.930134, 47.267361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102671, -0.405686, 0.908228,
		0.124285, 0.900666, 0.416358,
		-0.986921, 0.155627, -0.042051,
		35.653690, 37.976822, 47.254745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056149, 38.111473, 47.965565>,  <36.344536, 37.867882, 47.284180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056149, 38.111473, 47.965565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733589, 37.947586, 47.794983>,  <35.540054, 37.849255, 47.692635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733589, 37.947586, 47.794983>,  <36.056149, 38.111473, 47.965565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733589, 37.947586, 47.794983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199680, -0.490122, 0.848474,
		-0.556646, 0.769359, 0.313420,
		-0.806395, -0.409716, -0.426450,
		35.491673, 37.824673, 47.667049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541649, 38.211700, 48.464352>,  <36.056149, 38.111473, 47.965565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541649, 38.211700, 48.464352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366386, 37.935364, 48.234306>,  <35.261230, 37.769562, 48.096279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366386, 37.935364, 48.234306>,  <35.541649, 38.211700, 48.464352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366386, 37.935364, 48.234306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321042, -0.477336, 0.817975,
		-0.839615, 0.543035, -0.012643,
		-0.438154, -0.690843, -0.575115,
		35.234940, 37.728111, 48.061771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759472, 38.360336, 48.624649>,  <35.541649, 38.211700, 48.464352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759472, 38.360336, 48.624649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828335, 37.992138, 48.484333>,  <34.869652, 37.771221, 48.400143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828335, 37.992138, 48.484333>,  <34.759472, 38.360336, 48.624649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828335, 37.992138, 48.484333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384722, -0.390653, 0.836289,
		-0.906835, -0.009019, -0.421389,
		0.172159, -0.920494, -0.350788,
		34.879982, 37.715988, 48.379097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164928, 37.965549, 48.730141>,  <34.759472, 38.360336, 48.624649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164928, 37.965549, 48.730141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472916, 37.711601, 48.704544>,  <34.657707, 37.559235, 48.689186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472916, 37.711601, 48.704544>,  <34.164928, 37.965549, 48.730141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472916, 37.711601, 48.704544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272860, -0.418249, 0.866380,
		-0.576800, -0.649624, -0.495268,
		0.769967, -0.634867, -0.063990,
		34.703907, 37.521141, 48.685349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889072, 37.358673, 48.992638>,  <34.164928, 37.965549, 48.730141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889072, 37.358673, 48.992638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281719, 37.285721, 49.015156>,  <34.517307, 37.241951, 49.028667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281719, 37.285721, 49.015156>,  <33.889072, 37.358673, 48.992638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281719, 37.285721, 49.015156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130916, -0.428698, 0.893912,
		-0.138897, -0.884848, -0.444692,
		0.981616, -0.182379, 0.056296,
		34.576202, 37.231007, 49.032043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949684, 36.645397, 49.145576>,  <33.889072, 37.358673, 48.992638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949684, 36.645397, 49.145576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282463, 36.836479, 49.258480>,  <34.482128, 36.951130, 49.326221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.282463, 36.836479, 49.258480>,  <33.949684, 36.645397, 49.145576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282463, 36.836479, 49.258480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037572, -0.459030, 0.887626,
		0.553588, -0.749059, -0.363938,
		0.831943, 0.477705, 0.282257,
		34.532047, 36.979790, 49.343159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756416, 35.929802, 48.851620>,  <33.949684, 36.645397, 49.145576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756416, 35.929802, 48.851620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522598, 35.613491, 48.778976>,  <33.382309, 35.423706, 48.735390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522598, 35.613491, 48.778976>,  <33.756416, 35.929802, 48.851620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522598, 35.613491, 48.778976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208537, 0.362737, -0.908259,
		0.784104, -0.493047, -0.376942,
		-0.584545, -0.790776, -0.181605,
		33.347237, 35.376259, 48.724495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031109, 35.635849, 48.189411>,  <33.756416, 35.929802, 48.851620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031109, 35.635849, 48.189411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657654, 35.508816, 48.255699>,  <33.433582, 35.432598, 48.295471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657654, 35.508816, 48.255699>,  <34.031109, 35.635849, 48.189411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657654, 35.508816, 48.255699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248045, 0.239386, -0.938706,
		0.258454, -0.917513, -0.302276,
		-0.933635, -0.317591, 0.165714,
		33.377563, 35.413544, 48.305416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966183, 35.285122, 47.624096>,  <34.031109, 35.635849, 48.189411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966183, 35.285122, 47.624096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608593, 35.376598, 47.778248>,  <33.394039, 35.431484, 47.870739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608593, 35.376598, 47.778248>,  <33.966183, 35.285122, 47.624096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608593, 35.376598, 47.778248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306873, 0.314285, -0.898362,
		-0.326565, -0.921372, -0.210783,
		-0.893971, 0.228690, 0.385379,
		33.340401, 35.445206, 47.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509857, 34.863483, 47.239338>,  <33.966183, 35.285122, 47.624096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509857, 34.863483, 47.239338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285198, 35.150726, 47.403713>,  <33.150402, 35.323071, 47.502338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285198, 35.150726, 47.403713>,  <33.509857, 34.863483, 47.239338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285198, 35.150726, 47.403713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272453, 0.308448, -0.911389,
		-0.781228, -0.623844, 0.022410,
		-0.561652, 0.718108, 0.410936,
		33.116703, 35.366158, 47.526993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768810, 34.781525, 46.998894>,  <33.509857, 34.863483, 47.239338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768810, 34.781525, 46.998894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822765, 35.160313, 47.115547>,  <32.855137, 35.387585, 47.185539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822765, 35.160313, 47.115547>,  <32.768810, 34.781525, 46.998894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822765, 35.160313, 47.115547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216095, 0.315351, -0.924044,
		-0.967010, 0.061624, 0.247173,
		0.134889, 0.946972, 0.291631,
		32.863232, 35.444405, 47.203037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322357, 35.178299, 46.613659>,  <32.768810, 34.781525, 46.998894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322357, 35.178299, 46.613659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536514, 35.487232, 46.750397>,  <32.665009, 35.672592, 46.832439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536514, 35.487232, 46.750397>,  <32.322357, 35.178299, 46.613659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536514, 35.487232, 46.750397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052245, 0.434247, -0.899277,
		-0.842987, 0.463605, 0.272842,
		0.535391, 0.772334, 0.341844,
		32.697132, 35.718933, 46.852951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930717, 35.800922, 46.392242>,  <32.322357, 35.178299, 46.613659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930717, 35.800922, 46.392242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319202, 35.887089, 46.432911>,  <32.552296, 35.938789, 46.457314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.319202, 35.887089, 46.432911>,  <31.930717, 35.800922, 46.392242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319202, 35.887089, 46.432911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040465, 0.271431, -0.961607,
		-0.234746, 0.938041, 0.254901,
		0.971214, 0.215419, 0.101675,
		32.610565, 35.951714, 46.463413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.525230, 32.048454, 49.494980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.406364, 49.440632>,  <35.797447, 32.621113, 49.408024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.406364, 49.440632>,  <35.525230, 32.048454, 49.494980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695366, 32.406364, 49.440632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283666, -0.274367, -0.918834,
		-0.859432, 0.352272, -0.370516,
		0.425336, 0.894778, -0.135872,
		35.822968, 32.674797, 49.399872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192780, 32.495708, 48.963791>,  <35.525230, 32.048454, 49.494980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192780, 32.495708, 48.963791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585354, 32.565594, 48.995419>,  <35.820900, 32.607525, 49.014393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585354, 32.565594, 48.995419>,  <35.192780, 32.495708, 48.963791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585354, 32.565594, 48.995419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109715, -0.173402, -0.978721,
		-0.157283, 0.969230, -0.189353,
		0.981440, 0.174711, 0.079065,
		35.879787, 32.618008, 49.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322540, 33.112705, 48.523350>,  <35.192780, 32.495708, 48.963791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322540, 33.112705, 48.523350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660042, 32.906075, 48.581627>,  <35.862545, 32.782097, 48.616592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660042, 32.906075, 48.581627>,  <35.322540, 33.112705, 48.523350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660042, 32.906075, 48.581627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160146, -0.016773, -0.986951,
		0.512278, 0.856077, 0.068575,
		0.843756, -0.516576, 0.145690,
		35.913170, 32.751102, 48.625332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719578, 33.389488, 48.037022>,  <35.322540, 33.112705, 48.523350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719578, 33.389488, 48.037022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888008, 33.044651, 48.149799>,  <35.989067, 32.837749, 48.217464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888008, 33.044651, 48.149799>,  <35.719578, 33.389488, 48.037022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888008, 33.044651, 48.149799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259439, -0.183383, -0.948189,
		0.869130, 0.472406, 0.146442,
		0.421075, -0.862093, 0.281944,
		36.014332, 32.786022, 48.234383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174263, 33.386585, 47.570320>,  <35.719578, 33.389488, 48.037022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174263, 33.386585, 47.570320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191181, 33.010838, 47.706432>,  <36.201332, 32.785389, 47.788101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191181, 33.010838, 47.706432>,  <36.174263, 33.386585, 47.570320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191181, 33.010838, 47.706432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232137, -0.322025, -0.917830,
		0.971763, 0.117809, 0.204443,
		0.042293, -0.939373, 0.340280,
		36.203869, 32.729027, 47.808517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832676, 33.060658, 47.411366>,  <36.174263, 33.386585, 47.570320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832676, 33.060658, 47.411366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561741, 32.768902, 47.449745>,  <36.399181, 32.593849, 47.472775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.561741, 32.768902, 47.449745>,  <36.832676, 33.060658, 47.411366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561741, 32.768902, 47.449745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146068, -0.261165, -0.954179,
		0.721026, -0.632285, 0.283437,
		-0.677337, -0.729389, 0.095950,
		36.358540, 32.550087, 47.478531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084679, 32.483505, 47.057308>,  <36.832676, 33.060658, 47.411366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084679, 32.483505, 47.057308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691799, 32.409477, 47.070217>,  <36.456074, 32.365059, 47.077961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.691799, 32.409477, 47.070217>,  <37.084679, 32.483505, 47.057308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691799, 32.409477, 47.070217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000823, -0.176026, -0.984385,
		0.187862, -0.966832, 0.173044,
		-0.982195, -0.185071, 0.032273,
		36.397141, 32.353954, 47.079899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956203, 31.802588, 46.701443>,  <37.084679, 32.483505, 47.057308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956203, 31.802588, 46.701443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590843, 31.964907, 46.714317>,  <36.371628, 32.062298, 46.722042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590843, 31.964907, 46.714317>,  <36.956203, 31.802588, 46.701443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590843, 31.964907, 46.714317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139435, -0.237612, -0.961300,
		-0.382446, -0.882536, 0.273617,
		-0.913396, 0.405797, 0.032182,
		36.316826, 32.086647, 46.723972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574326, 31.366051, 46.408451>,  <36.956203, 31.802588, 46.701443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574326, 31.366051, 46.408451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346657, 31.693535, 46.378094>,  <36.210056, 31.890024, 46.359879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346657, 31.693535, 46.378094>,  <36.574326, 31.366051, 46.408451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346657, 31.693535, 46.378094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180333, -0.214361, -0.959963,
		-0.802199, -0.532697, 0.269648,
		-0.569172, 0.818708, -0.075897,
		36.175907, 31.939148, 46.355324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977543, 31.161058, 45.978245>,  <36.574326, 31.366051, 46.408451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977543, 31.161058, 45.978245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948925, 31.558956, 45.948944>,  <35.931755, 31.797695, 45.931362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.948925, 31.558956, 45.948944>,  <35.977543, 31.161058, 45.978245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948925, 31.558956, 45.948944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300276, -0.091513, -0.949452,
		-0.951165, -0.045936, 0.305246,
		-0.071548, 0.994744, -0.073251,
		35.927460, 31.857380, 45.926968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349915, 31.304180, 45.564865>,  <35.977543, 31.161058, 45.978245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349915, 31.304180, 45.564865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.564678, 31.641552, 45.557251>,  <35.693535, 31.843975, 45.552685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.564678, 31.641552, 45.557251>,  <35.349915, 31.304180, 45.564865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564678, 31.641552, 45.557251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215627, 0.115384, -0.969635,
		-0.815621, 0.524706, 0.243816,
		0.536906, 0.843428, -0.019031,
		35.725750, 31.894581, 45.551540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943832, 31.844589, 45.254326>,  <35.349915, 31.304180, 45.564865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943832, 31.844589, 45.254326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324345, 31.946739, 45.185211>,  <35.552650, 32.008030, 45.143742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324345, 31.946739, 45.185211>,  <34.943832, 31.844589, 45.254326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324345, 31.946739, 45.185211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224202, 0.188189, -0.956200,
		-0.211674, 0.948350, 0.236276,
		0.951277, 0.255376, -0.172787,
		35.609726, 32.023354, 45.133373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351070, 32.219059, 45.550358>,  <34.943832, 31.844589, 45.254326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351070, 32.219059, 45.550358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.139591, 32.558498, 45.557980>,  <34.012703, 32.762161, 45.562553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.139591, 32.558498, 45.557980>,  <34.351070, 32.219059, 45.550358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139591, 32.558498, 45.557980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077974, 0.026199, 0.996611,
		0.845223, 0.528389, -0.080020,
		-0.528695, 0.848598, 0.019057,
		33.980984, 32.813076, 45.563698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636589, 32.725342, 46.023621>,  <34.351070, 32.219059, 45.550358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636589, 32.725342, 46.023621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251175, 32.829323, 45.998257>,  <34.019924, 32.891712, 45.983040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251175, 32.829323, 45.998257>,  <34.636589, 32.725342, 46.023621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251175, 32.829323, 45.998257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068902, -0.012072, 0.997550,
		0.258550, 0.965546, 0.029543,
		-0.963537, 0.259952, -0.063406,
		33.962112, 32.907307, 45.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500881, 33.163998, 46.630939>,  <34.636589, 32.725342, 46.023621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500881, 33.163998, 46.630939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.147984, 33.024994, 46.503887>,  <33.936245, 32.941593, 46.427654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.147984, 33.024994, 46.503887>,  <34.500881, 33.163998, 46.630939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147984, 33.024994, 46.503887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317098, -0.060074, 0.946488,
		-0.347993, 0.935751, -0.057194,
		-0.882241, -0.347507, -0.317630,
		33.883312, 32.920742, 46.408600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894772, 33.531815, 46.976368>,  <34.500881, 33.163998, 46.630939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894772, 33.531815, 46.976368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.736084, 33.185493, 46.854378>,  <33.640873, 32.977703, 46.781185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.736084, 33.185493, 46.854378>,  <33.894772, 33.531815, 46.976368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736084, 33.185493, 46.854378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411815, -0.129060, 0.902082,
		-0.820381, 0.483464, -0.305348,
		-0.396716, -0.865798, -0.304976,
		33.617069, 32.925755, 46.762886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184494, 33.477467, 47.309761>,  <33.894772, 33.531815, 46.976368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184494, 33.477467, 47.309761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314358, 33.113655, 47.205948>,  <33.392277, 32.895370, 47.143658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314358, 33.113655, 47.205948>,  <33.184494, 33.477467, 47.309761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314358, 33.113655, 47.205948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151424, -0.320842, 0.934950,
		-0.933630, -0.264243, -0.241890,
		0.324663, -0.909525, -0.259535,
		33.411758, 32.840797, 47.128086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754841, 33.037888, 47.651100>,  <33.184494, 33.477467, 47.309761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754841, 33.037888, 47.651100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076561, 32.819592, 47.557068>,  <33.269592, 32.688614, 47.500648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076561, 32.819592, 47.557068>,  <32.754841, 33.037888, 47.651100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076561, 32.819592, 47.557068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017824, -0.417584, 0.908463,
		-0.593953, -0.726490, -0.345591,
		0.804303, -0.545744, -0.235076,
		33.317852, 32.655869, 47.486546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511414, 32.396454, 47.827053>,  <32.754841, 33.037888, 47.651100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511414, 32.396454, 47.827053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910896, 32.394466, 47.806839>,  <33.150585, 32.393272, 47.794712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910896, 32.394466, 47.806839>,  <32.511414, 32.396454, 47.827053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910896, 32.394466, 47.806839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043713, -0.422184, 0.905456,
		-0.025831, -0.906497, -0.421422,
		0.998710, -0.004967, -0.050531,
		33.210510, 32.392975, 47.791679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591900, 31.762344, 48.012917>,  <32.511414, 32.396454, 47.827053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591900, 31.762344, 48.012917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953678, 31.928566, 48.051464>,  <33.170746, 32.028297, 48.074593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953678, 31.928566, 48.051464>,  <32.591900, 31.762344, 48.012917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953678, 31.928566, 48.051464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119794, -0.464235, 0.877573,
		0.409415, -0.782177, -0.469658,
		0.904450, 0.415554, 0.096364,
		33.225014, 32.053230, 48.080372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033501, 31.239016, 48.283493>,  <32.591900, 31.762344, 48.012917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033501, 31.239016, 48.283493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.260704, 31.551590, 48.386822>,  <33.397026, 31.739134, 48.448818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.260704, 31.551590, 48.386822>,  <33.033501, 31.239016, 48.283493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260704, 31.551590, 48.386822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140329, -0.401225, 0.905167,
		0.810973, -0.477889, -0.337556,
		0.568005, 0.781435, 0.258321,
		33.431107, 31.786020, 48.464317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628719, 30.934807, 48.774784>,  <33.033501, 31.239016, 48.283493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628719, 30.934807, 48.774784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.649555, 31.329924, 48.833504>,  <33.662056, 31.566994, 48.868736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.649555, 31.329924, 48.833504>,  <33.628719, 30.934807, 48.774784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649555, 31.329924, 48.833504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288418, -0.155612, 0.944775,
		0.956087, -0.006879, -0.293004,
		0.052094, 0.987794, 0.146795,
		33.665184, 31.626263, 48.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301342, 31.060966, 49.034100>,  <33.628719, 30.934807, 48.774784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301342, 31.060966, 49.034100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.073860, 31.377048, 49.125443>,  <33.937370, 31.566698, 49.180248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.073860, 31.377048, 49.125443>,  <34.301342, 31.060966, 49.034100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073860, 31.377048, 49.125443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235750, -0.109392, 0.965637,
		0.788033, 0.603000, -0.124079,
		-0.568706, 0.790205, 0.228362,
		33.903248, 31.614111, 49.193951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713715, 31.518553, 49.463993>,  <34.301342, 31.060966, 49.034100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713715, 31.518553, 49.463993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328331, 31.582569, 49.549908>,  <34.097099, 31.620979, 49.601456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328331, 31.582569, 49.549908>,  <34.713715, 31.518553, 49.463993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328331, 31.582569, 49.549908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235873, 0.126931, 0.963458,
		0.126931, 0.978915, -0.160043,
		-0.963458, 0.160043, 0.214789,
		34.039295, 31.630583, 49.614346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836468, 31.854338, 50.009136>,  <34.713715, 31.518553, 49.463993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836468, 31.854338, 50.009136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.439693, 31.809685, 50.033146>,  <34.201630, 31.782894, 50.047550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.439693, 31.809685, 50.033146>,  <34.836468, 31.854338, 50.009136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439693, 31.809685, 50.033146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046968, 0.116083, 0.992128,
		-0.117720, 0.986946, -0.109904,
		-0.991936, -0.111631, 0.060020,
		34.142113, 31.776196, 50.051151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547146, 32.366680, 50.429291>,  <34.836468, 31.854338, 50.009136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547146, 32.366680, 50.429291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262665, 32.085625, 50.438065>,  <34.091976, 31.916990, 50.443329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262665, 32.085625, 50.438065>,  <34.547146, 32.366680, 50.429291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262665, 32.085625, 50.438065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066997, -0.036681, 0.997079,
		-0.699783, 0.710599, 0.073162,
		-0.711207, -0.702641, 0.021939,
		34.049301, 31.874832, 50.444645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106415, 33.015297, 50.583309>,  <34.547146, 32.366680, 50.429291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106415, 33.015297, 50.583309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.831818, 33.245296, 50.761349>,  <33.667061, 33.383297, 50.868172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.831818, 33.245296, 50.761349>,  <34.106415, 33.015297, 50.583309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831818, 33.245296, 50.761349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197891, 0.441280, -0.875278,
		-0.699694, -0.688950, -0.189147,
		-0.686489, 0.574996, 0.445098,
		33.625870, 33.417797, 50.894878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428619, 33.072441, 50.173641>,  <34.106415, 33.015297, 50.583309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428619, 33.072441, 50.173641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472706, 33.396145, 50.404453>,  <33.499157, 33.590366, 50.542938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472706, 33.396145, 50.404453>,  <33.428619, 33.072441, 50.173641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472706, 33.396145, 50.404453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054578, 0.584615, -0.809473,
		-0.992408, 0.057724, 0.108602,
		0.110216, 0.809255, 0.577026,
		33.505772, 33.638920, 50.577560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922226, 33.479374, 49.942715>,  <33.428619, 33.072441, 50.173641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922226, 33.479374, 49.942715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180077, 33.714352, 50.138412>,  <33.334789, 33.855339, 50.255833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180077, 33.714352, 50.138412>,  <32.922226, 33.479374, 49.942715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180077, 33.714352, 50.138412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175810, 0.736723, -0.652940,
		-0.744004, 0.334890, 0.578193,
		0.644631, 0.587442, 0.489248,
		33.373466, 33.890583, 50.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608799, 34.130753, 49.949055>,  <32.922226, 33.479374, 49.942715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608799, 34.130753, 49.949055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004303, 34.181286, 49.981041>,  <33.241604, 34.211605, 50.000233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004303, 34.181286, 49.981041>,  <32.608799, 34.130753, 49.949055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004303, 34.181286, 49.981041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034618, 0.713745, -0.699549,
		-0.145452, 0.688918, 0.710096,
		0.988760, 0.126333, 0.079967,
		33.300930, 34.219185, 50.005032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677696, 34.797565, 50.096386>,  <32.608799, 34.130753, 49.949055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677696, 34.797565, 50.096386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035114, 34.674767, 49.965343>,  <33.249565, 34.601089, 49.886719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035114, 34.674767, 49.965343>,  <32.677696, 34.797565, 50.096386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035114, 34.674767, 49.965343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040652, 0.782013, -0.621935,
		0.447124, 0.542411, 0.711246,
		0.893548, -0.306996, -0.327606,
		33.303177, 34.582668, 49.867062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179535, 35.436733, 50.062378>,  <32.677696, 34.797565, 50.096386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179535, 35.436733, 50.062378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285378, 35.162556, 49.791039>,  <33.348881, 34.998051, 49.628235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285378, 35.162556, 49.791039>,  <33.179535, 35.436733, 50.062378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285378, 35.162556, 49.791039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124139, 0.721774, -0.680905,
		0.956334, 0.095960, 0.276073,
		0.264602, -0.685444, -0.678345,
		33.364758, 34.956921, 49.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501873, 35.836742, 49.578640>,  <33.179535, 35.436733, 50.062378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501873, 35.836742, 49.578640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424252, 35.503651, 49.371220>,  <33.377678, 35.303795, 49.246765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424252, 35.503651, 49.371220>,  <33.501873, 35.836742, 49.578640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424252, 35.503651, 49.371220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065929, 0.538480, -0.840056,
		0.978773, -0.128829, -0.159396,
		-0.194056, -0.832732, -0.518555,
		33.366035, 35.253830, 49.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206963, 36.176685, 49.602970>,  <33.501873, 35.836742, 49.578640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206963, 36.176685, 49.602970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.437061, 36.484989, 49.712524>,  <34.575123, 36.669971, 49.778259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.437061, 36.484989, 49.712524>,  <34.206963, 36.176685, 49.602970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437061, 36.484989, 49.712524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126532, -0.414654, 0.901139,
		0.808131, -0.483725, -0.336056,
		0.575251, 0.770760, 0.273888,
		34.609638, 36.716217, 49.794689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648643, 35.892185, 50.028091>,  <34.206963, 36.176685, 49.602970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648643, 35.892185, 50.028091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694653, 36.279140, 50.118362>,  <34.722260, 36.511314, 50.172527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694653, 36.279140, 50.118362>,  <34.648643, 35.892185, 50.028091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694653, 36.279140, 50.118362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137657, -0.240519, 0.960834,
		0.983779, -0.079453, -0.160833,
		0.115024, 0.967387, 0.225681,
		34.729160, 36.569355, 50.186066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317425, 35.961700, 50.364647>,  <34.648643, 35.892185, 50.028091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317425, 35.961700, 50.364647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088718, 36.276363, 50.457817>,  <34.951496, 36.465160, 50.513718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088718, 36.276363, 50.457817>,  <35.317425, 35.961700, 50.364647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088718, 36.276363, 50.457817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064804, -0.239719, 0.968677,
		0.817855, 0.568949, 0.086084,
		-0.571764, 0.786659, 0.232925,
		34.917191, 36.512360, 50.527695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757187, 36.351315, 50.790497>,  <35.317425, 35.961700, 50.364647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757187, 36.351315, 50.790497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378757, 36.459618, 50.861633>,  <35.151699, 36.524601, 50.904316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.378757, 36.459618, 50.861633>,  <35.757187, 36.351315, 50.790497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378757, 36.459618, 50.861633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141869, -0.147226, 0.978876,
		0.291225, 0.951321, 0.100874,
		-0.946077, 0.270762, 0.177839,
		35.094933, 36.540848, 50.914986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830906, 36.744312, 51.345745>,  <35.757187, 36.351315, 50.790497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830906, 36.744312, 51.345745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444771, 36.640533, 51.357151>,  <35.213089, 36.578266, 51.363995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444771, 36.640533, 51.357151>,  <35.830906, 36.744312, 51.345745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444771, 36.640533, 51.357151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088930, -0.224213, 0.970474,
		-0.245391, 0.939370, 0.239513,
		-0.965337, -0.259445, 0.028518,
		35.155170, 36.562698, 51.365707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724701, 36.844681, 52.001801>,  <35.830906, 36.744312, 51.345745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724701, 36.844681, 52.001801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416138, 36.613094, 51.896179>,  <35.230999, 36.474140, 51.832806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416138, 36.613094, 51.896179>,  <35.724701, 36.844681, 52.001801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416138, 36.613094, 51.896179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004043, -0.419407, 0.907789,
		-0.636329, 0.699207, 0.325874,
		-0.771407, -0.578970, -0.264055,
		35.184715, 36.439404, 51.816963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404263, 36.754307, 52.575596>,  <35.724701, 36.844681, 52.001801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404263, 36.754307, 52.575596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208263, 36.463081, 52.383839>,  <35.090664, 36.288345, 52.268784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208263, 36.463081, 52.383839>,  <35.404263, 36.754307, 52.575596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208263, 36.463081, 52.383839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069655, -0.515478, 0.854067,
		-0.868935, 0.451886, 0.201871,
		-0.490000, -0.728068, -0.479393,
		35.061264, 36.244659, 52.240021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908382, 36.562660, 53.119038>,  <35.404263, 36.754307, 52.575596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908382, 36.562660, 53.119038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.962967, 36.274914, 52.846600>,  <34.995720, 36.102268, 52.683136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.962967, 36.274914, 52.846600>,  <34.908382, 36.562660, 53.119038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962967, 36.274914, 52.846600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018723, -0.685536, 0.727798,
		-0.990468, -0.112071, -0.080082,
		0.136464, -0.719361, -0.681100,
		35.003906, 36.059105, 52.642269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456295, 36.103382, 53.274750>,  <34.908382, 36.562660, 53.119038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456295, 36.103382, 53.274750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.752064, 35.902641, 53.095238>,  <34.929523, 35.782196, 52.987530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.752064, 35.902641, 53.095238>,  <34.456295, 36.103382, 53.274750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752064, 35.902641, 53.095238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188807, -0.485276, 0.853733,
		-0.646228, -0.716000, -0.264071,
		0.739420, -0.501847, -0.448784,
		34.973888, 35.752087, 52.960602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.197117, 38.296009, 37.404728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571697, 38.156708, 37.421562>,  <36.796448, 38.073128, 37.431664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571697, 38.156708, 37.421562>,  <36.197117, 38.296009, 37.404728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571697, 38.156708, 37.421562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101552, -0.154301, 0.982791,
		-0.335771, -0.924612, -0.179862,
		0.936454, -0.348258, 0.042086,
		36.852634, 38.052231, 37.434189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251469, 37.643051, 37.703381>,  <36.197117, 38.296009, 37.404728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251469, 37.643051, 37.703381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611629, 37.801224, 37.775948>,  <36.827724, 37.896126, 37.819489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611629, 37.801224, 37.775948>,  <36.251469, 37.643051, 37.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611629, 37.801224, 37.775948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138569, -0.134621, 0.981160,
		0.412406, -0.908576, -0.066418,
		0.900400, 0.395433, 0.181419,
		36.881748, 37.919853, 37.830372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584591, 37.172787, 38.174248>,  <36.251469, 37.643051, 37.703381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584591, 37.172787, 38.174248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776184, 37.521030, 38.219158>,  <36.891140, 37.729977, 38.246105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776184, 37.521030, 38.219158>,  <36.584591, 37.172787, 38.174248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776184, 37.521030, 38.219158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025313, -0.114152, 0.993141,
		0.877458, -0.478541, -0.032639,
		0.478985, 0.870613, 0.112277,
		36.919880, 37.782215, 38.252842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166630, 36.996761, 38.737484>,  <36.584591, 37.172787, 38.174248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166630, 36.996761, 38.737484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131107, 37.394745, 38.718857>,  <37.109795, 37.633533, 38.707680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131107, 37.394745, 38.718857>,  <37.166630, 36.996761, 38.737484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131107, 37.394745, 38.718857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065345, 0.052468, 0.996482,
		0.993903, 0.085449, -0.069675,
		-0.088805, 0.994960, -0.046565,
		37.104465, 37.693233, 38.704887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339897, 37.251068, 39.385014>,  <37.166630, 36.996761, 38.737484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339897, 37.251068, 39.385014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187504, 37.591209, 39.239826>,  <37.096066, 37.795296, 39.152714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187504, 37.591209, 39.239826>,  <37.339897, 37.251068, 39.385014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187504, 37.591209, 39.239826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037797, 0.406570, 0.912838,
		0.923807, 0.334061, -0.187039,
		-0.380988, 0.850355, -0.362966,
		37.073208, 37.846317, 39.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677834, 37.750805, 39.702099>,  <37.339897, 37.251068, 39.385014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677834, 37.750805, 39.702099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344067, 37.929302, 39.572716>,  <37.143806, 38.036400, 39.495087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344067, 37.929302, 39.572716>,  <37.677834, 37.750805, 39.702099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344067, 37.929302, 39.572716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154901, 0.373343, 0.914670,
		0.528922, 0.813316, -0.242400,
		-0.834414, 0.446241, -0.323453,
		37.093742, 38.063175, 39.475681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750046, 38.473957, 39.949387>,  <37.677834, 37.750805, 39.702099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750046, 38.473957, 39.949387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360703, 38.423897, 39.872543>,  <37.127094, 38.393860, 39.826439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360703, 38.423897, 39.872543>,  <37.750046, 38.473957, 39.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360703, 38.423897, 39.872543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227761, 0.431681, 0.872798,
		-0.026300, 0.893303, -0.448685,
		-0.973362, -0.125148, -0.192107,
		37.068695, 38.386353, 39.814911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456856, 38.982655, 40.170391>,  <37.750046, 38.473957, 39.949387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456856, 38.982655, 40.170391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136681, 38.743252, 40.157127>,  <36.944576, 38.599609, 40.149170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136681, 38.743252, 40.157127>,  <37.456856, 38.982655, 40.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136681, 38.743252, 40.157127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353281, 0.426342, 0.832721,
		-0.484249, 0.678253, -0.552699,
		-0.800434, -0.598503, -0.033159,
		36.896549, 38.563702, 40.147179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882374, 39.368397, 40.402939>,  <37.456856, 38.982655, 40.170391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882374, 39.368397, 40.402939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718407, 39.003944, 40.419964>,  <36.620026, 38.785275, 40.430180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718407, 39.003944, 40.419964>,  <36.882374, 39.368397, 40.402939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718407, 39.003944, 40.419964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419834, 0.229895, 0.878002,
		-0.809759, 0.342038, -0.476761,
		-0.409915, -0.911130, 0.042560,
		36.595432, 38.730606, 40.432732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193527, 39.479897, 40.586697>,  <36.882374, 39.368397, 40.402939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193527, 39.479897, 40.586697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301903, 39.114223, 40.707264>,  <36.366928, 38.894817, 40.779606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301903, 39.114223, 40.707264>,  <36.193527, 39.479897, 40.586697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301903, 39.114223, 40.707264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465862, 0.149489, 0.872139,
		-0.842356, -0.376720, -0.385381,
		0.270942, -0.914186, 0.301422,
		36.383186, 38.839970, 40.797691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591179, 39.206707, 40.823463>,  <36.193527, 39.479897, 40.586697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591179, 39.206707, 40.823463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894176, 39.000397, 40.983555>,  <36.075974, 38.876610, 41.079609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894176, 39.000397, 40.983555>,  <35.591179, 39.206707, 40.823463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894176, 39.000397, 40.983555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398051, 0.121031, 0.909344,
		-0.517457, -0.848132, -0.113625,
		0.757492, -0.515776, 0.400228,
		36.121426, 38.845665, 41.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284721, 38.725189, 41.109035>,  <35.591179, 39.206707, 40.823463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284721, 38.725189, 41.109035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640289, 38.759201, 41.289074>,  <35.853630, 38.779610, 41.397099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640289, 38.759201, 41.289074>,  <35.284721, 38.725189, 41.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640289, 38.759201, 41.289074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457941, 0.142628, 0.877466,
		0.010413, -0.986117, 0.165723,
		0.888921, 0.085028, 0.450099,
		35.906967, 38.784710, 41.424103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234512, 37.922703, 40.939369>,  <35.284721, 38.725189, 41.109035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234512, 37.922703, 40.939369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848347, 37.818851, 40.929779>,  <34.616650, 37.756538, 40.924023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848347, 37.818851, 40.929779>,  <35.234512, 37.922703, 40.939369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848347, 37.818851, 40.929779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045088, 0.256810, -0.965410,
		0.256810, -0.930935, -0.259633,
		0.965410, 0.259633, 0.023978,
		34.558723, 37.740963, 40.922585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239082, 37.557533, 40.327518>,  <35.234512, 37.922703, 40.939369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239082, 37.557533, 40.327518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862186, 37.654148, 40.420338>,  <34.636047, 37.712116, 40.476028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862186, 37.654148, 40.420338>,  <35.239082, 37.557533, 40.327518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862186, 37.654148, 40.420338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196168, 0.163588, -0.966828,
		-0.271484, -0.956504, -0.106757,
		-0.942239, 0.241536, 0.232047,
		34.579514, 37.726608, 40.489952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773979, 37.056988, 39.967564>,  <35.239082, 37.557533, 40.327518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773979, 37.056988, 39.967564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555847, 37.380650, 40.055099>,  <34.424969, 37.574844, 40.107620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555847, 37.380650, 40.055099>,  <34.773979, 37.056988, 39.967564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555847, 37.380650, 40.055099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469071, -0.078212, -0.879690,
		-0.694686, -0.582373, 0.422201,
		-0.545329, 0.809151, 0.218842,
		34.392250, 37.623394, 40.120750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042290, 36.912430, 39.839699>,  <34.773979, 37.056988, 39.967564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042290, 36.912430, 39.839699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063919, 37.311668, 39.827900>,  <34.076897, 37.551212, 39.820820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063919, 37.311668, 39.827900>,  <34.042290, 36.912430, 39.839699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063919, 37.311668, 39.827900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599173, 0.008799, -0.800571,
		-0.798791, 0.060967, 0.598511,
		0.054074, 0.998101, -0.029501,
		34.080143, 37.611099, 39.819050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274494, 37.216316, 39.700809>,  <34.042290, 36.912430, 39.839699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274494, 37.216316, 39.700809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515884, 37.522697, 39.612144>,  <33.660717, 37.706528, 39.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515884, 37.522697, 39.612144>,  <33.274494, 37.216316, 39.700809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515884, 37.522697, 39.612144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487825, 0.134746, -0.862479,
		-0.630751, 0.628616, 0.454967,
		0.603473, 0.765954, -0.221663,
		33.696926, 37.752483, 39.545647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800766, 37.767368, 39.579098>,  <33.274494, 37.216316, 39.700809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800766, 37.767368, 39.579098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140873, 37.883759, 39.403656>,  <33.344936, 37.953594, 39.298393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140873, 37.883759, 39.403656>,  <32.800766, 37.767368, 39.579098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140873, 37.883759, 39.403656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520382, 0.339638, -0.783485,
		-0.079012, 0.894415, 0.440204,
		0.850270, 0.290979, -0.438602,
		33.395954, 37.971050, 39.272076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627747, 38.358845, 39.297905>,  <32.800766, 37.767368, 39.579098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627747, 38.358845, 39.297905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946014, 38.230633, 39.092316>,  <33.136978, 38.153706, 38.968964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946014, 38.230633, 39.092316>,  <32.627747, 38.358845, 39.297905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946014, 38.230633, 39.092316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509142, 0.105765, -0.854159,
		0.328142, 0.941316, -0.079040,
		0.795674, -0.320528, -0.513969,
		33.184715, 38.134476, 38.938126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821457, 38.877357, 38.778240>,  <32.627747, 38.358845, 39.297905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821457, 38.877357, 38.778240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959751, 38.519501, 38.665043>,  <33.042728, 38.304787, 38.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959751, 38.519501, 38.665043>,  <32.821457, 38.877357, 38.778240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959751, 38.519501, 38.665043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474716, 0.093376, -0.875172,
		0.809388, 0.436921, -0.392417,
		0.345738, -0.894640, -0.282991,
		33.063473, 38.251110, 38.580147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850529, 39.000431, 38.083336>,  <32.821457, 38.877357, 38.778240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850529, 39.000431, 38.083336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884609, 38.602016, 38.073051>,  <32.905056, 38.362968, 38.066879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884609, 38.602016, 38.073051>,  <32.850529, 39.000431, 38.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884609, 38.602016, 38.073051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527788, -0.023224, -0.849059,
		0.845093, 0.085910, -0.527672,
		0.085198, -0.996032, -0.025716,
		32.910168, 38.303207, 38.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759483, 38.910614, 37.421864>,  <32.850529, 39.000431, 38.083336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759483, 38.910614, 37.421864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751080, 38.526993, 37.534843>,  <32.746037, 38.296822, 37.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751080, 38.526993, 37.534843>,  <32.759483, 38.910614, 37.421864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751080, 38.526993, 37.534843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594262, -0.215215, -0.774942,
		0.803997, -0.184130, -0.565406,
		-0.021006, -0.959051, 0.282454,
		32.744778, 38.239277, 37.619579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846611, 38.487320, 36.805763>,  <32.759483, 38.910614, 37.421864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846611, 38.487320, 36.805763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690800, 38.233200, 37.072495>,  <32.597313, 38.080727, 37.232533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690800, 38.233200, 37.072495>,  <32.846611, 38.487320, 36.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690800, 38.233200, 37.072495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688344, -0.280225, -0.669071,
		0.611923, -0.719631, -0.328149,
		-0.389529, -0.635300, 0.666830,
		32.573940, 38.042610, 37.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748055, 37.744026, 36.535648>,  <32.846611, 38.487320, 36.805763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748055, 37.744026, 36.535648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470928, 37.809669, 36.816525>,  <32.304653, 37.849056, 36.985050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470928, 37.809669, 36.816525>,  <32.748055, 37.744026, 36.535648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470928, 37.809669, 36.816525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720020, -0.211045, -0.661083,
		0.039706, -0.963602, 0.264376,
		-0.692816, 0.164108, 0.702193,
		32.263084, 37.858902, 37.027184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267437, 37.308060, 36.333927>,  <32.748055, 37.744026, 36.535648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267437, 37.308060, 36.333927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088589, 37.556507, 36.591389>,  <31.981279, 37.705578, 36.745865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088589, 37.556507, 36.591389>,  <32.267437, 37.308060, 36.333927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088589, 37.556507, 36.591389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873154, -0.146905, -0.464781,
		-0.194130, -0.769822, 0.608019,
		-0.447119, 0.621122, 0.643654,
		31.954453, 37.742844, 36.784485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696550, 36.902412, 36.276398>,  <32.267437, 37.308060, 36.333927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696550, 36.902412, 36.276398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601507, 37.249535, 36.450958>,  <31.544481, 37.457809, 36.555695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601507, 37.249535, 36.450958>,  <31.696550, 36.902412, 36.276398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601507, 37.249535, 36.450958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881458, -0.003864, -0.472246,
		-0.408133, -0.496882, 0.765856,
		-0.237610, 0.867810, 0.436403,
		31.530224, 37.509876, 36.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006721, 36.927792, 36.711048>,  <31.696550, 36.902412, 36.276398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006721, 36.927792, 36.711048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102858, 37.290733, 36.573097>,  <31.160540, 37.508499, 36.490326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102858, 37.290733, 36.573097>,  <31.006721, 36.927792, 36.711048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102858, 37.290733, 36.573097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908271, 0.084866, -0.409686,
		-0.342463, 0.411705, 0.844523,
		0.240341, 0.907357, -0.344876,
		31.174959, 37.562939, 36.469635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371571, 37.110531, 36.372437>,  <31.006721, 36.927792, 36.711048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371571, 37.110531, 36.372437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613562, 37.185482, 36.062885>,  <30.758757, 37.230453, 35.877155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613562, 37.185482, 36.062885>,  <30.371571, 37.110531, 36.372437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613562, 37.185482, 36.062885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675127, 0.635990, -0.373791,
		0.422141, 0.748603, 0.511263,
		0.604980, 0.187376, -0.773880,
		30.795055, 37.241695, 35.830723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241144, 36.481369, 36.419540>,  <30.371571, 37.110531, 36.372437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241144, 36.481369, 36.419540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572433, 36.318027, 36.266026>,  <30.771206, 36.220020, 36.173916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572433, 36.318027, 36.266026>,  <30.241144, 36.481369, 36.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572433, 36.318027, 36.266026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069420, -0.604809, 0.793339,
		-0.556083, -0.683704, -0.472569,
		0.828223, -0.408356, -0.383786,
		30.820900, 36.195518, 36.150890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214294, 35.996735, 36.821552>,  <30.241144, 36.481369, 36.419540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214294, 35.996735, 36.821552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549152, 35.926510, 36.614338>,  <30.750067, 35.884377, 36.490009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549152, 35.926510, 36.614338>,  <30.214294, 35.996735, 36.821552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549152, 35.926510, 36.614338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284915, -0.668499, 0.686974,
		-0.466913, -0.722695, -0.509612,
		0.837147, -0.175561, -0.518037,
		30.800297, 35.873840, 36.458927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331377, 35.324612, 36.681313>,  <30.214294, 35.996735, 36.821552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331377, 35.324612, 36.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694284, 35.492611, 36.689926>,  <30.912029, 35.593410, 36.695095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694284, 35.492611, 36.689926>,  <30.331377, 35.324612, 36.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694284, 35.492611, 36.689926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270325, -0.621638, 0.735181,
		0.322165, -0.661184, -0.677529,
		0.907267, 0.420002, 0.021536,
		30.966465, 35.618610, 36.696388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806782, 34.742748, 36.848255>,  <30.331377, 35.324612, 36.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806782, 34.742748, 36.848255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028629, 35.071140, 36.902496>,  <31.161737, 35.268177, 36.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028629, 35.071140, 36.902496>,  <30.806782, 34.742748, 36.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028629, 35.071140, 36.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566620, -0.491960, 0.660997,
		0.609376, -0.289767, -0.738035,
		0.554619, 0.820981, 0.135601,
		31.195015, 35.317436, 36.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589174, 34.507236, 36.938576>,  <30.806782, 34.742748, 36.848255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589174, 34.507236, 36.938576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574499, 34.873028, 37.099766>,  <31.565695, 35.092503, 37.196480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574499, 34.873028, 37.099766>,  <31.589174, 34.507236, 36.938576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574499, 34.873028, 37.099766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532939, -0.323216, 0.781990,
		0.845358, 0.243453, -0.475500,
		-0.036688, 0.914474, 0.402979,
		31.563492, 35.147369, 37.220661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152931, 34.516449, 37.278645>,  <31.589174, 34.507236, 36.938576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152931, 34.516449, 37.278645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941710, 34.811909, 37.446243>,  <31.814976, 34.989185, 37.546803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941710, 34.811909, 37.446243>,  <32.152931, 34.516449, 37.278645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941710, 34.811909, 37.446243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392821, -0.224976, 0.891671,
		0.752893, 0.635444, -0.171356,
		-0.528056, 0.738645, 0.418999,
		31.783293, 35.033501, 37.571941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686375, 34.941147, 37.715485>,  <32.152931, 34.516449, 37.278645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686375, 34.941147, 37.715485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316158, 35.011509, 37.849602>,  <32.094028, 35.053726, 37.930073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316158, 35.011509, 37.849602>,  <32.686375, 34.941147, 37.715485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316158, 35.011509, 37.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306936, -0.169971, 0.936430,
		0.221717, 0.969621, 0.103323,
		-0.925544, 0.175909, 0.335297,
		32.038494, 35.064281, 37.950191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803474, 35.280933, 38.393211>,  <32.686375, 34.941147, 37.715485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803474, 35.280933, 38.393211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418495, 35.175228, 38.418049>,  <32.187508, 35.111805, 38.432949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418495, 35.175228, 38.418049>,  <32.803474, 35.280933, 38.393211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418495, 35.175228, 38.418049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145339, -0.308446, 0.940073,
		-0.229274, 0.913798, 0.335272,
		-0.962450, -0.264263, 0.062091,
		32.129761, 35.095951, 38.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470718, 35.744457, 38.800476>,  <32.803474, 35.280933, 38.393211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470718, 35.744457, 38.800476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268047, 35.401985, 38.840950>,  <32.146446, 35.196503, 38.865234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268047, 35.401985, 38.840950>,  <32.470718, 35.744457, 38.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268047, 35.401985, 38.840950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332732, -0.085919, 0.939099,
		-0.795340, 0.509490, 0.328411,
		-0.506679, -0.856176, 0.101189,
		32.116043, 35.145134, 38.871307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061218, 35.835587, 39.363064>,  <32.470718, 35.744457, 38.800476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061218, 35.835587, 39.363064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083122, 35.438896, 39.316612>,  <32.096264, 35.200882, 39.288742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083122, 35.438896, 39.316612>,  <32.061218, 35.835587, 39.363064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083122, 35.438896, 39.316612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175460, -0.104940, 0.978878,
		-0.982963, -0.073976, 0.168262,
		0.054756, -0.991723, -0.116132,
		32.099548, 35.141380, 39.281773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835186, 35.691109, 39.932350>,  <32.061218, 35.835587, 39.363064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835186, 35.691109, 39.932350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979738, 35.337490, 39.813778>,  <32.066471, 35.125320, 39.742634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979738, 35.337490, 39.813778>,  <31.835186, 35.691109, 39.932350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979738, 35.337490, 39.813778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255705, -0.211767, 0.943276,
		-0.896671, -0.416681, 0.149526,
		0.361381, -0.884043, -0.296433,
		32.088154, 35.072277, 39.724850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610346, 35.167564, 40.410706>,  <31.835186, 35.691109, 39.932350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610346, 35.167564, 40.410706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925066, 34.991520, 40.237617>,  <32.113899, 34.885895, 40.133762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925066, 34.991520, 40.237617>,  <31.610346, 35.167564, 40.410706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925066, 34.991520, 40.237617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303190, -0.335079, 0.892075,
		-0.537608, -0.833082, -0.130203,
		0.786800, -0.440110, -0.432723,
		32.161106, 34.859486, 40.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623167, 34.443878, 40.714462>,  <31.610346, 35.167564, 40.410706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623167, 34.443878, 40.714462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984587, 34.556732, 40.585468>,  <32.201439, 34.624443, 40.508072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984587, 34.556732, 40.585468>,  <31.623167, 34.443878, 40.714462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984587, 34.556732, 40.585468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404154, -0.311191, 0.860127,
		0.142317, -0.907502, -0.395203,
		0.903551, 0.282134, -0.322483,
		32.255653, 34.641373, 40.488724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026234, 33.804714, 40.689125>,  <31.623167, 34.443878, 40.714462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026234, 33.804714, 40.689125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237556, 34.140408, 40.740635>,  <32.364349, 34.341824, 40.771542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237556, 34.140408, 40.740635>,  <32.026234, 33.804714, 40.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237556, 34.140408, 40.740635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356012, -0.356652, 0.863744,
		0.770808, -0.410479, -0.487199,
		0.528309, 0.839230, 0.128775,
		32.396049, 34.392178, 40.779266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745106, 33.537788, 40.803699>,  <32.026234, 33.804714, 40.689125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745106, 33.537788, 40.803699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688324, 33.905613, 40.950260>,  <32.654255, 34.126308, 41.038197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688324, 33.905613, 40.950260>,  <32.745106, 33.537788, 40.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688324, 33.905613, 40.950260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243899, -0.326250, 0.913277,
		0.959355, 0.219013, -0.177967,
		-0.141958, 0.919562, 0.366406,
		32.645737, 34.181480, 41.060181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179188, 33.365139, 41.271530>,  <32.745106, 33.537788, 40.803699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179188, 33.365139, 41.271530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039867, 33.729481, 41.360096>,  <32.956276, 33.948086, 41.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039867, 33.729481, 41.360096>,  <33.179188, 33.365139, 41.271530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039867, 33.729481, 41.360096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262468, -0.131989, 0.955871,
		0.899886, 0.391048, -0.193099,
		-0.348305, 0.910857, 0.221412,
		32.935375, 34.002739, 41.426521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807480, 33.649563, 41.570160>,  <33.179188, 33.365139, 41.271530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807480, 33.649563, 41.570160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472332, 33.829304, 41.694138>,  <33.271244, 33.937149, 41.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472332, 33.829304, 41.694138>,  <33.807480, 33.649563, 41.570160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472332, 33.829304, 41.694138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272715, -0.147279, 0.950755,
		0.472869, 0.881132, 0.000856,
		-0.837867, 0.449349, 0.309942,
		33.220970, 33.964108, 41.787121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989952, 34.336861, 41.975510>,  <33.807480, 33.649563, 41.570160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989952, 34.336861, 41.975510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634426, 34.180538, 42.071243>,  <33.421112, 34.086742, 42.128681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634426, 34.180538, 42.071243>,  <33.989952, 34.336861, 41.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634426, 34.180538, 42.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250904, 0.022023, 0.967761,
		-0.383482, 0.920208, 0.078481,
		-0.888813, -0.390811, 0.239330,
		33.367783, 34.063293, 42.143044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859753, 34.709972, 42.580765>,  <33.989952, 34.336861, 41.975510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859753, 34.709972, 42.580765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586636, 34.417877, 42.590176>,  <33.422768, 34.242622, 42.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586636, 34.417877, 42.590176>,  <33.859753, 34.709972, 42.580765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586636, 34.417877, 42.590176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184656, -0.141321, 0.972590,
		-0.706895, 0.668419, 0.231335,
		-0.682790, -0.730236, 0.023528,
		33.381798, 34.198807, 42.597233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399555, 34.852428, 43.200420>,  <33.859753, 34.709972, 42.580765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399555, 34.852428, 43.200420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364971, 34.459095, 43.136440>,  <33.344219, 34.223095, 43.098053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364971, 34.459095, 43.136440>,  <33.399555, 34.852428, 43.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364971, 34.459095, 43.136440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111388, -0.169085, 0.979287,
		-0.990009, 0.066855, 0.124151,
		-0.086462, -0.983332, -0.159949,
		33.339031, 34.164097, 43.088455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999832, 34.610828, 43.631481>,  <33.399555, 34.852428, 43.200420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999832, 34.610828, 43.631481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143734, 34.248116, 43.543556>,  <33.230076, 34.030487, 43.490803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143734, 34.248116, 43.543556>,  <32.999832, 34.610828, 43.631481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143734, 34.248116, 43.543556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004184, -0.237148, 0.971464,
		-0.933038, -0.348569, -0.089110,
		0.359754, -0.906786, -0.219810,
		33.251659, 33.976078, 43.477612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714359, 34.120426, 44.183342>,  <32.999832, 34.610828, 43.631481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714359, 34.120426, 44.183342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016304, 33.929428, 44.003483>,  <33.197472, 33.814831, 43.895569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016304, 33.929428, 44.003483>,  <32.714359, 34.120426, 44.183342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016304, 33.929428, 44.003483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228594, -0.451042, 0.862732,
		-0.614761, -0.754029, -0.231321,
		0.754861, -0.477495, -0.449649,
		33.242764, 33.786179, 43.868587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655910, 33.461353, 44.310162>,  <32.714359, 34.120426, 44.183342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655910, 33.461353, 44.310162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044022, 33.474323, 44.214241>,  <33.276890, 33.482105, 44.156689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044022, 33.474323, 44.214241>,  <32.655910, 33.461353, 44.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044022, 33.474323, 44.214241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226616, -0.469240, 0.853498,
		-0.084850, -0.882476, -0.462642,
		0.970281, 0.032423, -0.239798,
		33.335106, 33.484051, 44.142300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941624, 32.750725, 44.362705>,  <32.655910, 33.461353, 44.310162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941624, 32.750725, 44.362705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261669, 32.988609, 44.394020>,  <33.453697, 33.131340, 44.412807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261669, 32.988609, 44.394020>,  <32.941624, 32.750725, 44.362705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261669, 32.988609, 44.394020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320476, -0.534142, 0.782296,
		0.507056, -0.600841, -0.617967,
		0.800118, 0.594712, 0.078285,
		33.501705, 33.167023, 44.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565098, 32.369411, 44.510883>,  <32.941624, 32.750725, 44.362705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565098, 32.369411, 44.510883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660770, 32.732140, 44.649719>,  <33.718174, 32.949776, 44.733021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660770, 32.732140, 44.649719>,  <33.565098, 32.369411, 44.510883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660770, 32.732140, 44.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245999, -0.402396, 0.881795,
		0.939296, -0.125522, -0.319322,
		0.239179, 0.906819, 0.347091,
		33.732525, 33.004185, 44.753845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117439, 32.219574, 44.879597>,  <33.565098, 32.369411, 44.510883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117439, 32.219574, 44.879597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000069, 32.576130, 45.017769>,  <33.929646, 32.790062, 45.100674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000069, 32.576130, 45.017769>,  <34.117439, 32.219574, 44.879597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000069, 32.576130, 45.017769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158825, -0.310863, 0.937091,
		0.942695, 0.329835, -0.050358,
		-0.293431, 0.891388, 0.345435,
		33.912041, 32.843548, 45.121399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826176, 32.397541, 44.820545>,  <34.117439, 32.219574, 44.879597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826176, 32.397541, 44.820545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214958, 32.317841, 44.770588>,  <35.448227, 32.270020, 44.740612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214958, 32.317841, 44.770588>,  <34.826176, 32.397541, 44.820545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214958, 32.317841, 44.770588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080820, 0.215714, -0.973106,
		0.220833, 0.955912, 0.193561,
		0.971957, -0.199250, -0.124893,
		35.506546, 32.258064, 44.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064476, 32.966141, 44.432903>,  <34.826176, 32.397541, 44.820545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064476, 32.966141, 44.432903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354321, 32.698349, 44.367493>,  <35.528229, 32.537674, 44.328247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354321, 32.698349, 44.367493>,  <35.064476, 32.966141, 44.432903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354321, 32.698349, 44.367493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049741, 0.287471, -0.956497,
		0.687360, 0.684955, 0.241606,
		0.724612, -0.669475, -0.163526,
		35.571705, 32.497505, 44.318436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543446, 33.268326, 43.986568>,  <35.064476, 32.966141, 44.432903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543446, 33.268326, 43.986568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624893, 32.879181, 43.942604>,  <35.673763, 32.645695, 43.916225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624893, 32.879181, 43.942604>,  <35.543446, 33.268326, 43.986568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624893, 32.879181, 43.942604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059225, 0.124299, -0.990476,
		0.977256, 0.195174, 0.082928,
		0.203623, -0.972860, -0.109912,
		35.685982, 32.587322, 43.909630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199211, 33.164658, 43.708057>,  <35.543446, 33.268326, 43.986568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199211, 33.164658, 43.708057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980240, 32.850357, 43.592876>,  <35.848858, 32.661777, 43.523769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980240, 32.850357, 43.592876>,  <36.199211, 33.164658, 43.708057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980240, 32.850357, 43.592876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211598, 0.202944, -0.956054,
		0.809663, -0.584297, 0.055168,
		-0.547424, -0.785755, -0.287953,
		35.816013, 32.614632, 43.506489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528744, 32.997368, 43.164181>,  <36.199211, 33.164658, 43.708057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528744, 32.997368, 43.164181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175587, 32.815617, 43.116776>,  <35.963692, 32.706566, 43.088333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175587, 32.815617, 43.116776>,  <36.528744, 32.997368, 43.164181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175587, 32.815617, 43.116776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017924, 0.219585, -0.975429,
		0.469240, -0.863319, -0.185725,
		-0.882889, -0.454382, -0.118512,
		35.910721, 32.679302, 43.081223>
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
