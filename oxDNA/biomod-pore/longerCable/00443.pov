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
	<24.527679, 35.250614, 35.225521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358042, 35.025341, 34.941837>,  <24.256260, 34.890179, 34.771629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358042, 35.025341, 34.941837>,  <24.527679, 35.250614, 35.225521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358042, 35.025341, 34.941837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567172, -0.775686, 0.276816,
		-0.706018, -0.284845, 0.648384,
		-0.424093, -0.563182, -0.709205,
		24.230814, 34.856388, 34.729076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760872, 35.860382, 35.551449>,  <24.527679, 35.250614, 35.225521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760872, 35.860382, 35.551449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936485, 35.610886, 35.292778>,  <25.041853, 35.461189, 35.137573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936485, 35.610886, 35.292778>,  <24.760872, 35.860382, 35.551449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936485, 35.610886, 35.292778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852561, 0.516348, 0.080770,
		0.283533, -0.586796, 0.758472,
		0.439031, -0.623743, -0.646681,
		25.068195, 35.423763, 35.098774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423527, 35.625832, 35.829258>,  <24.760872, 35.860382, 35.551449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423527, 35.625832, 35.829258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411362, 35.649876, 35.430168>,  <25.404062, 35.664303, 35.190712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411362, 35.649876, 35.430168>,  <25.423527, 35.625832, 35.829258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411362, 35.649876, 35.430168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810168, 0.586101, 0.010617,
		0.585408, -0.808005, -0.066526,
		-0.030412, 0.060112, -0.997728,
		25.402239, 35.667908, 35.130848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096640, 35.617176, 35.679024>,  <25.423527, 35.625832, 35.829258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096640, 35.617176, 35.679024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915342, 35.779079, 35.361347>,  <25.806564, 35.876221, 35.170742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915342, 35.779079, 35.361347>,  <26.096640, 35.617176, 35.679024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915342, 35.779079, 35.361347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765421, 0.633345, -0.114039,
		0.456840, -0.659578, -0.596870,
		-0.453242, 0.404760, -0.794192,
		25.779369, 35.900509, 35.123089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622385, 35.692898, 35.193840>,  <26.096640, 35.617176, 35.679024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622385, 35.692898, 35.193840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332567, 35.943127, 35.078121>,  <26.158676, 36.093266, 35.008690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332567, 35.943127, 35.078121>,  <26.622385, 35.692898, 35.193840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332567, 35.943127, 35.078121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687480, 0.685835, -0.238750,
		0.049057, -0.371874, -0.926986,
		-0.724545, 0.625572, -0.289301,
		26.115204, 36.130798, 34.991329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869549, 36.061031, 34.643486>,  <26.622385, 35.692898, 35.193840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869549, 36.061031, 34.643486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572525, 36.280701, 34.796856>,  <26.394312, 36.412502, 34.888878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572525, 36.280701, 34.796856>,  <26.869549, 36.061031, 34.643486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572525, 36.280701, 34.796856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618950, 0.781396, 0.079504,
		-0.255946, 0.296358, -0.920143,
		-0.742558, 0.549174, 0.383426,
		26.349758, 36.445454, 34.911884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882494, 36.755646, 34.361122>,  <26.869549, 36.061031, 34.643486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882494, 36.755646, 34.361122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690763, 36.780655, 34.711285>,  <26.575726, 36.795662, 34.921383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690763, 36.780655, 34.711285>,  <26.882494, 36.755646, 34.361122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690763, 36.780655, 34.711285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533171, 0.813040, 0.233867,
		-0.697119, 0.578841, -0.423047,
		-0.479326, 0.062524, 0.875407,
		26.546965, 36.799412, 34.973907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623215, 37.422382, 34.455795>,  <26.882494, 36.755646, 34.361122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623215, 37.422382, 34.455795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686268, 37.255089, 34.813618>,  <26.724100, 37.154713, 35.028313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686268, 37.255089, 34.813618>,  <26.623215, 37.422382, 34.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686268, 37.255089, 34.813618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374600, 0.863500, 0.337701,
		-0.913688, 0.281868, 0.292787,
		0.157635, -0.418231, 0.894558,
		26.733559, 37.129620, 35.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400541, 37.860424, 34.897408>,  <26.623215, 37.422382, 34.455795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400541, 37.860424, 34.897408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608381, 37.634117, 35.153507>,  <26.733086, 37.498333, 35.307167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608381, 37.634117, 35.153507>,  <26.400541, 37.860424, 34.897408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608381, 37.634117, 35.153507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284884, 0.821188, 0.494460,
		-0.805518, -0.074523, 0.587867,
		0.519598, -0.565770, 0.640251,
		26.764261, 37.464386, 35.345581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246796, 38.125973, 35.624119>,  <26.400541, 37.860424, 34.897408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246796, 38.125973, 35.624119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592058, 37.925446, 35.648266>,  <26.799215, 37.805130, 35.662754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592058, 37.925446, 35.648266>,  <26.246796, 38.125973, 35.624119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592058, 37.925446, 35.648266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404491, 0.758052, 0.511610,
		-0.302240, -0.417181, 0.857094,
		0.863156, -0.501316, 0.060368,
		26.851006, 37.775051, 35.666374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447855, 38.120899, 36.358395>,  <26.246796, 38.125973, 35.624119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447855, 38.120899, 36.358395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784563, 38.036537, 36.159622>,  <26.986588, 37.985920, 36.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784563, 38.036537, 36.159622>,  <26.447855, 38.120899, 36.358395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784563, 38.036537, 36.159622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474034, 0.729211, 0.493500,
		0.258285, -0.650976, 0.713806,
		0.841772, -0.210904, -0.496930,
		27.037094, 37.973267, 36.010544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838188, 37.957634, 36.876076>,  <26.447855, 38.120899, 36.358395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838188, 37.957634, 36.876076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056004, 38.066807, 36.558842>,  <27.186693, 38.132309, 36.368500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056004, 38.066807, 36.558842>,  <26.838188, 37.957634, 36.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056004, 38.066807, 36.558842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563092, 0.581833, 0.586855,
		0.621614, -0.766146, 0.163146,
		0.544540, 0.272931, -0.793086,
		27.219366, 38.148685, 36.320915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473801, 37.591496, 36.885880>,  <26.838188, 37.957634, 36.876076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473801, 37.591496, 36.885880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485043, 37.971710, 36.762142>,  <27.491787, 38.199841, 36.687901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485043, 37.971710, 36.762142>,  <27.473801, 37.591496, 36.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485043, 37.971710, 36.762142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678870, 0.208999, 0.703885,
		0.733720, -0.229783, -0.639417,
		0.028103, 0.950536, -0.309340,
		27.493473, 38.256870, 36.669342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076902, 38.005093, 36.797890>,  <27.473801, 37.591496, 36.885880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076902, 38.005093, 36.797890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931904, 38.377888, 36.797131>,  <27.844904, 38.601562, 36.796673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931904, 38.377888, 36.797131>,  <28.076902, 38.005093, 36.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931904, 38.377888, 36.797131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809752, 0.315963, 0.494438,
		0.461409, 0.177693, -0.869211,
		-0.362497, 0.931983, -0.001900,
		27.823154, 38.657482, 36.796562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349890, 38.356514, 36.234852>,  <28.076902, 38.005093, 36.797890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349890, 38.356514, 36.234852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302887, 38.611160, 36.539722>,  <28.274685, 38.763947, 36.722645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302887, 38.611160, 36.539722>,  <28.349890, 38.356514, 36.234852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302887, 38.611160, 36.539722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261159, 0.760292, -0.594771,
		-0.958117, 0.129159, -0.255598,
		-0.117509, 0.636612, 0.762179,
		28.267635, 38.802143, 36.768375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809240, 38.390633, 35.667747>,  <28.349890, 38.356514, 36.234852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809240, 38.390633, 35.667747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010916, 38.369556, 35.322952>,  <28.131922, 38.356911, 35.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010916, 38.369556, 35.322952>,  <27.809240, 38.390633, 35.667747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010916, 38.369556, 35.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261698, -0.941883, 0.210645,
		-0.822986, -0.331784, -0.461099,
		0.504190, -0.052689, -0.861984,
		28.162172, 38.353748, 35.064358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199205, 37.790524, 35.426476>,  <27.809240, 38.390633, 35.667747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199205, 37.790524, 35.426476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847580, 37.828896, 35.613258>,  <27.636604, 37.851917, 35.725327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847580, 37.828896, 35.613258>,  <28.199205, 37.790524, 35.426476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847580, 37.828896, 35.613258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301490, -0.870638, -0.388707,
		0.369260, -0.482480, 0.794267,
		-0.879063, 0.095930, 0.466955,
		27.583860, 37.857674, 35.753345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043726, 37.248432, 35.779362>,  <28.199205, 37.790524, 35.426476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043726, 37.248432, 35.779362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678385, 37.402462, 35.726448>,  <27.459181, 37.494881, 35.694698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678385, 37.402462, 35.726448>,  <28.043726, 37.248432, 35.779362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678385, 37.402462, 35.726448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342424, -0.902235, -0.262139,
		-0.220298, -0.194128, 0.955920,
		-0.913353, 0.385079, -0.132286,
		27.404379, 37.517986, 35.686764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636806, 36.684345, 35.911201>,  <28.043726, 37.248432, 35.779362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636806, 36.684345, 35.911201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379154, 36.947090, 35.754417>,  <27.224564, 37.104736, 35.660347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379154, 36.947090, 35.754417>,  <27.636806, 36.684345, 35.911201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379154, 36.947090, 35.754417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567897, -0.753945, -0.330241,
		-0.512436, 0.009872, 0.858669,
		-0.644129, 0.656863, -0.391955,
		27.185915, 37.144150, 35.636829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975296, 36.619175, 36.250111>,  <27.636806, 36.684345, 35.911201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975296, 36.619175, 36.250111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895027, 36.772572, 35.889519>,  <26.846867, 36.864609, 35.673164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895027, 36.772572, 35.889519>,  <26.975296, 36.619175, 36.250111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895027, 36.772572, 35.889519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690901, -0.707785, -0.147299,
		-0.694540, 0.593273, 0.406991,
		-0.200673, 0.383495, -0.901478,
		26.834826, 36.887619, 35.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298899, 36.596298, 36.081009>,  <26.975296, 36.619175, 36.250111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298899, 36.596298, 36.081009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499584, 36.583027, 35.735249>,  <26.619995, 36.575062, 35.527794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499584, 36.583027, 35.735249>,  <26.298899, 36.596298, 36.081009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499584, 36.583027, 35.735249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633346, -0.694719, -0.340938,
		-0.589199, 0.718516, -0.369567,
		0.501714, -0.033183, -0.864397,
		26.650099, 36.573071, 35.475929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816771, 37.041424, 36.292488>,  <26.298899, 36.596298, 36.081009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816771, 37.041424, 36.292488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097286, 37.252110, 36.100338>,  <26.265596, 37.378521, 35.985046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097286, 37.252110, 36.100338>,  <25.816771, 37.041424, 36.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097286, 37.252110, 36.100338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108450, 0.587184, 0.802156,
		0.704580, -0.614639, 0.354662,
		0.701288, 0.526720, -0.480376,
		26.307673, 37.410126, 35.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212658, 37.151512, 35.759319>,  <25.816771, 37.041424, 36.292488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212658, 37.151512, 35.759319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381998, 37.456493, 35.955051>,  <25.483603, 37.639481, 36.072491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381998, 37.456493, 35.955051>,  <25.212658, 37.151512, 35.759319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381998, 37.456493, 35.955051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878305, 0.212953, 0.428056,
		0.222174, -0.610987, 0.759825,
		0.423344, 0.762460, 0.489321,
		25.509003, 37.685230, 36.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439690, 37.364201, 35.058525>,  <25.212658, 37.151512, 35.759319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439690, 37.364201, 35.058525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699474, 37.069241, 34.984299>,  <25.855345, 36.892265, 34.939762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699474, 37.069241, 34.984299>,  <25.439690, 37.364201, 35.058525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699474, 37.069241, 34.984299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748332, -0.663130, 0.016058,
		-0.134894, 0.128434, -0.982501,
		0.649464, -0.737403, -0.185563,
		25.894314, 36.848019, 34.928631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194778, 36.941086, 34.516647>,  <25.439690, 37.364201, 35.058525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194778, 36.941086, 34.516647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474396, 36.701199, 34.672428>,  <25.642166, 36.557266, 34.765896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474396, 36.701199, 34.672428>,  <25.194778, 36.941086, 34.516647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474396, 36.701199, 34.672428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553524, -0.798619, -0.236257,
		0.452710, -0.050415, -0.890231,
		0.699045, -0.599721, 0.389449,
		25.684109, 36.521282, 34.789265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165125, 36.401432, 34.102036>,  <25.194778, 36.941086, 34.516647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165125, 36.401432, 34.102036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367596, 36.244152, 34.409069>,  <25.489079, 36.149784, 34.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367596, 36.244152, 34.409069>,  <25.165125, 36.401432, 34.102036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367596, 36.244152, 34.409069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511862, -0.853280, -0.099553,
		0.694106, -0.342504, -0.633172,
		0.506176, -0.393197, 0.767582,
		25.519449, 36.126194, 34.639343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415619, 35.691402, 33.840210>,  <25.165125, 36.401432, 34.102036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415619, 35.691402, 33.840210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407967, 35.704121, 34.239933>,  <25.403376, 35.711754, 34.479767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407967, 35.704121, 34.239933>,  <25.415619, 35.691402, 33.840210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407967, 35.704121, 34.239933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553397, -0.832766, 0.015905,
		0.832698, -0.552712, 0.033528,
		-0.019130, 0.031798, 0.999311,
		25.402227, 35.713661, 34.539726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495497, 35.067589, 33.979321>,  <25.415619, 35.691402, 33.840210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495497, 35.067589, 33.979321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294947, 35.251583, 34.272453>,  <25.174616, 35.361980, 34.448334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294947, 35.251583, 34.272453>,  <25.495497, 35.067589, 33.979321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294947, 35.251583, 34.272453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668386, -0.743753, 0.009557,
		0.549439, -0.485020, 0.680347,
		-0.501375, 0.459986, 0.732828,
		25.144535, 35.389580, 34.492302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014847, 35.004532, 33.401764>,  <25.495497, 35.067589, 33.979321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014847, 35.004532, 33.401764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369280, 34.833996, 33.328995>,  <26.581940, 34.731674, 33.285332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369280, 34.833996, 33.328995>,  <26.014847, 35.004532, 33.401764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369280, 34.833996, 33.328995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458735, -0.862859, -0.212219,
		-0.066497, 0.271498, -0.960139,
		0.886082, -0.426338, -0.181923,
		26.635105, 34.706093, 33.274418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035051, 34.826160, 32.692364>,  <26.014847, 35.004532, 33.401764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035051, 34.826160, 32.692364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250652, 34.600380, 32.942444>,  <26.380013, 34.464912, 33.092491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250652, 34.600380, 32.942444>,  <26.035051, 34.826160, 32.692364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250652, 34.600380, 32.942444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466431, -0.818070, -0.336456,
		0.701368, -0.110260, -0.704220,
		0.539004, -0.564450, 0.625197,
		26.412354, 34.431046, 33.130005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605459, 34.439571, 32.293407>,  <26.035051, 34.826160, 32.692364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605459, 34.439571, 32.293407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508987, 34.223061, 32.615612>,  <26.451105, 34.093155, 32.808933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508987, 34.223061, 32.615612>,  <26.605459, 34.439571, 32.293407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508987, 34.223061, 32.615612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019074, -0.827208, -0.561572,
		0.970293, -0.150804, 0.189182,
		-0.241180, -0.541281, 0.805511,
		26.436634, 34.060677, 32.857265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807665, 33.798000, 32.087044>,  <26.605459, 34.439571, 32.293407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807665, 33.798000, 32.087044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606598, 33.719639, 32.423840>,  <26.485958, 33.672623, 32.625919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606598, 33.719639, 32.423840>,  <26.807665, 33.798000, 32.087044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606598, 33.719639, 32.423840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274970, -0.887171, -0.370567,
		0.819584, -0.417794, 0.392084,
		-0.502666, -0.195900, 0.841992,
		26.455799, 33.660870, 32.676437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101568, 33.220577, 32.515030>,  <26.807665, 33.798000, 32.087044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101568, 33.220577, 32.515030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710268, 33.240421, 32.595589>,  <26.475487, 33.252327, 32.643925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710268, 33.240421, 32.595589>,  <27.101568, 33.220577, 32.515030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710268, 33.240421, 32.595589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132791, -0.895695, -0.424379,
		0.159342, -0.441894, 0.882802,
		-0.978252, 0.049607, 0.201401,
		26.416792, 33.255302, 32.656010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936588, 32.466896, 32.737011>,  <27.101568, 33.220577, 32.515030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936588, 32.466896, 32.737011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583588, 32.645485, 32.677876>,  <26.371788, 32.752640, 32.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583588, 32.645485, 32.677876>,  <26.936588, 32.466896, 32.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583588, 32.645485, 32.677876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346231, -0.829486, -0.438265,
		-0.318305, -0.335582, 0.886604,
		-0.882500, 0.446472, -0.147840,
		26.318838, 32.779427, 32.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061741, 31.773804, 32.642406>,  <26.936588, 32.466896, 32.737011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061741, 31.773804, 32.642406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097639, 31.620708, 32.274612>,  <27.119179, 31.528852, 32.053936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097639, 31.620708, 32.274612>,  <27.061741, 31.773804, 32.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097639, 31.620708, 32.274612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246439, -0.885971, 0.392839,
		-0.964994, -0.261853, 0.014807,
		0.089747, -0.382736, -0.919488,
		27.124563, 31.505888, 31.998766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983992, 31.756226, 33.414799>,  <27.061741, 31.773804, 32.642406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983992, 31.756226, 33.414799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221703, 32.054138, 33.536213>,  <27.364330, 32.232887, 33.609062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221703, 32.054138, 33.536213>,  <26.983992, 31.756226, 33.414799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221703, 32.054138, 33.536213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767574, -0.637912, 0.062438,
		0.240131, 0.195880, -0.950772,
		0.594278, 0.744782, 0.303535,
		27.399986, 32.277573, 33.627274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392620, 32.014614, 33.076008>,  <26.983992, 31.756226, 33.414799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392620, 32.014614, 33.076008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203732, 32.229996, 32.796844>,  <26.090399, 32.359226, 32.629345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203732, 32.229996, 32.796844>,  <26.392620, 32.014614, 33.076008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203732, 32.229996, 32.796844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543403, -0.801229, -0.250489,
		-0.694061, 0.260959, 0.670954,
		-0.472221, 0.538454, -0.697908,
		26.062065, 32.391533, 32.587471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747786, 31.786186, 33.080513>,  <26.392620, 32.014614, 33.076008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747786, 31.786186, 33.080513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752991, 31.976210, 32.728569>,  <25.756113, 32.090225, 32.517403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752991, 31.976210, 32.728569>,  <25.747786, 31.786186, 33.080513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752991, 31.976210, 32.728569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415678, -0.797724, -0.436862,
		-0.909419, 0.371422, 0.187091,
		0.013013, 0.475060, -0.879857,
		25.756895, 32.118729, 32.464611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109236, 31.715754, 32.829350>,  <25.747786, 31.786186, 33.080513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109236, 31.715754, 32.829350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302719, 31.816463, 32.494057>,  <25.418808, 31.876890, 32.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302719, 31.816463, 32.494057>,  <25.109236, 31.715754, 32.829350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302719, 31.816463, 32.494057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225170, -0.889694, -0.397169,
		-0.845769, 0.380859, -0.373659,
		0.483707, 0.251776, -0.838234,
		25.447832, 31.891996, 32.242588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767992, 31.436554, 32.223053>,  <25.109236, 31.715754, 32.829350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767992, 31.436554, 32.223053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148508, 31.480013, 32.107647>,  <25.376818, 31.506088, 32.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148508, 31.480013, 32.107647>,  <24.767992, 31.436554, 32.223053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148508, 31.480013, 32.107647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008358, -0.926412, -0.376419,
		-0.308185, 0.360495, -0.880378,
		0.951290, 0.108648, -0.288519,
		25.433895, 31.512608, 32.021091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192184, 30.838064, 31.879171>,  <24.767992, 31.436554, 32.223053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192184, 30.838064, 31.879171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403355, 30.900440, 31.545231>,  <25.530056, 30.937866, 31.344866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403355, 30.900440, 31.545231>,  <25.192184, 30.838064, 31.879171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403355, 30.900440, 31.545231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031356, 0.985908, 0.164326,
		0.848711, -0.060575, 0.525376,
		0.527926, 0.155939, -0.834851,
		25.561733, 30.947222, 31.294775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918644, 31.102945, 32.054619>,  <25.192184, 30.838064, 31.879171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918644, 31.102945, 32.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779781, 31.226315, 31.700363>,  <25.696463, 31.300335, 31.487810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779781, 31.226315, 31.700363>,  <25.918644, 31.102945, 32.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779781, 31.226315, 31.700363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016321, 0.946217, 0.323120,
		0.937665, 0.097719, -0.333521,
		-0.347158, 0.308421, -0.885640,
		25.675634, 31.318840, 31.434671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392143, 31.559498, 31.674059>,  <25.918644, 31.102945, 32.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392143, 31.559498, 31.674059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001614, 31.610331, 31.604038>,  <25.767296, 31.640829, 31.562025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001614, 31.610331, 31.604038>,  <26.392143, 31.559498, 31.674059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001614, 31.610331, 31.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005643, 0.823930, 0.566663,
		0.216244, 0.552259, -0.805139,
		-0.976323, 0.127080, -0.175053,
		25.708717, 31.648455, 31.551521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286896, 32.210876, 31.354269>,  <26.392143, 31.559498, 31.674059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286896, 32.210876, 31.354269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996777, 32.119987, 31.614212>,  <25.822704, 32.065456, 31.770178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996777, 32.119987, 31.614212>,  <26.286896, 32.210876, 31.354269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996777, 32.119987, 31.614212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045374, 0.926132, 0.374460,
		-0.686938, 0.301082, -0.661412,
		-0.725298, -0.227220, 0.649857,
		25.779186, 32.051823, 31.809170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724459, 32.665371, 31.319574>,  <26.286896, 32.210876, 31.354269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724459, 32.665371, 31.319574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744125, 32.502342, 31.684313>,  <25.755926, 32.404526, 31.903156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744125, 32.502342, 31.684313>,  <25.724459, 32.665371, 31.319574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744125, 32.502342, 31.684313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079474, 0.911653, 0.403203,
		-0.995624, 0.052643, 0.077217,
		0.049169, -0.407575, 0.911847,
		25.758877, 32.380070, 31.957867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484417, 33.243221, 31.779865>,  <25.724459, 32.665371, 31.319574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484417, 33.243221, 31.779865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665178, 32.978516, 32.019146>,  <25.773636, 32.819691, 32.162716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665178, 32.978516, 32.019146>,  <25.484417, 33.243221, 31.779865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665178, 32.978516, 32.019146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355538, 0.748629, 0.559595,
		-0.818154, -0.040200, 0.573593,
		0.451904, -0.661769, 0.598201,
		25.800749, 32.779984, 32.198605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195627, 33.349537, 32.471596>,  <25.484417, 33.243221, 31.779865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195627, 33.349537, 32.471596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548250, 33.169807, 32.529507>,  <25.759825, 33.061970, 32.564255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548250, 33.169807, 32.529507>,  <25.195627, 33.349537, 32.471596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548250, 33.169807, 32.529507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320654, 0.795019, 0.514903,
		-0.346460, -0.407493, 0.844935,
		0.881559, -0.449325, 0.144778,
		25.812717, 33.035011, 32.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291170, 33.383762, 33.221920>,  <25.195627, 33.349537, 32.471596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291170, 33.383762, 33.221920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645447, 33.335766, 33.042519>,  <25.858013, 33.306969, 32.934879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645447, 33.335766, 33.042519>,  <25.291170, 33.383762, 33.221920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645447, 33.335766, 33.042519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377210, 0.749172, 0.544475,
		0.270675, -0.651416, 0.708796,
		0.885690, -0.119989, -0.448503,
		25.911154, 33.299770, 32.907967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710875, 33.322369, 33.719364>,  <25.291170, 33.383762, 33.221920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710875, 33.322369, 33.719364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929623, 33.439159, 33.405502>,  <26.060871, 33.509235, 33.217186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929623, 33.439159, 33.405502>,  <25.710875, 33.322369, 33.719364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929623, 33.439159, 33.405502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397018, 0.734692, 0.550095,
		0.737077, -0.612361, 0.285887,
		0.546895, 0.291960, -0.784643,
		26.093683, 33.526752, 33.170105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383965, 33.412243, 33.979099>,  <25.710875, 33.322369, 33.719364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383965, 33.412243, 33.979099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358183, 33.639183, 33.650719>,  <26.342714, 33.775349, 33.453690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358183, 33.639183, 33.650719>,  <26.383965, 33.412243, 33.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358183, 33.639183, 33.650719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343779, 0.784925, 0.515470,
		0.936836, -0.249001, -0.245635,
		-0.064453, 0.567355, -0.820947,
		26.338846, 33.809391, 33.404434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085722, 33.683270, 33.886749>,  <26.383965, 33.412243, 33.979099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085722, 33.683270, 33.886749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839420, 33.915901, 33.674103>,  <26.691639, 34.055481, 33.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839420, 33.915901, 33.674103>,  <27.085722, 33.683270, 33.886749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839420, 33.915901, 33.674103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408869, 0.812585, 0.415368,
		0.673551, 0.038404, -0.738143,
		-0.615756, 0.581576, -0.531615,
		26.654694, 34.090374, 33.514618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416824, 34.250774, 33.532654>,  <27.085722, 33.683270, 33.886749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416824, 34.250774, 33.532654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045324, 34.393345, 33.573418>,  <26.822424, 34.478889, 33.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045324, 34.393345, 33.573418>,  <27.416824, 34.250774, 33.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045324, 34.393345, 33.573418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366264, 0.839797, 0.400739,
		0.057256, 0.409509, -0.910508,
		-0.928748, 0.356430, 0.101905,
		26.766701, 34.500275, 33.603989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439833, 34.921623, 33.290318>,  <27.416824, 34.250774, 33.532654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439833, 34.921623, 33.290318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156464, 34.871105, 33.568077>,  <26.986443, 34.840794, 33.734734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156464, 34.871105, 33.568077>,  <27.439833, 34.921623, 33.290318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156464, 34.871105, 33.568077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307218, 0.830585, 0.464484,
		-0.635418, 0.542382, -0.549605,
		-0.708421, -0.126292, 0.694398,
		26.943937, 34.833218, 33.776398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082130, 35.620083, 33.429955>,  <27.439833, 34.921623, 33.290318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082130, 35.620083, 33.429955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029194, 35.366280, 33.734554>,  <26.997433, 35.213997, 33.917313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029194, 35.366280, 33.734554>,  <27.082130, 35.620083, 33.429955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029194, 35.366280, 33.734554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330213, 0.696149, 0.637445,
		-0.934583, 0.335817, 0.117395,
		-0.132341, -0.634511, 0.761500,
		26.989492, 35.175926, 33.963005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488548, 35.549702, 33.987198>,  <27.082130, 35.620083, 33.429955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488548, 35.549702, 33.987198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790262, 35.623474, 34.239243>,  <27.971291, 35.667736, 34.390469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790262, 35.623474, 34.239243>,  <27.488548, 35.549702, 33.987198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790262, 35.623474, 34.239243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598373, -0.201844, 0.775377,
		0.270188, -0.961896, -0.041889,
		0.754287, 0.184432, 0.630108,
		28.016548, 35.678802, 34.428276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597374, 34.958324, 34.446827>,  <27.488548, 35.549702, 33.987198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597374, 34.958324, 34.446827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653105, 35.340176, 34.552101>,  <27.686543, 35.569286, 34.615265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653105, 35.340176, 34.552101>,  <27.597374, 34.958324, 34.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653105, 35.340176, 34.552101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634823, -0.117872, 0.763614,
		0.759992, -0.273469, 0.589599,
		0.139327, 0.954631, 0.263186,
		27.694902, 35.626564, 34.631058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335766, 35.230289, 34.484711>,  <27.597374, 34.958324, 34.446827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335766, 35.230289, 34.484711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730806, 35.253315, 34.426289>,  <28.967831, 35.267132, 34.391235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730806, 35.253315, 34.426289>,  <28.335766, 35.230289, 34.484711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730806, 35.253315, 34.426289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128166, 0.241616, 0.961871,
		0.090663, -0.968663, 0.231242,
		0.987600, 0.057568, -0.146056,
		29.027086, 35.270584, 34.382473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785942, 34.906868, 34.963898>,  <28.335766, 35.230289, 34.484711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785942, 34.906868, 34.963898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028257, 35.206821, 34.857540>,  <29.173645, 35.386791, 34.793724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028257, 35.206821, 34.857540>,  <28.785942, 34.906868, 34.963898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028257, 35.206821, 34.857540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027750, 0.353909, 0.934868,
		0.795144, -0.558951, 0.235202,
		0.605785, 0.749882, -0.265897,
		29.209993, 35.431786, 34.777771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410423, 34.891682, 35.302441>,  <28.785942, 34.906868, 34.963898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410423, 34.891682, 35.302441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329325, 35.274452, 35.219311>,  <29.280666, 35.504112, 35.169434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329325, 35.274452, 35.219311>,  <29.410423, 34.891682, 35.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329325, 35.274452, 35.219311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108537, 0.232884, 0.966429,
		0.973198, 0.173384, -0.151078,
		-0.202746, 0.956924, -0.207823,
		29.268501, 35.561531, 35.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062550, 34.847031, 35.624748>,  <29.410423, 34.891682, 35.302441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062550, 34.847031, 35.624748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755104, 35.094395, 35.690224>,  <29.570637, 35.242813, 35.729507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755104, 35.094395, 35.690224>,  <30.062550, 34.847031, 35.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755104, 35.094395, 35.690224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181115, -0.035045, 0.982837,
		0.613536, 0.785071, -0.085068,
		-0.768616, 0.618413, 0.163690,
		29.524519, 35.279919, 35.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141724, 35.420002, 35.196186>,  <30.062550, 34.847031, 35.624748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141724, 35.420002, 35.196186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922766, 35.533939, 35.510948>,  <29.791391, 35.602303, 35.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922766, 35.533939, 35.510948>,  <30.141724, 35.420002, 35.196186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922766, 35.533939, 35.510948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830112, 0.065513, 0.553734,
		0.106174, 0.956333, -0.272312,
		-0.547395, 0.284842, 0.786908,
		29.758547, 35.619392, 35.747021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469217, 36.027153, 35.524918>,  <30.141724, 35.420002, 35.196186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469217, 36.027153, 35.524918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254284, 35.849503, 35.811699>,  <30.125324, 35.742912, 35.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254284, 35.849503, 35.811699>,  <30.469217, 36.027153, 35.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254284, 35.849503, 35.811699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791314, 0.028543, 0.610743,
		-0.291713, 0.895508, 0.336109,
		-0.537332, -0.444129, 0.716955,
		30.093084, 35.716263, 36.026787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783195, 35.639698, 34.905384>,  <30.469217, 36.027153, 35.524918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783195, 35.639698, 34.905384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033430, 35.334839, 34.838722>,  <31.183571, 35.151924, 34.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033430, 35.334839, 34.838722>,  <30.783195, 35.639698, 34.905384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033430, 35.334839, 34.838722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482391, 0.545780, -0.685144,
		0.613137, 0.348224, 0.709086,
		0.625589, -0.762144, -0.166658,
		31.221107, 35.106197, 34.788723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453247, 35.960033, 35.106918>,  <30.783195, 35.639698, 34.905384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453247, 35.960033, 35.106918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502052, 35.641678, 34.869709>,  <31.531336, 35.450665, 34.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502052, 35.641678, 34.869709>,  <31.453247, 35.960033, 35.106918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502052, 35.641678, 34.869709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625514, 0.525556, -0.576648,
		0.770613, -0.300583, 0.561966,
		0.122014, -0.795890, -0.593019,
		31.538656, 35.402912, 34.691803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245495, 35.725372, 35.096676>,  <31.453247, 35.960033, 35.106918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245495, 35.725372, 35.096676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988289, 35.681564, 34.793484>,  <31.833965, 35.655281, 34.611568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988289, 35.681564, 34.793484>,  <32.245495, 35.725372, 35.096676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988289, 35.681564, 34.793484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567042, 0.597168, -0.567321,
		0.514774, -0.794604, -0.321888,
		-0.643017, -0.109518, -0.757981,
		31.795383, 35.648708, 34.566090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583027, 35.542236, 34.458195>,  <32.245495, 35.725372, 35.096676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583027, 35.542236, 34.458195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245026, 35.726498, 34.349564>,  <32.042225, 35.837055, 34.284386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245026, 35.726498, 34.349564>,  <32.583027, 35.542236, 34.458195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245026, 35.726498, 34.349564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534639, 0.738341, -0.411113,
		0.011137, -0.492592, -0.870189,
		-0.845007, 0.460658, -0.271582,
		31.991524, 35.864697, 34.268089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680363, 35.497261, 33.775356>,  <32.583027, 35.542236, 34.458195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680363, 35.497261, 33.775356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078320, 35.537624, 33.775963>,  <33.317093, 35.561844, 33.776325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078320, 35.537624, 33.775963>,  <32.680363, 35.497261, 33.775356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078320, 35.537624, 33.775963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068196, -0.683245, 0.726997,
		0.074398, -0.723182, -0.686639,
		0.994894, 0.100913, 0.001514,
		33.376789, 35.567898, 33.776417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266018, 34.821541, 34.025909>,  <32.680363, 35.497261, 33.775356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266018, 34.821541, 34.025909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101387, 35.165562, 33.905304>,  <32.002609, 35.371975, 33.832939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101387, 35.165562, 33.905304>,  <32.266018, 34.821541, 34.025909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101387, 35.165562, 33.905304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355695, -0.456185, -0.815706,
		-0.839100, -0.228474, 0.493671,
		-0.411573, 0.860055, -0.301517,
		31.977915, 35.423576, 33.814850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573517, 34.719261, 33.911964>,  <32.266018, 34.821541, 34.025909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573517, 34.719261, 33.911964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673183, 35.028324, 33.678410>,  <31.732985, 35.213760, 33.538277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673183, 35.028324, 33.678410>,  <31.573517, 34.719261, 33.911964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673183, 35.028324, 33.678410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334517, -0.497128, -0.800601,
		-0.908853, 0.394804, 0.134597,
		0.249168, 0.772654, -0.583885,
		31.747934, 35.260120, 33.503242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053221, 34.735821, 33.387863>,  <31.573517, 34.719261, 33.911964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053221, 34.735821, 33.387863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347807, 34.955345, 33.229660>,  <31.524559, 35.087059, 33.134739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347807, 34.955345, 33.229660>,  <31.053221, 34.735821, 33.387863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347807, 34.955345, 33.229660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200754, -0.381012, -0.902512,
		-0.645999, 0.744070, -0.170427,
		0.736467, 0.548808, -0.395508,
		31.568747, 35.119987, 33.111008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724438, 35.061096, 32.866241>,  <31.053221, 34.735821, 33.387863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724438, 35.061096, 32.866241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111614, 35.091179, 32.770378>,  <31.343920, 35.109230, 32.712860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111614, 35.091179, 32.770378>,  <30.724438, 35.061096, 32.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111614, 35.091179, 32.770378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185808, -0.427622, -0.884655,
		-0.169015, 0.900823, -0.399939,
		0.967941, 0.075208, -0.239655,
		31.401997, 35.113743, 32.698483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745010, 35.353664, 32.113972>,  <30.724438, 35.061096, 32.866241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745010, 35.353664, 32.113972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111652, 35.207130, 32.178009>,  <31.331638, 35.119209, 32.216431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111652, 35.207130, 32.178009>,  <30.745010, 35.353664, 32.113972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111652, 35.207130, 32.178009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002255, -0.405172, -0.914238,
		0.399786, 0.837634, -0.372209,
		0.916606, -0.366339, 0.160093,
		31.386635, 35.097229, 32.226036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177938, 35.519920, 31.519951>,  <30.745010, 35.353664, 32.113972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177938, 35.519920, 31.519951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316568, 35.188705, 31.696241>,  <31.399746, 34.989975, 31.802015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316568, 35.188705, 31.696241>,  <31.177938, 35.519920, 31.519951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316568, 35.188705, 31.696241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014506, -0.465062, -0.885159,
		0.937909, 0.313169, -0.149168,
		0.346577, -0.828036, 0.440728,
		31.420542, 34.940296, 31.828461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751707, 35.388451, 31.084200>,  <31.177938, 35.519920, 31.519951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751707, 35.388451, 31.084200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677485, 35.054863, 31.292070>,  <31.632950, 34.854710, 31.416794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677485, 35.054863, 31.292070>,  <31.751707, 35.388451, 31.084200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677485, 35.054863, 31.292070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096083, -0.541726, -0.835045,
		0.977925, -0.105017, 0.180651,
		-0.185557, -0.833969, 0.519677,
		31.621817, 34.804672, 31.447973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212574, 34.937160, 30.721817>,  <31.751707, 35.388451, 31.084200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212574, 34.937160, 30.721817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953922, 34.720345, 30.936504>,  <31.798731, 34.590256, 31.065317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953922, 34.720345, 30.936504>,  <32.212574, 34.937160, 30.721817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953922, 34.720345, 30.936504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000181, -0.703720, -0.710478,
		0.762804, -0.459319, 0.455144,
		-0.646630, -0.542037, 0.536717,
		31.759933, 34.557732, 31.097519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522675, 34.292870, 30.776871>,  <32.212574, 34.937160, 30.721817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522675, 34.292870, 30.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126637, 34.250690, 30.813965>,  <31.889015, 34.225384, 30.836222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126637, 34.250690, 30.813965>,  <32.522675, 34.292870, 30.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126637, 34.250690, 30.813965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025389, -0.515103, -0.856752,
		0.138108, -0.850618, 0.507322,
		-0.990092, -0.105444, 0.092736,
		31.829609, 34.219059, 30.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331501, 33.504124, 30.632322>,  <32.522675, 34.292870, 30.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331501, 33.504124, 30.632322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000820, 33.722866, 30.579391>,  <31.802410, 33.854111, 30.547634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000820, 33.722866, 30.579391>,  <32.331501, 33.504124, 30.632322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000820, 33.722866, 30.579391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077003, -0.342946, -0.936194,
		-0.557342, -0.763766, 0.325624,
		-0.826704, 0.546854, -0.132326,
		31.752810, 33.886921, 30.539694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003052, 33.162468, 30.226538>,  <32.331501, 33.504124, 30.632322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003052, 33.162468, 30.226538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745625, 33.468437, 30.215801>,  <31.591169, 33.652020, 30.209360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745625, 33.468437, 30.215801>,  <32.003052, 33.162468, 30.226538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745625, 33.468437, 30.215801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107576, -0.125115, -0.986293,
		-0.757793, -0.631857, 0.162807,
		-0.643566, 0.764920, -0.026839,
		31.552555, 33.697914, 30.207750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354742, 32.849781, 29.873148>,  <32.003052, 33.162468, 30.226538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354742, 32.849781, 29.873148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372307, 33.247334, 29.832609>,  <31.382845, 33.485867, 29.808287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372307, 33.247334, 29.832609>,  <31.354742, 32.849781, 29.873148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372307, 33.247334, 29.832609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393464, -0.076041, -0.916190,
		-0.918291, 0.080108, 0.387718,
		0.043911, 0.993882, -0.101347,
		31.385481, 33.545498, 29.802204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776005, 33.058006, 29.492353>,  <31.354742, 32.849781, 29.873148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776005, 33.058006, 29.492353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015415, 33.376305, 29.455372>,  <31.159061, 33.567284, 29.433182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015415, 33.376305, 29.455372>,  <30.776005, 33.058006, 29.492353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015415, 33.376305, 29.455372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211202, 0.045413, -0.976387,
		-0.772761, 0.603921, 0.195245,
		0.598527, 0.795750, -0.092456,
		31.194973, 33.615028, 29.427635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455805, 33.541294, 29.086489>,  <30.776005, 33.058006, 29.492353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455805, 33.541294, 29.086489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837763, 33.651291, 29.041666>,  <31.066936, 33.717289, 29.014772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837763, 33.651291, 29.041666>,  <30.455805, 33.541294, 29.086489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837763, 33.651291, 29.041666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158511, 0.152939, -0.975441,
		-0.251105, 0.949203, 0.189630,
		0.954893, 0.274996, -0.112055,
		31.124231, 33.733791, 29.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373951, 34.076847, 28.692720>,  <30.455805, 33.541294, 29.086489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373951, 34.076847, 28.692720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746096, 33.937943, 28.645658>,  <30.969381, 33.854599, 28.617422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746096, 33.937943, 28.645658>,  <30.373951, 34.076847, 28.692720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746096, 33.937943, 28.645658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092974, 0.086964, -0.991864,
		0.354664, 0.933729, 0.048622,
		0.930360, -0.347257, -0.117655,
		31.025204, 33.833767, 28.610361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752258, 34.589832, 28.262085>,  <30.373951, 34.076847, 28.692720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752258, 34.589832, 28.262085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935658, 34.237808, 28.212654>,  <31.045696, 34.026592, 28.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935658, 34.237808, 28.212654>,  <30.752258, 34.589832, 28.262085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935658, 34.237808, 28.212654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179949, 0.228111, -0.956861,
		0.870287, 0.416480, 0.262954,
		0.458497, -0.880062, -0.123577,
		31.073206, 33.973789, 28.175581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296587, 34.799374, 27.754049>,  <30.752258, 34.589832, 28.262085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296587, 34.799374, 27.754049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303774, 34.399929, 27.773859>,  <31.308086, 34.160263, 27.785746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303774, 34.399929, 27.773859>,  <31.296587, 34.799374, 27.754049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303774, 34.399929, 27.773859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295263, -0.042025, -0.954491,
		0.955247, 0.031773, 0.294098,
		0.017968, -0.998611, 0.049525,
		31.309164, 34.100346, 27.788717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731447, 34.636703, 27.182035>,  <31.296587, 34.799374, 27.754049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731447, 34.636703, 27.182035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538162, 34.297054, 27.267351>,  <31.422192, 34.093266, 27.318541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538162, 34.297054, 27.267351>,  <31.731447, 34.636703, 27.182035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538162, 34.297054, 27.267351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071925, -0.281296, -0.956922,
		0.872544, -0.447055, 0.196999,
		-0.483211, -0.849126, 0.213289,
		31.393198, 34.042316, 27.331337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112083, 34.166531, 26.824369>,  <31.731447, 34.636703, 27.182035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112083, 34.166531, 26.824369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751499, 33.999405, 26.869633>,  <31.535149, 33.899128, 26.896791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751499, 33.999405, 26.869633>,  <32.112083, 34.166531, 26.824369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751499, 33.999405, 26.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028583, -0.318301, -0.947559,
		0.431924, -0.850949, 0.298877,
		-0.901457, -0.417816, 0.113159,
		31.481062, 33.874062, 26.903580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141151, 33.498234, 26.438280>,  <32.112083, 34.166531, 26.824369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141151, 33.498234, 26.438280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754385, 33.595585, 26.468870>,  <31.522326, 33.653996, 26.487225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754385, 33.595585, 26.468870>,  <32.141151, 33.498234, 26.438280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754385, 33.595585, 26.468870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126892, -0.198758, -0.971799,
		-0.221326, -0.949345, 0.223065,
		-0.966909, 0.243389, 0.076474,
		31.464312, 33.668598, 26.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817650, 33.013828, 26.064085>,  <32.141151, 33.498234, 26.438280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817650, 33.013828, 26.064085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537449, 33.298943, 26.078178>,  <31.369329, 33.470009, 26.086634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537449, 33.298943, 26.078178>,  <31.817650, 33.013828, 26.064085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537449, 33.298943, 26.078178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190850, -0.139533, -0.971652,
		-0.687659, -0.687366, 0.233777,
		-0.700501, 0.712782, 0.035232,
		31.327299, 33.512775, 26.088749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397812, 32.781677, 25.618835>,  <31.817650, 33.013828, 26.064085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397812, 32.781677, 25.618835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280199, 33.162529, 25.652271>,  <31.209631, 33.391041, 25.672333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280199, 33.162529, 25.652271>,  <31.397812, 32.781677, 25.618835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280199, 33.162529, 25.652271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295060, -0.007239, -0.955451,
		-0.909111, -0.305599, 0.283065,
		-0.294034, 0.952133, 0.083589,
		31.191988, 33.448170, 25.677347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738678, 32.854301, 25.276886>,  <31.397812, 32.781677, 25.618835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738678, 32.854301, 25.276886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874846, 33.230412, 25.277626>,  <30.956545, 33.456078, 25.278070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874846, 33.230412, 25.277626>,  <30.738678, 32.854301, 25.276886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874846, 33.230412, 25.277626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176772, 0.065930, -0.982041,
		-0.923508, 0.333978, 0.188658,
		0.340418, 0.940272, 0.001849,
		30.976971, 33.512493, 25.278181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237789, 33.279995, 24.928976>,  <30.738678, 32.854301, 25.276886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237789, 33.279995, 24.928976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601679, 33.445240, 24.912298>,  <30.820013, 33.544388, 24.902290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601679, 33.445240, 24.912298>,  <30.237789, 33.279995, 24.928976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601679, 33.445240, 24.912298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075717, 0.066320, -0.994921,
		-0.408253, 0.908260, 0.091612,
		0.909723, 0.413116, -0.041696,
		30.874596, 33.569176, 24.899790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180529, 33.841557, 24.547411>,  <30.237789, 33.279995, 24.928976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180529, 33.841557, 24.547411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578043, 33.797039, 24.548161>,  <30.816551, 33.770329, 24.548611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578043, 33.797039, 24.548161>,  <30.180529, 33.841557, 24.547411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578043, 33.797039, 24.548161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017472, 0.139363, -0.990087,
		0.109929, 0.983968, 0.140441,
		0.993786, -0.111293, 0.001872,
		30.876179, 33.763653, 24.548721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444328, 34.549576, 24.347954>,  <30.180529, 33.841557, 24.547411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444328, 34.549576, 24.347954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707535, 34.258305, 24.271252>,  <30.865459, 34.083542, 24.225231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707535, 34.258305, 24.271252>,  <30.444328, 34.549576, 24.347954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707535, 34.258305, 24.271252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033021, 0.282312, -0.958754,
		0.752277, 0.624546, 0.209812,
		0.658018, -0.728177, -0.191753,
		30.904940, 34.039852, 24.213726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855652, 34.857643, 23.902687>,  <30.444328, 34.549576, 24.347954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855652, 34.857643, 23.902687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943455, 34.469669, 23.860651>,  <30.996136, 34.236885, 23.835430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943455, 34.469669, 23.860651>,  <30.855652, 34.857643, 23.902687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943455, 34.469669, 23.860651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044184, 0.117489, -0.992091,
		0.974610, 0.213127, 0.068645,
		0.219507, -0.969934, -0.105090,
		31.009306, 34.178688, 23.829124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375072, 34.855152, 23.477407>,  <30.855652, 34.857643, 23.902687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375072, 34.855152, 23.477407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222500, 34.487167, 23.441216>,  <31.130957, 34.266376, 23.419500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222500, 34.487167, 23.441216>,  <31.375072, 34.855152, 23.477407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222500, 34.487167, 23.441216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092832, 0.135508, -0.986418,
		0.919724, -0.367850, -0.137089,
		-0.381430, -0.919959, -0.090481,
		31.108070, 34.211178, 23.414072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678770, 34.573227, 22.813745>,  <31.375072, 34.855152, 23.477407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678770, 34.573227, 22.813745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358320, 34.340828, 22.871218>,  <31.166050, 34.201389, 22.905701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358320, 34.340828, 22.871218>,  <31.678770, 34.573227, 22.813745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358320, 34.340828, 22.871218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144664, -0.044973, -0.988458,
		0.580753, -0.812662, -0.048021,
		-0.801123, -0.580997, 0.143681,
		31.117983, 34.166531, 22.914322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739414, 33.907433, 22.494875>,  <31.678770, 34.573227, 22.813745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739414, 33.907433, 22.494875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346327, 33.975040, 22.525061>,  <31.110474, 34.015606, 22.543173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346327, 33.975040, 22.525061>,  <31.739414, 33.907433, 22.494875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346327, 33.975040, 22.525061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098438, -0.131944, -0.986357,
		-0.156759, -0.976740, 0.146302,
		-0.982718, 0.169022, 0.075465,
		31.051512, 34.025745, 22.547701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413282, 33.507393, 21.999788>,  <31.739414, 33.907433, 22.494875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413282, 33.507393, 21.999788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096317, 33.734924, 22.087891>,  <30.906137, 33.871445, 22.140753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096317, 33.734924, 22.087891>,  <31.413282, 33.507393, 21.999788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096317, 33.734924, 22.087891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193092, 0.108599, -0.975152,
		-0.578615, -0.815254, 0.023781,
		-0.792414, 0.568830, 0.220256,
		30.858593, 33.905575, 22.153967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917326, 33.330448, 21.588541>,  <31.413282, 33.507393, 21.999788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917326, 33.330448, 21.588541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813179, 33.707497, 21.672132>,  <30.750690, 33.933727, 21.722288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813179, 33.707497, 21.672132>,  <30.917326, 33.330448, 21.588541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813179, 33.707497, 21.672132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147976, 0.174929, -0.973398,
		-0.954103, -0.284363, 0.093940,
		-0.260365, 0.942623, 0.208979,
		30.735069, 33.990284, 21.734827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434004, 33.425972, 21.056746>,  <30.917326, 33.330448, 21.588541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434004, 33.425972, 21.056746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515165, 33.796734, 21.183037>,  <30.563862, 34.019192, 21.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515165, 33.796734, 21.183037>,  <30.434004, 33.425972, 21.056746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515165, 33.796734, 21.183037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067878, 0.308347, -0.948849,
		-0.976843, 0.213955, -0.000352,
		0.202903, 0.926901, 0.315729,
		30.576036, 34.074802, 21.277756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999359, 33.909809, 20.635475>,  <30.434004, 33.425972, 21.056746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999359, 33.909809, 20.635475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293709, 34.135925, 20.784571>,  <30.470320, 34.271595, 20.874027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293709, 34.135925, 20.784571>,  <29.999359, 33.909809, 20.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293709, 34.135925, 20.784571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052042, 0.501634, -0.863513,
		-0.675114, 0.654836, 0.339721,
		0.735875, 0.565290, 0.372740,
		30.514471, 34.305511, 20.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782278, 34.622299, 20.553787>,  <29.999359, 33.909809, 20.635475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782278, 34.622299, 20.553787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181986, 34.607861, 20.558756>,  <30.421810, 34.599197, 20.561737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181986, 34.607861, 20.558756>,  <29.782278, 34.622299, 20.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181986, 34.607861, 20.558756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032676, 0.640596, -0.767183,
		0.019732, 0.767030, 0.641308,
		0.999271, -0.036093, 0.012423,
		30.481768, 34.597034, 20.562483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049879, 35.265892, 20.445089>,  <29.782278, 34.622299, 20.553787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049879, 35.265892, 20.445089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368744, 35.046726, 20.343643>,  <30.560062, 34.915226, 20.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368744, 35.046726, 20.343643>,  <30.049879, 35.265892, 20.445089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368744, 35.046726, 20.343643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087835, 0.520829, -0.849130,
		0.597341, 0.654618, 0.463312,
		0.797163, -0.547915, -0.253615,
		30.607893, 34.882351, 20.267559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612440, 35.792175, 20.222153>,  <30.049879, 35.265892, 20.445089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612440, 35.792175, 20.222153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729977, 35.438042, 20.078024>,  <30.800499, 35.225559, 19.991547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729977, 35.438042, 20.078024>,  <30.612440, 35.792175, 20.222153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729977, 35.438042, 20.078024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116884, 0.407417, -0.905731,
		0.948681, 0.224026, 0.223198,
		0.293842, -0.885338, -0.360324,
		30.818129, 35.172440, 19.969927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136482, 35.943577, 19.866238>,  <30.612440, 35.792175, 20.222153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136482, 35.943577, 19.866238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023249, 35.599072, 19.697432>,  <30.955309, 35.392368, 19.596148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023249, 35.599072, 19.697432>,  <31.136482, 35.943577, 19.866238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023249, 35.599072, 19.697432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145640, 0.396307, -0.906493,
		0.947972, -0.318077, 0.013245,
		-0.283086, -0.861259, -0.422013,
		30.938322, 35.340694, 19.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581186, 35.888451, 19.295589>,  <31.136482, 35.943577, 19.866238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581186, 35.888451, 19.295589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261967, 35.657696, 19.225941>,  <31.070435, 35.519241, 19.184151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261967, 35.657696, 19.225941>,  <31.581186, 35.888451, 19.295589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261967, 35.657696, 19.225941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107985, 0.421191, -0.900521,
		0.592838, -0.699857, -0.398426,
		-0.798049, -0.576887, -0.174123,
		31.022552, 35.484631, 19.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667532, 35.707237, 18.592489>,  <31.581186, 35.888451, 19.295589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667532, 35.707237, 18.592489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284466, 35.626842, 18.674931>,  <31.054626, 35.578606, 18.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284466, 35.626842, 18.674931>,  <31.667532, 35.707237, 18.592489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284466, 35.626842, 18.674931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275467, 0.431824, -0.858863,
		0.083619, -0.879279, -0.468909,
		-0.957667, -0.200986, 0.206104,
		30.997166, 35.566547, 18.736761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482878, 35.318417, 18.025375>,  <31.667532, 35.707237, 18.592489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482878, 35.318417, 18.025375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149483, 35.467010, 18.188984>,  <30.949446, 35.556168, 18.287149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149483, 35.467010, 18.188984>,  <31.482878, 35.318417, 18.025375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149483, 35.467010, 18.188984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327675, 0.263716, -0.907239,
		-0.444894, -0.890197, -0.098076,
		-0.833486, 0.371488, 0.409021,
		30.899437, 35.578457, 18.311689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948513, 34.985706, 17.624199>,  <31.482878, 35.318417, 18.025375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948513, 34.985706, 17.624199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778116, 35.295601, 17.811096>,  <30.675879, 35.481537, 17.923235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778116, 35.295601, 17.811096>,  <30.948513, 34.985706, 17.624199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778116, 35.295601, 17.811096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601831, 0.142952, -0.785725,
		-0.675522, -0.615914, 0.405364,
		-0.425992, 0.774735, 0.467244,
		30.650318, 35.528023, 17.951269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241030, 34.951244, 17.423851>,  <30.948513, 34.985706, 17.624199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241030, 34.951244, 17.423851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265108, 35.318783, 17.579847>,  <30.279556, 35.539307, 17.673445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265108, 35.318783, 17.579847>,  <30.241030, 34.951244, 17.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265108, 35.318783, 17.579847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654386, 0.331356, -0.679693,
		-0.753761, -0.214288, 0.621229,
		0.060198, 0.918849, 0.389990,
		30.283167, 35.594437, 17.696844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570736, 35.233120, 17.728899>,  <30.241030, 34.951244, 17.423851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570736, 35.233120, 17.728899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812395, 35.522453, 17.595160>,  <29.957390, 35.696053, 17.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812395, 35.522453, 17.595160>,  <29.570736, 35.233120, 17.728899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812395, 35.522453, 17.595160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681725, 0.251894, -0.686877,
		-0.412623, 0.642910, 0.645298,
		0.604147, 0.723337, -0.334351,
		29.993639, 35.739456, 17.494854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050304, 35.718906, 17.669991>,  <29.570736, 35.233120, 17.728899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050304, 35.718906, 17.669991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374168, 35.819542, 17.457895>,  <29.568487, 35.879925, 17.330639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374168, 35.819542, 17.457895>,  <29.050304, 35.718906, 17.669991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374168, 35.819542, 17.457895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586646, 0.373434, -0.718605,
		0.017215, 0.892888, 0.449949,
		0.809660, 0.251591, -0.530238,
		29.617067, 35.895020, 17.298824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020662, 36.444893, 17.626656>,  <29.050304, 35.718906, 17.669991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020662, 36.444893, 17.626656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190222, 36.259209, 17.315575>,  <29.291958, 36.147800, 17.128927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190222, 36.259209, 17.315575>,  <29.020662, 36.444893, 17.626656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190222, 36.259209, 17.315575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646954, 0.445728, -0.618690,
		0.633844, 0.765400, -0.111377,
		0.423901, -0.464209, -0.777700,
		29.317392, 36.119946, 17.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396513, 36.866039, 17.114008>,  <29.020662, 36.444893, 17.626656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396513, 36.866039, 17.114008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169504, 36.568050, 16.973755>,  <29.033298, 36.389259, 16.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169504, 36.568050, 16.973755>,  <29.396513, 36.866039, 17.114008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169504, 36.568050, 16.973755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643623, 0.666980, -0.375350,
		0.513489, 0.012657, -0.858003,
		-0.567520, -0.744969, -0.350633,
		28.999249, 36.344559, 16.868565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717518, 37.121506, 16.431118>,  <29.396513, 36.866039, 17.114008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717518, 37.121506, 16.431118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846453, 37.470032, 16.579121>,  <29.923815, 37.679146, 16.667923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846453, 37.470032, 16.579121>,  <29.717518, 37.121506, 16.431118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846453, 37.470032, 16.579121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939491, 0.246566, 0.237827,
		0.115990, -0.424282, 0.898071,
		0.322339, 0.871315, 0.370010,
		29.943155, 37.731426, 16.690123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375023, 36.761753, 16.306984>,  <29.717518, 37.121506, 16.431118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375023, 36.761753, 16.306984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655634, 36.988880, 16.479239>,  <30.824001, 37.125156, 16.582590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655634, 36.988880, 16.479239>,  <30.375023, 36.761753, 16.306984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655634, 36.988880, 16.479239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489748, -0.823106, 0.287480,
		0.517693, 0.009227, -0.855517,
		0.701528, 0.567814, 0.430635,
		30.866093, 37.159225, 16.608429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429565, 37.031937, 17.041502>,  <30.375023, 36.761753, 16.306984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429565, 37.031937, 17.041502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463438, 37.281437, 16.730694>,  <30.483761, 37.431137, 16.544209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463438, 37.281437, 16.730694>,  <30.429565, 37.031937, 17.041502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463438, 37.281437, 16.730694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139732, 0.764683, 0.629074,
		0.986562, -0.161845, -0.022405,
		0.084680, 0.623751, -0.777022,
		30.488842, 37.468563, 16.497587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151857, 37.322388, 17.179844>,  <30.429565, 37.031937, 17.041502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151857, 37.322388, 17.179844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888115, 37.555767, 16.990175>,  <30.729870, 37.695793, 16.876373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888115, 37.555767, 16.990175>,  <31.151857, 37.322388, 17.179844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888115, 37.555767, 16.990175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089346, 0.565412, 0.819955,
		0.746503, 0.583007, -0.320679,
		-0.659356, 0.583448, -0.474171,
		30.690308, 37.730801, 16.847923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385117, 38.001987, 17.340597>,  <31.151857, 37.322388, 17.179844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385117, 38.001987, 17.340597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997669, 37.971039, 17.246119>,  <30.765200, 37.952469, 17.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997669, 37.971039, 17.246119>,  <31.385117, 38.001987, 17.340597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997669, 37.971039, 17.246119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231287, 0.628555, 0.742580,
		0.091007, 0.773907, -0.626726,
		-0.968620, -0.077373, -0.236198,
		30.707083, 37.947826, 17.175259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065216, 38.743134, 17.463650>,  <31.385117, 38.001987, 17.340597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065216, 38.743134, 17.463650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842543, 38.410961, 17.472544>,  <30.708939, 38.211658, 17.477880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842543, 38.410961, 17.472544>,  <31.065216, 38.743134, 17.463650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842543, 38.410961, 17.472544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141414, 0.121103, 0.982515,
		-0.818599, 0.543806, -0.184851,
		-0.556684, -0.830427, 0.022233,
		30.675537, 38.161835, 17.479214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521238, 38.857677, 17.874756>,  <31.065216, 38.743134, 17.463650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521238, 38.857677, 17.874756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614950, 38.469166, 17.858126>,  <30.671177, 38.236057, 17.848148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614950, 38.469166, 17.858126>,  <30.521238, 38.857677, 17.874756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614950, 38.469166, 17.858126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109092, -0.068761, 0.991651,
		-0.966029, -0.227789, -0.122068,
		0.234280, -0.971280, -0.041575,
		30.685234, 38.177780, 17.845654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089993, 38.556259, 18.326796>,  <30.521238, 38.857677, 17.874756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089993, 38.556259, 18.326796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407207, 38.319614, 18.268705>,  <30.597536, 38.177628, 18.233850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407207, 38.319614, 18.268705>,  <30.089993, 38.556259, 18.326796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407207, 38.319614, 18.268705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004549, -0.244141, 0.969729,
		-0.609158, -0.768370, -0.196304,
		0.793036, -0.591611, -0.145225,
		30.645119, 38.142132, 18.225138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009254, 38.022732, 18.817064>,  <30.089993, 38.556259, 18.326796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009254, 38.022732, 18.817064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389345, 37.963028, 18.707674>,  <30.617399, 37.927204, 18.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389345, 37.963028, 18.707674>,  <30.009254, 38.022732, 18.817064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389345, 37.963028, 18.707674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254488, -0.134526, 0.957674,
		-0.179735, -0.979604, -0.089844,
		0.950227, -0.149263, -0.273476,
		30.674414, 37.918251, 18.625631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121384, 37.450615, 19.092823>,  <30.009254, 38.022732, 18.817064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121384, 37.450615, 19.092823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483482, 37.612652, 19.041550>,  <30.700741, 37.709873, 19.010786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483482, 37.612652, 19.041550>,  <30.121384, 37.450615, 19.092823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483482, 37.612652, 19.041550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210812, -0.166278, 0.963281,
		0.368903, -0.899028, -0.235921,
		0.905245, 0.405092, -0.128186,
		30.755056, 37.734180, 19.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662363, 36.923615, 19.370808>,  <30.121384, 37.450615, 19.092823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662363, 36.923615, 19.370808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823204, 37.289730, 19.361298>,  <30.919708, 37.509399, 19.355593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823204, 37.289730, 19.361298>,  <30.662363, 36.923615, 19.370808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823204, 37.289730, 19.361298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432452, -0.166971, 0.886062,
		0.807030, -0.366570, -0.462957,
		0.402104, 0.915285, -0.023773,
		30.943836, 37.564316, 19.354166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476265, 36.890312, 19.419054>,  <30.662363, 36.923615, 19.370808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476265, 36.890312, 19.419054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350031, 37.243355, 19.558435>,  <31.274290, 37.455181, 19.642063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350031, 37.243355, 19.558435>,  <31.476265, 36.890312, 19.419054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350031, 37.243355, 19.558435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525218, -0.143362, 0.838804,
		0.790285, 0.447728, -0.418316,
		-0.315586, 0.882602, 0.348453,
		31.255356, 37.508137, 19.662971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972857, 37.127716, 19.789133>,  <31.476265, 36.890312, 19.419054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972857, 37.127716, 19.789133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712601, 37.402225, 19.919178>,  <31.556446, 37.566929, 19.997206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712601, 37.402225, 19.919178>,  <31.972857, 37.127716, 19.789133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712601, 37.402225, 19.919178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516855, 0.086543, 0.851687,
		0.556351, 0.722180, -0.411011,
		-0.650641, 0.686270, 0.325114,
		31.517408, 37.608109, 20.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384865, 37.662907, 20.141901>,  <31.972857, 37.127716, 19.789133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384865, 37.662907, 20.141901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014576, 37.684837, 20.291586>,  <31.792402, 37.697998, 20.381397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014576, 37.684837, 20.291586>,  <32.384865, 37.662907, 20.141901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014576, 37.684837, 20.291586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376175, 0.031007, 0.926030,
		0.039170, 0.998014, -0.049329,
		-0.925720, 0.054829, 0.374213,
		31.736860, 37.701286, 20.403851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458672, 38.232895, 20.592157>,  <32.384865, 37.662907, 20.141901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458672, 38.232895, 20.592157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140198, 38.020123, 20.707489>,  <31.949112, 37.892460, 20.776688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140198, 38.020123, 20.707489>,  <32.458672, 38.232895, 20.592157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140198, 38.020123, 20.707489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341174, -0.001148, 0.940000,
		-0.499686, 0.846786, 0.182396,
		-0.796188, -0.531933, 0.288327,
		31.901342, 37.860542, 20.793987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414848, 38.439220, 21.289705>,  <32.458672, 38.232895, 20.592157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414848, 38.439220, 21.289705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168251, 38.124573, 21.276102>,  <32.020290, 37.935783, 21.267941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168251, 38.124573, 21.276102>,  <32.414848, 38.439220, 21.289705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168251, 38.124573, 21.276102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035574, -0.015319, 0.999250,
		-0.786554, 0.617244, -0.018539,
		-0.616497, -0.786623, -0.034007,
		31.983301, 37.888584, 21.265900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817898, 38.592590, 21.651274>,  <32.414848, 38.439220, 21.289705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817898, 38.592590, 21.651274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871897, 38.196339, 21.643013>,  <31.904297, 37.958588, 21.638056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871897, 38.196339, 21.643013>,  <31.817898, 38.592590, 21.651274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871897, 38.196339, 21.643013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097052, -0.033964, 0.994700,
		-0.986081, -0.132278, -0.100728,
		0.134998, -0.990631, -0.020654,
		31.912395, 37.899151, 21.636816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336926, 38.369072, 22.058718>,  <31.817898, 38.592590, 21.651274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336926, 38.369072, 22.058718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593239, 38.062790, 22.036470>,  <31.747026, 37.879021, 22.023123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593239, 38.062790, 22.036470>,  <31.336926, 38.369072, 22.058718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593239, 38.062790, 22.036470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197187, -0.234164, 0.951990,
		-0.741966, -0.599052, -0.301035,
		0.640783, -0.765704, -0.055617,
		31.785475, 37.833080, 22.019785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999409, 37.858028, 22.422819>,  <31.336926, 38.369072, 22.058718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999409, 37.858028, 22.422819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377144, 37.728458, 22.399836>,  <31.603785, 37.650719, 22.386045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377144, 37.728458, 22.399836>,  <30.999409, 37.858028, 22.422819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377144, 37.728458, 22.399836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034312, -0.270686, 0.962056,
		-0.327188, -0.906533, -0.266733,
		0.944336, -0.323925, -0.057460,
		31.660444, 37.631283, 22.382597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044407, 37.244057, 22.741028>,  <30.999409, 37.858028, 22.422819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044407, 37.244057, 22.741028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423735, 37.370258, 22.754574>,  <31.651331, 37.445980, 22.762701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423735, 37.370258, 22.754574>,  <31.044407, 37.244057, 22.741028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423735, 37.370258, 22.754574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062148, -0.289327, 0.955211,
		0.311167, -0.903742, -0.293982,
		0.948321, 0.315501, 0.033864,
		31.708231, 37.464909, 22.764732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408916, 36.656277, 22.983738>,  <31.044407, 37.244057, 22.741028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408916, 36.656277, 22.983738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635141, 36.979458, 23.049887>,  <31.770876, 37.173367, 23.089575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635141, 36.979458, 23.049887>,  <31.408916, 36.656277, 22.983738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635141, 36.979458, 23.049887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056505, -0.162086, 0.985157,
		0.822766, -0.566514, -0.046017,
		0.565564, 0.807954, 0.165370,
		31.804810, 37.221844, 23.099497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871906, 36.448673, 23.507027>,  <31.408916, 36.656277, 22.983738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871906, 36.448673, 23.507027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886055, 36.848358, 23.514153>,  <31.894545, 37.088169, 23.518429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886055, 36.848358, 23.514153>,  <31.871906, 36.448673, 23.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886055, 36.848358, 23.514153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101268, -0.014152, 0.994759,
		0.994230, -0.036991, 0.100688,
		0.035372, 0.999215, 0.017816,
		31.896667, 37.148125, 23.519497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349491, 36.663570, 24.015726>,  <31.871906, 36.448673, 23.507027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349491, 36.663570, 24.015726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084053, 36.957912, 23.961824>,  <31.924791, 37.134518, 23.929483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084053, 36.957912, 23.961824>,  <32.349491, 36.663570, 24.015726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084053, 36.957912, 23.961824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075787, 0.113079, 0.990691,
		0.744245, 0.667628, -0.019270,
		-0.663593, 0.735857, -0.134756,
		31.884975, 37.178669, 23.921398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606350, 37.264408, 24.366285>,  <32.349491, 36.663570, 24.015726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606350, 37.264408, 24.366285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216763, 37.349884, 24.336008>,  <31.983011, 37.401169, 24.317841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216763, 37.349884, 24.336008>,  <32.606350, 37.264408, 24.366285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216763, 37.349884, 24.336008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087268, -0.045248, 0.995157,
		0.209228, 0.975853, 0.062718,
		-0.973965, 0.213688, -0.075694,
		31.924574, 37.413990, 24.313299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495701, 37.519592, 25.000694>,  <32.606350, 37.264408, 24.366285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495701, 37.519592, 25.000694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122185, 37.484970, 24.861818>,  <31.898075, 37.464195, 24.778494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122185, 37.484970, 24.861818>,  <32.495701, 37.519592, 25.000694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122185, 37.484970, 24.861818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356239, 0.133919, 0.924748,
		-0.033546, 0.987205, -0.155887,
		-0.933792, -0.086555, -0.347189,
		31.842047, 37.459003, 24.757662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130169, 38.098301, 25.215597>,  <32.495701, 37.519592, 25.000694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130169, 38.098301, 25.215597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840942, 37.834400, 25.133726>,  <31.667406, 37.676060, 25.084604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840942, 37.834400, 25.133726>,  <32.130169, 38.098301, 25.215597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840942, 37.834400, 25.133726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432739, 0.201676, 0.878672,
		-0.538430, 0.723912, -0.431328,
		-0.723069, -0.659756, -0.204676,
		31.624022, 37.636475, 25.072323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578003, 38.486351, 25.456104>,  <32.130169, 38.098301, 25.215597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578003, 38.486351, 25.456104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447815, 38.111435, 25.406221>,  <31.369701, 37.886486, 25.376291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447815, 38.111435, 25.406221>,  <31.578003, 38.486351, 25.456104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447815, 38.111435, 25.406221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676532, 0.138698, 0.723234,
		-0.660585, 0.319760, -0.679251,
		-0.325472, -0.937292, -0.124706,
		31.350174, 37.830246, 25.368809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811291, 38.358349, 25.595350>,  <31.578003, 38.486351, 25.456104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811291, 38.358349, 25.595350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929619, 37.976513, 25.609505>,  <31.000616, 37.747414, 25.617996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929619, 37.976513, 25.609505>,  <30.811291, 38.358349, 25.595350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929619, 37.976513, 25.609505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238059, -0.037798, 0.970515,
		-0.925104, -0.295522, -0.238430,
		0.295820, -0.954588, 0.035384,
		31.018366, 37.690136, 25.620119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296886, 37.923119, 25.979469>,  <30.811291, 38.358349, 25.595350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296886, 37.923119, 25.979469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624151, 37.693386, 25.990429>,  <30.820511, 37.555546, 25.997004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624151, 37.693386, 25.990429>,  <30.296886, 37.923119, 25.979469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624151, 37.693386, 25.990429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174540, -0.202675, 0.963566,
		-0.547857, -0.793134, -0.266065,
		0.818162, -0.574335, 0.027397,
		30.869600, 37.521088, 25.998648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086306, 37.307255, 26.322472>,  <30.296886, 37.923119, 25.979469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086306, 37.307255, 26.322472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484821, 37.308289, 26.356886>,  <30.723930, 37.308910, 26.377535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484821, 37.308289, 26.356886>,  <30.086306, 37.307255, 26.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484821, 37.308289, 26.356886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084983, -0.129231, 0.987966,
		0.013674, -0.991611, -0.128531,
		0.996289, 0.002586, 0.086038,
		30.783709, 37.309063, 26.382698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326122, 36.715683, 26.735369>,  <30.086306, 37.307255, 26.322472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326122, 36.715683, 26.735369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624878, 36.980381, 26.761446>,  <30.804132, 37.139198, 26.777092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624878, 36.980381, 26.761446>,  <30.326122, 36.715683, 26.735369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624878, 36.980381, 26.761446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034377, -0.136337, 0.990066,
		0.664057, -0.737230, -0.124578,
		0.746891, 0.661743, 0.065192,
		30.848946, 37.178905, 26.781004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851042, 36.444195, 27.120087>,  <30.326122, 36.715683, 26.735369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851042, 36.444195, 27.120087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915337, 36.837864, 27.149908>,  <30.953915, 37.074066, 27.167801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915337, 36.837864, 27.149908>,  <30.851042, 36.444195, 27.120087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915337, 36.837864, 27.149908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069251, -0.086593, 0.993834,
		0.984565, -0.154584, -0.082074,
		0.160738, 0.984178, 0.074551,
		30.963558, 37.133118, 27.172274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505306, 36.490662, 27.371771>,  <30.851042, 36.444195, 27.120087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505306, 36.490662, 27.371771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304319, 36.827351, 27.450794>,  <31.183727, 37.029366, 27.498209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304319, 36.827351, 27.450794>,  <31.505306, 36.490662, 27.371771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304319, 36.827351, 27.450794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044969, -0.202749, 0.978198,
		0.863426, 0.500397, 0.064024,
		-0.502468, 0.841722, 0.197560,
		31.153580, 37.079868, 27.510063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936934, 36.771568, 27.863159>,  <31.505306, 36.490662, 27.371771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936934, 36.771568, 27.863159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596554, 36.975475, 27.913792>,  <31.392326, 37.097820, 27.944172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596554, 36.975475, 27.913792>,  <31.936934, 36.771568, 27.863159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596554, 36.975475, 27.913792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147687, 0.000944, 0.989034,
		0.504060, 0.860311, -0.076090,
		-0.850948, 0.509770, 0.126581,
		31.341269, 37.128407, 27.951765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112144, 37.335697, 28.343962>,  <31.936934, 36.771568, 27.863159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112144, 37.335697, 28.343962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712605, 37.332161, 28.362844>,  <31.472881, 37.330040, 28.374174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712605, 37.332161, 28.362844>,  <32.112144, 37.335697, 28.343962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712605, 37.332161, 28.362844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045509, 0.139831, 0.989129,
		-0.015341, 0.990136, -0.139267,
		-0.998846, -0.008836, 0.047205,
		31.412951, 37.329510, 28.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964817, 37.947884, 28.737894>,  <32.112144, 37.335697, 28.343962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964817, 37.947884, 28.737894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650845, 37.701561, 28.765223>,  <31.462461, 37.553768, 28.781620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650845, 37.701561, 28.765223>,  <31.964817, 37.947884, 28.737894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650845, 37.701561, 28.765223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031751, 0.150104, 0.988160,
		-0.618767, 0.773470, -0.137374,
		-0.784932, -0.615803, 0.068321,
		31.415365, 37.516819, 28.785719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422007, 38.354183, 29.093704>,  <31.964817, 37.947884, 28.737894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422007, 38.354183, 29.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350328, 37.962383, 29.130510>,  <31.307322, 37.727303, 29.152594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350328, 37.962383, 29.130510>,  <31.422007, 38.354183, 29.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350328, 37.962383, 29.130510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017957, 0.090255, 0.995757,
		-0.983650, 0.180088, 0.001415,
		-0.179196, -0.979501, 0.092013,
		31.296570, 37.668533, 29.158113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089024, 38.333897, 29.664944>,  <31.422007, 38.354183, 29.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089024, 38.333897, 29.664944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180161, 37.948559, 29.608290>,  <31.234842, 37.717358, 29.574297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180161, 37.948559, 29.608290>,  <31.089024, 38.333897, 29.664944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180161, 37.948559, 29.608290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137901, -0.175921, 0.974698,
		-0.963883, -0.202547, -0.172928,
		0.227843, -0.963341, -0.141636,
		31.248514, 37.659557, 29.565800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587124, 37.956268, 29.853437>,  <31.089024, 38.333897, 29.664944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587124, 37.956268, 29.853437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907446, 37.718246, 29.880625>,  <31.099640, 37.575436, 29.896936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907446, 37.718246, 29.880625>,  <30.587124, 37.956268, 29.853437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907446, 37.718246, 29.880625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085995, -0.001933, 0.996294,
		-0.592717, -0.803684, -0.052719,
		0.800807, -0.595053, 0.067967,
		31.147688, 37.539730, 29.901014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447632, 37.351536, 30.324423>,  <30.587124, 37.956268, 29.853437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447632, 37.351536, 30.324423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846035, 37.381477, 30.304949>,  <31.085077, 37.399441, 30.293264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846035, 37.381477, 30.304949>,  <30.447632, 37.351536, 30.324423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846035, 37.381477, 30.304949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057575, -0.121632, 0.990904,
		0.068250, -0.989749, -0.125456,
		0.996005, 0.074852, -0.048683,
		31.144836, 37.403934, 30.290344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685291, 36.980904, 30.840189>,  <30.447632, 37.351536, 30.324423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685291, 36.980904, 30.840189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029716, 37.169426, 30.763832>,  <31.236372, 37.282539, 30.718018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029716, 37.169426, 30.763832>,  <30.685291, 36.980904, 30.840189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029716, 37.169426, 30.763832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225119, -0.016714, 0.974188,
		0.455950, -0.881811, -0.120491,
		0.861064, 0.471306, -0.190892,
		31.288036, 37.310818, 30.706564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181053, 36.658646, 31.218309>,  <30.685291, 36.980904, 30.840189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181053, 36.658646, 31.218309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345959, 37.017925, 31.157280>,  <31.444902, 37.233494, 31.120663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345959, 37.017925, 31.157280>,  <31.181053, 36.658646, 31.218309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345959, 37.017925, 31.157280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244195, 0.052398, 0.968309,
		0.877729, -0.436456, -0.197734,
		0.412263, 0.898199, -0.152571,
		31.469637, 37.287384, 31.111509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642149, 36.796371, 31.739819>,  <31.181053, 36.658646, 31.218309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642149, 36.796371, 31.739819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664251, 37.173588, 31.608601>,  <31.677513, 37.399918, 31.529869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664251, 37.173588, 31.608601>,  <31.642149, 36.796371, 31.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664251, 37.173588, 31.608601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135606, 0.318415, 0.938202,
		0.989221, -0.096324, -0.110289,
		0.055254, 0.943045, -0.328045,
		31.680828, 37.456501, 31.510187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318691, 37.107700, 31.911972>,  <31.642149, 36.796371, 31.739819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318691, 37.107700, 31.911972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068329, 37.417648, 31.876610>,  <31.918112, 37.603619, 31.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068329, 37.417648, 31.876610>,  <32.318691, 37.107700, 31.911972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068329, 37.417648, 31.876610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131668, 0.216716, 0.967315,
		0.768702, 0.593809, -0.237670,
		-0.625907, 0.774871, -0.088404,
		31.880556, 37.650108, 31.850088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666241, 37.741928, 32.234962>,  <32.318691, 37.107700, 31.911972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666241, 37.741928, 32.234962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271221, 37.804756, 32.238430>,  <32.034210, 37.842453, 32.240509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271221, 37.804756, 32.238430>,  <32.666241, 37.741928, 32.234962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271221, 37.804756, 32.238430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056636, 0.303604, 0.951113,
		0.146761, 0.939762, -0.308720,
		-0.987549, 0.157071, 0.008667,
		31.974957, 37.851879, 32.241032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216469, 37.943302, 31.739759>,  <32.666241, 37.741928, 32.234962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216469, 37.943302, 31.739759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474678, 38.241505, 31.806114>,  <33.629604, 38.420425, 31.845926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474678, 38.241505, 31.806114>,  <33.216469, 37.943302, 31.739759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474678, 38.241505, 31.806114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073815, 0.155287, -0.985108,
		-0.760163, 0.648158, 0.045212,
		0.645526, 0.745505, 0.165887,
		33.668335, 38.465157, 31.855881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035740, 38.578091, 31.296478>,  <33.216469, 37.943302, 31.739759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035740, 38.578091, 31.296478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430111, 38.575283, 31.363289>,  <33.666733, 38.573597, 31.403376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430111, 38.575283, 31.363289>,  <33.035740, 38.578091, 31.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430111, 38.575283, 31.363289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166610, 0.123237, -0.978291,
		-0.013714, 0.992352, 0.122673,
		0.985927, -0.007022, 0.167026,
		33.725887, 38.573177, 31.413397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294567, 39.201462, 30.923109>,  <33.035740, 38.578091, 31.296478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294567, 39.201462, 30.923109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623837, 38.982224, 30.982418>,  <33.821396, 38.850681, 31.018003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623837, 38.982224, 30.982418>,  <33.294567, 39.201462, 30.923109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623837, 38.982224, 30.982418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305104, 0.206747, -0.929606,
		0.478857, 0.810462, 0.337413,
		0.823169, -0.548095, 0.148273,
		33.870789, 38.817795, 31.026899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916191, 39.606247, 30.714979>,  <33.294567, 39.201462, 30.923109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916191, 39.606247, 30.714979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028507, 39.222546, 30.702391>,  <34.095898, 38.992325, 30.694838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028507, 39.222546, 30.702391>,  <33.916191, 39.606247, 30.714979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028507, 39.222546, 30.702391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356868, 0.134788, -0.924380,
		0.890955, 0.248329, 0.380174,
		0.280793, -0.959252, -0.031469,
		34.112743, 38.934769, 30.692949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720116, 39.541683, 30.418777>,  <33.916191, 39.606247, 30.714979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720116, 39.541683, 30.418777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554821, 39.180576, 30.371025>,  <34.455643, 38.963913, 30.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554821, 39.180576, 30.371025>,  <34.720116, 39.541683, 30.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554821, 39.180576, 30.371025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409179, -0.066963, -0.909994,
		0.813515, -0.424893, 0.397063,
		-0.413239, -0.902763, -0.119382,
		34.430851, 38.909748, 30.335211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179161, 39.115326, 30.089491>,  <34.720116, 39.541683, 30.418777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179161, 39.115326, 30.089491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830051, 38.933292, 30.018875>,  <34.620586, 38.824074, 29.976505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830051, 38.933292, 30.018875>,  <35.179161, 39.115326, 30.089491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830051, 38.933292, 30.018875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322709, -0.266594, -0.908178,
		0.366233, -0.849603, 0.379536,
		-0.872773, -0.455084, -0.176539,
		34.568218, 38.796768, 29.965914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368385, 38.372334, 29.727680>,  <35.179161, 39.115326, 30.089491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368385, 38.372334, 29.727680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974751, 38.424469, 29.679382>,  <34.738567, 38.455750, 29.650404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974751, 38.424469, 29.679382>,  <35.368385, 38.372334, 29.727680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974751, 38.424469, 29.679382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062223, -0.383735, -0.921344,
		-0.166420, -0.914199, 0.369520,
		-0.984090, 0.130337, -0.120746,
		34.679523, 38.463570, 29.643158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186592, 37.773350, 29.326237>,  <35.368385, 38.372334, 29.727680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186592, 37.773350, 29.326237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907440, 38.056847, 29.284958>,  <34.739948, 38.226944, 29.260191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907440, 38.056847, 29.284958>,  <35.186592, 37.773350, 29.326237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907440, 38.056847, 29.284958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045264, -0.187445, -0.981231,
		-0.714781, -0.680112, 0.162895,
		-0.697882, 0.708739, -0.103198,
		34.698074, 38.269466, 29.253998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723373, 37.497765, 28.874544>,  <35.186592, 37.773350, 29.326237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723373, 37.497765, 28.874544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634399, 37.886688, 28.845882>,  <34.581013, 38.120041, 28.828686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634399, 37.886688, 28.845882>,  <34.723373, 37.497765, 28.874544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634399, 37.886688, 28.845882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214995, -0.120605, -0.969139,
		-0.950946, -0.200167, 0.235869,
		-0.222437, 0.972310, -0.071654,
		34.567669, 38.178383, 28.824387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214355, 37.544983, 28.380703>,  <34.723373, 37.497765, 28.874544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214355, 37.544983, 28.380703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341015, 37.924267, 28.390791>,  <34.417011, 38.151836, 28.396843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341015, 37.924267, 28.390791>,  <34.214355, 37.544983, 28.380703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341015, 37.924267, 28.390791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004962, 0.024930, -0.999677,
		-0.948531, 0.316669, 0.003189,
		0.316647, 0.948208, 0.025218,
		34.436008, 38.208729, 28.398357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771683, 37.862453, 27.800495>,  <34.214355, 37.544983, 28.380703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771683, 37.862453, 27.800495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052013, 38.137394, 27.876801>,  <34.220211, 38.302357, 27.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052013, 38.137394, 27.876801>,  <33.771683, 37.862453, 27.800495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052013, 38.137394, 27.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036226, 0.232788, -0.971853,
		-0.712411, 0.688011, 0.138244,
		0.700827, 0.687351, 0.190764,
		34.262260, 38.343597, 27.934031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534412, 38.506664, 27.623655>,  <33.771683, 37.862453, 27.800495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534412, 38.506664, 27.623655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934174, 38.500011, 27.611561>,  <34.174030, 38.496021, 27.604303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934174, 38.500011, 27.611561>,  <33.534412, 38.506664, 27.623655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934174, 38.500011, 27.611561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022397, 0.353970, -0.934989,
		0.026252, 0.935109, 0.353386,
		0.999404, -0.016631, -0.030236,
		34.233994, 38.495022, 27.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652237, 39.126652, 27.221609>,  <33.534412, 38.506664, 27.623655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652237, 39.126652, 27.221609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969337, 38.883190, 27.208448>,  <34.159599, 38.737114, 27.200552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969337, 38.883190, 27.208448>,  <33.652237, 39.126652, 27.221609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969337, 38.883190, 27.208448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019714, 0.079555, -0.996636,
		0.609221, 0.789439, 0.075066,
		0.792755, -0.608651, -0.032904,
		34.207165, 38.700596, 27.198578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098682, 39.473660, 26.905798>,  <33.652237, 39.126652, 27.221609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098682, 39.473660, 26.905798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214378, 39.095901, 26.843241>,  <34.283798, 38.869247, 26.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214378, 39.095901, 26.843241>,  <34.098682, 39.473660, 26.905798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214378, 39.095901, 26.843241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060418, 0.181061, -0.981614,
		0.955347, 0.274475, 0.109429,
		0.289242, -0.944394, -0.156393,
		34.301151, 38.812584, 26.796322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693771, 39.492886, 26.402409>,  <34.098682, 39.473660, 26.905798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693771, 39.492886, 26.402409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544491, 39.121796, 26.404921>,  <34.454922, 38.899139, 26.406427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544491, 39.121796, 26.404921>,  <34.693771, 39.492886, 26.402409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544491, 39.121796, 26.404921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035694, -0.021123, -0.999140,
		0.927064, -0.372655, 0.040997,
		-0.373201, -0.927729, 0.006281,
		34.432529, 38.843475, 26.406805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112473, 39.225956, 25.919571>,  <34.693771, 39.492886, 26.402409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112473, 39.225956, 25.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825329, 38.949448, 25.952639>,  <34.653042, 38.783543, 25.972479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825329, 38.949448, 25.952639>,  <35.112473, 39.225956, 25.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825329, 38.949448, 25.952639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087394, -0.207283, -0.974370,
		0.690685, -0.692231, 0.209212,
		-0.717855, -0.691267, 0.082670,
		34.609974, 38.742069, 25.977440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410305, 38.618992, 25.569485>,  <35.112473, 39.225956, 25.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410305, 38.618992, 25.569485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010979, 38.605846, 25.588633>,  <34.771385, 38.597958, 25.600122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010979, 38.605846, 25.588633>,  <35.410305, 38.618992, 25.569485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010979, 38.605846, 25.588633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040759, -0.190571, -0.980827,
		0.041360, -0.981123, 0.188910,
		-0.998313, -0.032867, 0.047872,
		34.711487, 38.595985, 25.602995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241772, 38.054127, 25.190012>,  <35.410305, 38.618992, 25.569485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241772, 38.054127, 25.190012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910149, 38.277241, 25.205729>,  <34.711174, 38.411110, 25.215158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910149, 38.277241, 25.205729>,  <35.241772, 38.054127, 25.190012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910149, 38.277241, 25.205729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128210, -0.121227, -0.984310,
		-0.544266, -0.821087, 0.172017,
		-0.829058, 0.557782, 0.039292,
		34.661430, 38.444576, 25.217516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724033, 37.734077, 24.798771>,  <35.241772, 38.054127, 25.190012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724033, 37.734077, 24.798771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551235, 38.093899, 24.824635>,  <34.447556, 38.309792, 24.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551235, 38.093899, 24.824635>,  <34.724033, 37.734077, 24.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551235, 38.093899, 24.824635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219647, -0.035404, -0.974937,
		-0.874721, -0.435368, 0.212879,
		-0.431993, 0.899556, 0.064658,
		34.421638, 38.363766, 24.844032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094643, 37.714630, 24.591257>,  <34.724033, 37.734077, 24.798771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094643, 37.714630, 24.591257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185062, 38.099648, 24.531368>,  <34.239315, 38.330658, 24.495436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185062, 38.099648, 24.531368>,  <34.094643, 37.714630, 24.591257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185062, 38.099648, 24.531368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278864, -0.083324, -0.956709,
		-0.933348, 0.258011, 0.249584,
		0.226045, 0.962542, -0.149720,
		34.252876, 38.388409, 24.486452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531296, 37.981907, 24.243639>,  <34.094643, 37.714630, 24.591257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531296, 37.981907, 24.243639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829689, 38.241871, 24.185490>,  <34.008724, 38.397850, 24.150600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829689, 38.241871, 24.185490>,  <33.531296, 37.981907, 24.243639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829689, 38.241871, 24.185490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211694, 0.024443, -0.977030,
		-0.631424, 0.759622, 0.155815,
		0.745982, 0.649905, -0.145374,
		34.053482, 38.436844, 24.141878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274231, 38.511402, 23.785608>,  <33.531296, 37.981907, 24.243639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274231, 38.511402, 23.785608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672352, 38.550140, 23.785458>,  <33.911224, 38.573383, 23.785368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672352, 38.550140, 23.785458>,  <33.274231, 38.511402, 23.785608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672352, 38.550140, 23.785458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010720, -0.114046, -0.993418,
		-0.096250, 0.988744, -0.114548,
		0.995300, 0.096844, -0.000377,
		33.970943, 38.579193, 23.785345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499187, 38.935795, 23.217995>,  <33.274231, 38.511402, 23.785608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499187, 38.935795, 23.217995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837696, 38.737019, 23.294807>,  <34.040802, 38.617752, 23.340895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837696, 38.737019, 23.294807>,  <33.499187, 38.935795, 23.217995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837696, 38.737019, 23.294807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118685, -0.175533, -0.977293,
		0.519365, 0.849846, -0.089569,
		0.846271, -0.496941, 0.192030,
		34.091576, 38.587936, 23.352417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012383, 39.221169, 22.867628>,  <33.499187, 38.935795, 23.217995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012383, 39.221169, 22.867628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111687, 38.838425, 22.928017>,  <34.171268, 38.608780, 22.964251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111687, 38.838425, 22.928017>,  <34.012383, 39.221169, 22.867628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111687, 38.838425, 22.928017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003436, -0.154981, -0.987911,
		0.968686, 0.245781, -0.035188,
		0.248263, -0.956856, 0.150972,
		34.186165, 38.551369, 22.973309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389538, 39.158329, 22.347912>,  <34.012383, 39.221169, 22.867628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389538, 39.158329, 22.347912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323128, 38.782467, 22.467566>,  <34.283279, 38.556950, 22.539358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323128, 38.782467, 22.467566>,  <34.389538, 39.158329, 22.347912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323128, 38.782467, 22.467566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153508, -0.324273, -0.933425,
		0.974099, -0.109056, 0.198083,
		-0.166029, -0.939656, 0.299133,
		34.273319, 38.500568, 22.557306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806957, 38.776520, 21.894491>,  <34.389538, 39.158329, 22.347912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806957, 38.776520, 21.894491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592533, 38.481102, 22.058048>,  <34.463879, 38.303852, 22.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592533, 38.481102, 22.058048>,  <34.806957, 38.776520, 21.894491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592533, 38.481102, 22.058048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216232, -0.588333, -0.779172,
		0.816016, -0.329268, 0.475079,
		-0.536061, -0.738544, 0.408891,
		34.431713, 38.259541, 22.180716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243946, 38.189369, 21.938078>,  <34.806957, 38.776520, 21.894491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243946, 38.189369, 21.938078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853374, 38.107227, 21.911499>,  <34.619030, 38.057941, 21.895552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853374, 38.107227, 21.911499>,  <35.243946, 38.189369, 21.938078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853374, 38.107227, 21.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159495, -0.479070, -0.863165,
		0.145421, -0.853418, 0.500531,
		-0.976429, -0.205355, -0.066449,
		34.560444, 38.045620, 21.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225700, 37.444016, 21.614065>,  <35.243946, 38.189369, 21.938078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225700, 37.444016, 21.614065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849270, 37.576866, 21.588531>,  <34.623413, 37.656578, 21.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849270, 37.576866, 21.588531>,  <35.225700, 37.444016, 21.614065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849270, 37.576866, 21.588531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008296, -0.211362, -0.977373,
		-0.338108, -0.919247, 0.201662,
		-0.941071, 0.332131, -0.063837,
		34.566948, 37.676506, 21.569380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733921, 36.929256, 21.372938>,  <35.225700, 37.444016, 21.614065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733921, 36.929256, 21.372938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581108, 37.285851, 21.275524>,  <34.489422, 37.499805, 21.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581108, 37.285851, 21.275524>,  <34.733921, 36.929256, 21.372938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581108, 37.285851, 21.275524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210858, -0.340657, -0.916238,
		-0.899773, -0.298680, 0.318118,
		-0.382031, 0.891484, -0.243535,
		34.466499, 37.553295, 21.202463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128841, 36.851112, 21.203773>,  <34.733921, 36.929256, 21.372938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128841, 36.851112, 21.203773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199051, 37.201180, 21.023428>,  <34.241177, 37.411221, 20.915220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199051, 37.201180, 21.023428>,  <34.128841, 36.851112, 21.203773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199051, 37.201180, 21.023428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297787, -0.389323, -0.871637,
		-0.938358, 0.287251, 0.192279,
		0.175520, 0.875165, -0.450864,
		34.251705, 37.463730, 20.888168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682217, 36.809383, 20.711777>,  <34.128841, 36.851112, 21.203773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682217, 36.809383, 20.711777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906624, 37.118599, 20.593334>,  <34.041267, 37.304127, 20.522268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906624, 37.118599, 20.593334>,  <33.682217, 36.809383, 20.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906624, 37.118599, 20.593334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278734, -0.160410, -0.946877,
		-0.779467, 0.613748, 0.125479,
		0.561015, 0.773035, -0.296106,
		34.074928, 37.350510, 20.504501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372406, 37.107330, 20.148598>,  <33.682217, 36.809383, 20.711777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372406, 37.107330, 20.148598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747295, 37.234344, 20.090925>,  <33.972229, 37.310555, 20.056322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747295, 37.234344, 20.090925>,  <33.372406, 37.107330, 20.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747295, 37.234344, 20.090925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119062, -0.097245, -0.988113,
		-0.327783, 0.943247, -0.053334,
		0.937221, 0.317536, -0.144180,
		34.028461, 37.329605, 20.047670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428318, 37.518246, 19.420414>,  <33.372406, 37.107330, 20.148598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428318, 37.518246, 19.420414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802574, 37.416691, 19.518488>,  <34.027130, 37.355759, 19.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802574, 37.416691, 19.518488>,  <33.428318, 37.518246, 19.420414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802574, 37.416691, 19.518488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213054, -0.147560, -0.965833,
		0.281389, 0.955912, -0.083972,
		0.935643, -0.253885, 0.245183,
		34.083267, 37.340527, 19.592043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906506, 37.970581, 19.012535>,  <33.428318, 37.518246, 19.420414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906506, 37.970581, 19.012535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079769, 37.624401, 19.113234>,  <34.183727, 37.416695, 19.173653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079769, 37.624401, 19.113234>,  <33.906506, 37.970581, 19.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079769, 37.624401, 19.113234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108669, -0.227123, -0.967784,
		0.894745, 0.446557, -0.004333,
		0.433154, -0.865449, 0.251744,
		34.209717, 37.364765, 19.188757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411785, 37.841076, 18.513861>,  <33.906506, 37.970581, 19.012535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411785, 37.841076, 18.513861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385189, 37.475037, 18.672943>,  <34.369232, 37.255413, 18.768393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385189, 37.475037, 18.672943>,  <34.411785, 37.841076, 18.513861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385189, 37.475037, 18.672943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139650, -0.403198, -0.904394,
		0.987966, -0.004595, 0.154603,
		-0.066491, -0.915101, 0.397705,
		34.365242, 37.200508, 18.792255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001652, 37.611607, 18.285471>,  <34.411785, 37.841076, 18.513861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001652, 37.611607, 18.285471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752331, 37.311806, 18.374689>,  <34.602737, 37.131927, 18.428221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752331, 37.311806, 18.374689>,  <35.001652, 37.611607, 18.285471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752331, 37.311806, 18.374689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134944, -0.384044, -0.913400,
		0.770252, -0.539222, 0.340515,
		-0.623299, -0.749500, 0.223046,
		34.565342, 37.086956, 18.441603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312954, 37.033592, 17.958193>,  <35.001652, 37.611607, 18.285471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312954, 37.033592, 17.958193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930206, 36.939835, 18.026852>,  <34.700558, 36.883579, 18.068047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930206, 36.939835, 18.026852>,  <35.312954, 37.033592, 17.958193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930206, 36.939835, 18.026852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063863, -0.406667, -0.911342,
		0.283414, -0.882996, 0.374158,
		-0.956869, -0.234392, 0.171645,
		34.643147, 36.869518, 18.078344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187832, 36.306194, 17.871382>,  <35.312954, 37.033592, 17.958193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187832, 36.306194, 17.871382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833241, 36.470177, 17.785509>,  <34.620483, 36.568565, 17.733986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833241, 36.470177, 17.785509>,  <35.187832, 36.306194, 17.871382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833241, 36.470177, 17.785509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132510, -0.669363, -0.731023,
		-0.443385, -0.619591, 0.647701,
		-0.886483, 0.409952, -0.214683,
		34.567295, 36.593163, 17.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476357, 35.960979, 17.387365>,  <35.187832, 36.306194, 17.871382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476357, 35.960979, 17.387365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856243, 35.846077, 17.337532>,  <36.084175, 35.777134, 17.307632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856243, 35.846077, 17.337532>,  <35.476357, 35.960979, 17.387365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856243, 35.846077, 17.337532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242780, 0.424325, 0.872356,
		-0.197725, -0.858738, 0.472729,
		0.949717, -0.287256, -0.124585,
		36.141159, 35.759899, 17.300158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714859, 35.625492, 18.004946>,  <35.476357, 35.960979, 17.387365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714859, 35.625492, 18.004946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042610, 35.745468, 17.809534>,  <36.239262, 35.817455, 17.692287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042610, 35.745468, 17.809534>,  <35.714859, 35.625492, 18.004946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042610, 35.745468, 17.809534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418717, 0.268914, 0.867388,
		0.391539, -0.915270, 0.094750,
		0.819373, 0.299943, -0.488529,
		36.288422, 35.835449, 17.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295399, 35.374474, 18.426800>,  <35.714859, 35.625492, 18.004946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295399, 35.374474, 18.426800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394363, 35.691074, 18.203260>,  <36.453743, 35.881035, 18.069138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394363, 35.691074, 18.203260>,  <36.295399, 35.374474, 18.426800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394363, 35.691074, 18.203260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465574, 0.408711, 0.784982,
		0.849722, -0.454399, -0.267383,
		0.247413, 0.791503, -0.558847,
		36.468586, 35.928524, 18.035606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022434, 35.431664, 18.676176>,  <36.295399, 35.374474, 18.426800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022434, 35.431664, 18.676176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894695, 35.765644, 18.496899>,  <36.818050, 35.966030, 18.389332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894695, 35.765644, 18.496899>,  <37.022434, 35.431664, 18.676176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894695, 35.765644, 18.496899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305603, 0.538430, 0.785303,
		0.897009, 0.113815, -0.427109,
		-0.319347, 0.834949, -0.448194,
		36.798893, 36.016129, 18.362440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652767, 35.973839, 18.576777>,  <37.022434, 35.431664, 18.676176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652767, 35.973839, 18.576777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305096, 36.171268, 18.564651>,  <37.096493, 36.289726, 18.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305096, 36.171268, 18.564651>,  <37.652767, 35.973839, 18.576777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305096, 36.171268, 18.564651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351398, 0.659607, 0.664408,
		0.347930, 0.566835, -0.746755,
		-0.869175, 0.493575, -0.030312,
		37.044342, 36.319340, 18.555557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883785, 36.743488, 18.522015>,  <37.652767, 35.973839, 18.576777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883785, 36.743488, 18.522015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511471, 36.725082, 18.667074>,  <37.288082, 36.714039, 18.754110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511471, 36.725082, 18.667074>,  <37.883785, 36.743488, 18.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511471, 36.725082, 18.667074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227219, 0.704299, 0.672558,
		-0.286362, 0.708410, -0.645098,
		-0.930789, -0.046016, 0.362649,
		37.232235, 36.711277, 18.775869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842541, 37.345219, 18.900743>,  <37.883785, 36.743488, 18.522015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842541, 37.345219, 18.900743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510811, 37.165928, 19.034201>,  <37.311775, 37.058353, 19.114275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510811, 37.165928, 19.034201>,  <37.842541, 37.345219, 18.900743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510811, 37.165928, 19.034201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025841, 0.565699, 0.824207,
		-0.558173, 0.692155, -0.457564,
		-0.829322, -0.448226, 0.333644,
		37.262012, 37.031460, 19.134295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368233, 37.919353, 19.184759>,  <37.842541, 37.345219, 18.900743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368233, 37.919353, 19.184759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269745, 37.570835, 19.354567>,  <37.210651, 37.361725, 19.456451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269745, 37.570835, 19.354567>,  <37.368233, 37.919353, 19.184759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269745, 37.570835, 19.354567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146564, 0.466437, 0.872328,
		-0.958068, 0.152566, -0.242548,
		-0.246221, -0.871298, 0.424517,
		37.195877, 37.309444, 19.481922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847076, 38.120258, 19.696503>,  <37.368233, 37.919353, 19.184759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847076, 38.120258, 19.696503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940456, 37.747314, 19.806923>,  <36.996483, 37.523548, 19.873175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940456, 37.747314, 19.806923>,  <36.847076, 38.120258, 19.696503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940456, 37.747314, 19.806923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137224, 0.249463, 0.958612,
		-0.962638, -0.261666, -0.069706,
		0.233447, -0.932362, 0.276050,
		37.010490, 37.467606, 19.889738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313766, 37.873726, 20.141699>,  <36.847076, 38.120258, 19.696503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313766, 37.873726, 20.141699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622421, 37.633865, 20.226545>,  <36.807613, 37.489948, 20.277454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622421, 37.633865, 20.226545>,  <36.313766, 37.873726, 20.141699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622421, 37.633865, 20.226545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202849, 0.084074, 0.975594,
		-0.602848, -0.795834, -0.056763,
		0.771639, -0.599649, 0.212118,
		36.853912, 37.453972, 20.290180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952671, 37.398819, 20.537066>,  <36.313766, 37.873726, 20.141699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952671, 37.398819, 20.537066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341927, 37.375927, 20.626261>,  <36.575481, 37.362194, 20.679777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341927, 37.375927, 20.626261>,  <35.952671, 37.398819, 20.537066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341927, 37.375927, 20.626261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215803, 0.110544, 0.970159,
		-0.080171, -0.992222, 0.095225,
		0.973140, -0.057229, 0.222987,
		36.633869, 37.358757, 20.693157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996159, 36.929104, 21.057770>,  <35.952671, 37.398819, 20.537066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996159, 36.929104, 21.057770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334003, 37.143162, 21.064100>,  <36.536713, 37.271595, 21.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334003, 37.143162, 21.064100>,  <35.996159, 36.929104, 21.057770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334003, 37.143162, 21.064100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060578, 0.066160, 0.995969,
		0.531936, -0.842169, 0.088297,
		0.844615, 0.535140, 0.015824,
		36.587387, 37.303703, 21.068848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480747, 36.600220, 21.446974>,  <35.996159, 36.929104, 21.057770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480747, 36.600220, 21.446974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551548, 36.993763, 21.457565>,  <36.594028, 37.229889, 21.463921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551548, 36.993763, 21.457565>,  <36.480747, 36.600220, 21.446974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551548, 36.993763, 21.457565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062352, -0.038058, 0.997328,
		0.982233, -0.174880, -0.068082,
		0.177004, 0.983854, 0.026477,
		36.604649, 37.288918, 21.465509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047878, 36.612972, 21.910862>,  <36.480747, 36.600220, 21.446974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047878, 36.612972, 21.910862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953651, 37.001534, 21.899027>,  <36.897114, 37.234673, 21.891926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953651, 37.001534, 21.899027>,  <37.047878, 36.612972, 21.910862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953651, 37.001534, 21.899027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231755, 0.085717, 0.968991,
		0.943820, 0.221409, -0.245320,
		-0.235571, 0.971407, -0.029588,
		36.882980, 37.292957, 21.890150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656101, 36.899216, 22.178806>,  <37.047878, 36.612972, 21.910862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656101, 36.899216, 22.178806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344349, 37.145206, 22.226755>,  <37.157299, 37.292801, 22.255524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344349, 37.145206, 22.226755>,  <37.656101, 36.899216, 22.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344349, 37.145206, 22.226755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204332, 0.068616, 0.976494,
		0.592301, 0.785550, -0.179138,
		-0.779377, 0.614982, 0.119871,
		37.110535, 37.329700, 22.262716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937580, 37.452816, 22.554699>,  <37.656101, 36.899216, 22.178806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937580, 37.452816, 22.554699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542984, 37.446198, 22.619902>,  <37.306229, 37.442226, 22.659023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542984, 37.446198, 22.619902>,  <37.937580, 37.452816, 22.554699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542984, 37.446198, 22.619902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155484, 0.219166, 0.963219,
		-0.051666, 0.975547, -0.213631,
		-0.986486, -0.016550, 0.163005,
		37.247040, 37.441231, 22.668802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827164, 37.944710, 23.102398>,  <37.937580, 37.452816, 22.554699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827164, 37.944710, 23.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474556, 37.755913, 23.107307>,  <37.262993, 37.642635, 23.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474556, 37.755913, 23.107307>,  <37.827164, 37.944710, 23.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474556, 37.755913, 23.107307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101212, 0.214293, 0.971511,
		-0.461174, 0.855163, -0.236675,
		-0.881519, -0.471990, 0.012273,
		37.210102, 37.614315, 23.110989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348110, 38.445091, 23.382725>,  <37.827164, 37.944710, 23.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348110, 38.445091, 23.382725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194839, 38.081078, 23.445986>,  <37.102875, 37.862671, 23.483942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194839, 38.081078, 23.445986>,  <37.348110, 38.445091, 23.382725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194839, 38.081078, 23.445986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106989, 0.213796, 0.971002,
		-0.917457, 0.355147, -0.179286,
		-0.383179, -0.910034, 0.158152,
		37.079887, 37.808067, 23.493431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676781, 38.570919, 23.861622>,  <37.348110, 38.445091, 23.382725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676781, 38.570919, 23.861622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780819, 38.186111, 23.894773>,  <36.843243, 37.955227, 23.914665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780819, 38.186111, 23.894773>,  <36.676781, 38.570919, 23.861622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780819, 38.186111, 23.894773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119594, 0.053078, 0.991403,
		-0.958147, -0.267774, -0.101246,
		0.260098, -0.962018, 0.082881,
		36.858849, 37.897507, 23.919638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079643, 38.344170, 24.164289>,  <36.676781, 38.570919, 23.861622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079643, 38.344170, 24.164289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391869, 38.103752, 24.232962>,  <36.579205, 37.959503, 24.274166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391869, 38.103752, 24.232962>,  <36.079643, 38.344170, 24.164289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391869, 38.103752, 24.232962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175004, 0.053543, 0.983111,
		-0.600085, -0.797421, -0.063392,
		0.780559, -0.601044, 0.171682,
		36.626038, 37.923439, 24.284466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836117, 37.984840, 24.745735>,  <36.079643, 38.344170, 24.164289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836117, 37.984840, 24.745735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225258, 37.893185, 24.758722>,  <36.458744, 37.838192, 24.766514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225258, 37.893185, 24.758722>,  <35.836117, 37.984840, 24.745735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225258, 37.893185, 24.758722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040838, -0.031888, 0.998657,
		-0.227796, -0.972871, -0.040380,
		0.972852, -0.229139, 0.032466,
		36.517113, 37.824444, 24.768461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899204, 37.460434, 25.129038>,  <35.836117, 37.984840, 24.745735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899204, 37.460434, 25.129038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262249, 37.627846, 25.142132>,  <36.480076, 37.728294, 25.149988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262249, 37.627846, 25.142132>,  <35.899204, 37.460434, 25.129038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262249, 37.627846, 25.142132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020626, -0.033426, 0.999228,
		0.419305, -0.907586, -0.021705,
		0.907611, 0.418534, 0.032736,
		36.534531, 37.753407, 25.151953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205399, 37.029755, 25.504978>,  <35.899204, 37.460434, 25.129038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205399, 37.029755, 25.504978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432537, 37.357616, 25.535231>,  <36.568821, 37.554333, 25.553383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432537, 37.357616, 25.535231>,  <36.205399, 37.029755, 25.504978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432537, 37.357616, 25.535231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005938, -0.087800, 0.996120,
		0.823116, -0.566089, -0.044990,
		0.567843, 0.819655, 0.075631,
		36.602890, 37.603512, 25.557920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721664, 36.932827, 25.991968>,  <36.205399, 37.029755, 25.504978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721664, 36.932827, 25.991968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681351, 37.330791, 25.992186>,  <36.657162, 37.569569, 25.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681351, 37.330791, 25.992186>,  <36.721664, 36.932827, 25.991968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681351, 37.330791, 25.992186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233893, 0.023160, 0.971986,
		0.967025, 0.098084, -0.235036,
		-0.100780, 0.994909, 0.000544,
		36.651115, 37.629265, 25.992350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170547, 37.101021, 26.446341>,  <36.721664, 36.932827, 25.991968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170547, 37.101021, 26.446341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002167, 37.458427, 26.383833>,  <36.901138, 37.672871, 26.346329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002167, 37.458427, 26.383833>,  <37.170547, 37.101021, 26.446341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002167, 37.458427, 26.383833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262377, 0.284855, 0.921963,
		0.868305, 0.347105, -0.354350,
		-0.420956, 0.893519, -0.156269,
		36.875881, 37.726482, 26.336952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690361, 37.675873, 26.624664>,  <37.170547, 37.101021, 26.446341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690361, 37.675873, 26.624664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312614, 37.792812, 26.684942>,  <37.085968, 37.862976, 26.721109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312614, 37.792812, 26.684942>,  <37.690361, 37.675873, 26.624664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312614, 37.792812, 26.684942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212203, 0.191513, 0.958276,
		0.251293, 0.936938, -0.242895,
		-0.944363, 0.292352, 0.150695,
		37.029305, 37.880516, 26.730150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737057, 38.281021, 26.948505>,  <37.690361, 37.675873, 26.624664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737057, 38.281021, 26.948505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366810, 38.154003, 27.030867>,  <37.144661, 38.077793, 27.080282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366810, 38.154003, 27.030867>,  <37.737057, 38.281021, 26.948505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366810, 38.154003, 27.030867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078029, 0.372239, 0.924851,
		-0.370325, 0.872126, -0.319774,
		-0.925619, -0.317543, 0.205901,
		37.089123, 38.058739, 27.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431675, 38.763454, 27.394518>,  <37.737057, 38.281021, 26.948505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431675, 38.763454, 27.394518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204899, 38.442799, 27.470364>,  <37.068832, 38.250404, 27.515871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204899, 38.442799, 27.470364>,  <37.431675, 38.763454, 27.394518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204899, 38.442799, 27.470364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099014, 0.294826, 0.950407,
		-0.817788, 0.520048, -0.246522,
		-0.566939, -0.801641, 0.189613,
		37.034817, 38.202305, 27.527248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847763, 39.048130, 27.621572>,  <37.431675, 38.763454, 27.394518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847763, 39.048130, 27.621572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921371, 38.673302, 27.740252>,  <36.965534, 38.448402, 27.811459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921371, 38.673302, 27.740252>,  <36.847763, 39.048130, 27.621572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921371, 38.673302, 27.740252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077650, 0.314770, 0.945987,
		-0.979851, -0.151040, 0.130687,
		0.184018, -0.937074, 0.296699,
		36.976578, 38.392181, 27.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561668, 39.133598, 28.257067>,  <36.847763, 39.048130, 27.621572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561668, 39.133598, 28.257067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733006, 38.773499, 28.288237>,  <36.835808, 38.557438, 28.306938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733006, 38.773499, 28.288237>,  <36.561668, 39.133598, 28.257067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733006, 38.773499, 28.288237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107414, 0.136354, 0.984820,
		-0.897211, -0.413466, 0.155105,
		0.428339, -0.900252, 0.077927,
		36.861507, 38.503422, 28.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225613, 38.829952, 28.779131>,  <36.561668, 39.133598, 28.257067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225613, 38.829952, 28.779131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574780, 38.636173, 28.756067>,  <36.784279, 38.519905, 28.742229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574780, 38.636173, 28.756067>,  <36.225613, 38.829952, 28.779131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574780, 38.636173, 28.756067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159745, 0.172154, 0.972031,
		-0.460972, -0.857714, 0.227664,
		0.872918, -0.484447, -0.057658,
		36.836655, 38.490841, 28.738770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214611, 38.293377, 29.255209>,  <36.225613, 38.829952, 28.779131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214611, 38.293377, 29.255209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609055, 38.323071, 29.195784>,  <36.845722, 38.340889, 29.160128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609055, 38.323071, 29.195784>,  <36.214611, 38.293377, 29.255209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609055, 38.323071, 29.195784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145843, 0.040847, 0.988464,
		0.079450, -0.996404, 0.029453,
		0.986112, 0.074238, -0.148564,
		36.904888, 38.345341, 29.151215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464504, 37.919056, 29.719284>,  <36.214611, 38.293377, 29.255209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464504, 37.919056, 29.719284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794781, 38.116772, 29.610537>,  <36.992947, 38.235401, 29.545288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794781, 38.116772, 29.610537>,  <36.464504, 37.919056, 29.719284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794781, 38.116772, 29.610537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286328, 0.048035, 0.956927,
		0.486063, -0.867966, -0.101868,
		0.825687, 0.494294, -0.271871,
		37.042488, 38.265060, 29.528975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033142, 37.608681, 30.132927>,  <36.464504, 37.919056, 29.719284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033142, 37.608681, 30.132927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153763, 37.968842, 30.007484>,  <37.226135, 38.184937, 29.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153763, 37.968842, 30.007484>,  <37.033142, 37.608681, 30.132927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153763, 37.968842, 30.007484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305839, 0.220191, 0.926271,
		0.903068, -0.375229, -0.208979,
		0.301549, 0.900399, -0.313607,
		37.244228, 38.238960, 29.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650162, 37.640892, 30.465700>,  <37.033142, 37.608681, 30.132927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650162, 37.640892, 30.465700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534286, 38.015831, 30.388285>,  <37.464764, 38.240795, 30.341835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534286, 38.015831, 30.388285>,  <37.650162, 37.640892, 30.465700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534286, 38.015831, 30.388285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245762, 0.268275, 0.931466,
		0.925031, 0.222268, -0.308080,
		-0.289686, 0.937350, -0.193538,
		37.447380, 38.297035, 30.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216747, 38.007019, 30.609646>,  <37.650162, 37.640892, 30.465700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216747, 38.007019, 30.609646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899353, 38.249756, 30.628107>,  <37.708916, 38.395397, 30.639183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899353, 38.249756, 30.628107>,  <38.216747, 38.007019, 30.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899353, 38.249756, 30.628107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222490, 0.218661, 0.950098,
		0.566466, 0.764154, -0.308519,
		-0.793482, 0.606841, 0.046152,
		37.661308, 38.431808, 30.641953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442841, 38.705345, 30.884050>,  <38.216747, 38.007019, 30.609646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442841, 38.705345, 30.884050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049419, 38.675869, 30.950020>,  <37.813366, 38.658184, 30.989601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049419, 38.675869, 30.950020>,  <38.442841, 38.705345, 30.884050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049419, 38.675869, 30.950020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144815, 0.224093, 0.963748,
		-0.107976, 0.971778, -0.209735,
		-0.983550, -0.073689, 0.164925,
		37.754356, 38.653763, 30.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340786, 39.264294, 31.349594>,  <38.442841, 38.705345, 30.884050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340786, 39.264294, 31.349594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989674, 39.075768, 31.383904>,  <37.779007, 38.962650, 31.404490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989674, 39.075768, 31.383904>,  <38.340786, 39.264294, 31.349594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989674, 39.075768, 31.383904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074427, 0.311040, 0.947478,
		-0.473240, 0.825297, -0.308104,
		-0.877784, -0.471316, 0.085773,
		37.726337, 38.934372, 31.409636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844746, 39.764008, 31.717213>,  <38.340786, 39.264294, 31.349594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844746, 39.764008, 31.717213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729160, 39.382576, 31.751123>,  <37.659809, 39.153717, 31.771471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729160, 39.382576, 31.751123>,  <37.844746, 39.764008, 31.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729160, 39.382576, 31.751123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097055, 0.117280, 0.988345,
		-0.952408, 0.277368, -0.126440,
		-0.288964, -0.953579, 0.084778,
		37.642471, 39.096504, 31.776556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440788, 39.774837, 32.297901>,  <37.844746, 39.764008, 31.717213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440788, 39.774837, 32.297901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476669, 39.376797, 32.281281>,  <37.498199, 39.137974, 32.271309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476669, 39.376797, 32.281281>,  <37.440788, 39.774837, 32.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476669, 39.376797, 32.281281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126014, -0.052727, 0.990626,
		-0.987965, -0.083625, -0.130126,
		0.089702, -0.995101, -0.041554,
		37.503578, 39.078266, 32.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853546, 39.395180, 32.598034>,  <37.440788, 39.774837, 32.297901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853546, 39.395180, 32.598034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151760, 39.128643, 32.603245>,  <37.330688, 38.968719, 32.606373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151760, 39.128643, 32.603245>,  <36.853546, 39.395180, 32.598034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151760, 39.128643, 32.603245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192148, -0.196186, 0.961556,
		-0.638169, -0.719375, -0.274300,
		0.745533, -0.666342, 0.013027,
		37.375420, 38.928741, 32.607151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515041, 38.846107, 32.933300>,  <36.853546, 39.395180, 32.598034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515041, 38.846107, 32.933300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909554, 38.788593, 32.965736>,  <37.146259, 38.754086, 32.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909554, 38.788593, 32.965736>,  <36.515041, 38.846107, 32.933300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909554, 38.788593, 32.965736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097416, -0.110396, 0.989102,
		-0.133272, -0.983431, -0.122889,
		0.986280, -0.143791, 0.081089,
		37.205437, 38.745457, 32.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575607, 38.206577, 33.211899>,  <36.515041, 38.846107, 32.933300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575607, 38.206577, 33.211899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922863, 38.390717, 33.286095>,  <37.131218, 38.501202, 33.330612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922863, 38.390717, 33.286095>,  <36.575607, 38.206577, 33.211899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922863, 38.390717, 33.286095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076623, -0.244932, 0.966508,
		0.490364, -0.853279, -0.177362,
		0.868143, 0.460351, 0.185487,
		37.183308, 38.528820, 33.341740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952335, 37.652191, 33.778702>,  <36.575607, 38.206577, 33.211899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952335, 37.652191, 33.778702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180080, 37.980438, 33.798321>,  <37.316727, 38.177387, 33.810093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180080, 37.980438, 33.798321>,  <36.952335, 37.652191, 33.778702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180080, 37.980438, 33.798321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183595, -0.185089, 0.965420,
		0.801320, -0.540672, -0.256045,
		0.569367, 0.820619, 0.049051,
		37.350891, 38.226624, 33.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530689, 37.478855, 34.168850>,  <36.952335, 37.652191, 33.778702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530689, 37.478855, 34.168850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488396, 37.876228, 34.186359>,  <37.463020, 38.114651, 34.196865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488396, 37.876228, 34.186359>,  <37.530689, 37.478855, 34.168850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488396, 37.876228, 34.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334424, -0.005929, 0.942404,
		0.936473, 0.114283, -0.331600,
		-0.105735, 0.993431, 0.043771,
		37.456676, 38.174259, 34.199490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167881, 37.720760, 34.459404>,  <37.530689, 37.478855, 34.168850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167881, 37.720760, 34.459404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878902, 37.990303, 34.521362>,  <37.705517, 38.152027, 34.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878902, 37.990303, 34.521362>,  <38.167881, 37.720760, 34.459404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878902, 37.990303, 34.521362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338276, 0.149090, 0.929162,
		0.603029, 0.723663, -0.335659,
		-0.722444, 0.673857, 0.154893,
		37.662170, 38.192459, 34.567829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512604, 38.207661, 34.857361>,  <38.167881, 37.720760, 34.459404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512604, 38.207661, 34.857361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128147, 38.281288, 34.939651>,  <37.897472, 38.325466, 34.989025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128147, 38.281288, 34.939651>,  <38.512604, 38.207661, 34.857361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128147, 38.281288, 34.939651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209976, 0.003694, 0.977700,
		0.179204, 0.982906, -0.042201,
		-0.961143, 0.184068, 0.205725,
		37.839806, 38.336510, 35.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440975, 38.763733, 35.367149>,  <38.512604, 38.207661, 34.857361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440975, 38.763733, 35.367149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092182, 38.568562, 35.383034>,  <37.882908, 38.451458, 35.392563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092182, 38.568562, 35.383034>,  <38.440975, 38.763733, 35.367149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092182, 38.568562, 35.383034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131917, -0.156080, 0.978896,
		-0.471432, 0.858817, 0.200464,
		-0.871980, -0.487927, 0.039711,
		37.830589, 38.422184, 35.394947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060440, 39.061489, 35.936348>,  <38.440975, 38.763733, 35.367149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060440, 39.061489, 35.936348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925404, 38.694389, 35.852669>,  <37.844383, 38.474129, 35.802460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925404, 38.694389, 35.852669>,  <38.060440, 39.061489, 35.936348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925404, 38.694389, 35.852669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134469, -0.172949, 0.975708,
		-0.931638, 0.357522, -0.065023,
		-0.337591, -0.917751, -0.209201,
		37.824127, 38.419064, 35.789909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604301, 38.967823, 36.468163>,  <38.060440, 39.061489, 35.936348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604301, 38.967823, 36.468163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631802, 38.600750, 36.311634>,  <37.648300, 38.380505, 36.217716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631802, 38.600750, 36.311634>,  <37.604301, 38.967823, 36.468163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631802, 38.600750, 36.311634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310134, -0.392472, 0.865900,
		-0.948204, 0.061831, -0.311587,
		0.068750, -0.917683, -0.391319,
		37.652428, 38.325443, 36.194237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076763, 38.636017, 36.740017>,  <37.604301, 38.967823, 36.468163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076763, 38.636017, 36.740017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354538, 38.362343, 36.650890>,  <37.521202, 38.198139, 36.597412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354538, 38.362343, 36.650890>,  <37.076763, 38.636017, 36.740017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354538, 38.362343, 36.650890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179225, -0.464367, 0.867319,
		-0.696880, -0.562360, -0.445095,
		0.694433, -0.684189, -0.222819,
		37.562866, 38.157085, 36.584045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961044, 38.322868, 37.260273>,  <37.076763, 38.636017, 36.740017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961044, 38.322868, 37.260273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244873, 38.100338, 37.087299>,  <37.415173, 37.966820, 36.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244873, 38.100338, 37.087299>,  <36.961044, 38.322868, 37.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244873, 38.100338, 37.087299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165167, -0.727929, 0.665462,
		-0.684995, -0.400774, -0.608410,
		0.709579, -0.556327, -0.432433,
		37.457745, 37.933441, 36.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718334, 37.599770, 37.025776>,  <36.961044, 38.322868, 37.260273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718334, 37.599770, 37.025776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110832, 37.601528, 37.102867>,  <37.346329, 37.602585, 37.149120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110832, 37.601528, 37.102867>,  <36.718334, 37.599770, 37.025776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110832, 37.601528, 37.102867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142370, -0.657506, 0.739877,
		0.129972, -0.753437, -0.644547,
		0.981243, 0.004399, 0.192724,
		37.405205, 37.602848, 37.160683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966122, 36.874737, 37.017433>,  <36.718334, 37.599770, 37.025776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966122, 36.874737, 37.017433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243088, 37.067070, 37.232601>,  <37.409267, 37.182468, 37.361702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243088, 37.067070, 37.232601>,  <36.966122, 36.874737, 37.017433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243088, 37.067070, 37.232601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026461, -0.728135, 0.684923,
		0.721010, -0.488488, -0.491452,
		0.692419, 0.480832, 0.537919,
		37.450813, 37.211319, 37.393978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221333, 36.578339, 37.591679>,  <36.966122, 36.874737, 37.017433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221333, 36.578339, 37.591679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402939, 36.883259, 37.776184>,  <37.511902, 37.066212, 37.886887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402939, 36.883259, 37.776184>,  <37.221333, 36.578339, 37.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402939, 36.883259, 37.776184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303822, -0.619127, 0.724137,
		0.837591, -0.188629, -0.512699,
		0.454019, 0.762300, 0.461265,
		37.539146, 37.111950, 37.914562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770126, 36.240440, 37.965530>,  <37.221333, 36.578339, 37.591679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770126, 36.240440, 37.965530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624760, 36.573311, 38.133064>,  <37.537540, 36.773033, 38.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624760, 36.573311, 38.133064>,  <37.770126, 36.240440, 37.965530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624760, 36.573311, 38.133064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026234, -0.440250, 0.897492,
		0.931258, 0.337148, 0.138162,
		-0.363414, 0.832172, 0.418832,
		37.515736, 36.822964, 38.258713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074261, 36.386917, 38.544037>,  <37.770126, 36.240440, 37.965530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074261, 36.386917, 38.544037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732616, 36.591328, 38.582703>,  <37.527630, 36.713974, 38.605904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732616, 36.591328, 38.582703>,  <38.074261, 36.386917, 38.544037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732616, 36.591328, 38.582703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015033, -0.161528, 0.986754,
		0.519874, 0.844250, 0.130280,
		-0.854110, 0.511029, 0.096666,
		37.476383, 36.744637, 38.611702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220600, 36.758598, 39.109619>,  <38.074261, 36.386917, 38.544037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220600, 36.758598, 39.109619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822224, 36.738319, 39.079884>,  <37.583199, 36.726151, 39.062042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822224, 36.738319, 39.079884>,  <38.220600, 36.758598, 39.109619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822224, 36.738319, 39.079884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067532, -0.124850, 0.989875,
		-0.059466, 0.990880, 0.120920,
		-0.995943, -0.050698, -0.074341,
		37.523441, 36.723110, 39.057583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952038, 37.302864, 39.419376>,  <38.220600, 36.758598, 39.109619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952038, 37.302864, 39.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680397, 37.009777, 39.436996>,  <37.517410, 36.833923, 39.447571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680397, 37.009777, 39.436996>,  <37.952038, 37.302864, 39.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680397, 37.009777, 39.436996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020920, 0.079308, 0.996631,
		-0.733744, 0.675894, -0.069187,
		-0.679104, -0.732719, 0.044052,
		37.476665, 36.789963, 39.450211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528767, 37.482697, 39.898834>,  <37.952038, 37.302864, 39.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528767, 37.482697, 39.898834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486210, 37.085163, 39.886368>,  <37.460678, 36.846642, 39.878887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486210, 37.085163, 39.886368>,  <37.528767, 37.482697, 39.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486210, 37.085163, 39.886368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105780, -0.019850, 0.994191,
		-0.988682, 0.109067, -0.103016,
		-0.106388, -0.993836, -0.031162,
		37.454292, 36.787014, 39.877018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827824, 37.310585, 40.148140>,  <37.528767, 37.482697, 39.898834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827824, 37.310585, 40.148140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113876, 37.036064, 40.201176>,  <37.285507, 36.871353, 40.232998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113876, 37.036064, 40.201176>,  <36.827824, 37.310585, 40.148140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113876, 37.036064, 40.201176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041477, 0.147682, 0.988165,
		-0.697761, -0.712164, 0.077146,
		0.715129, -0.686303, 0.132585,
		37.328415, 36.830173, 40.240952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748718, 36.597500, 40.560246>,  <36.827824, 37.310585, 40.148140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748718, 36.597500, 40.560246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110443, 36.765308, 40.591789>,  <37.327480, 36.865993, 40.610714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110443, 36.765308, 40.591789>,  <36.748718, 36.597500, 40.560246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110443, 36.765308, 40.591789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157621, 0.156497, 0.975020,
		0.396702, -0.894153, 0.207648,
		0.904313, 0.419522, 0.078855,
		37.381737, 36.891163, 40.615444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091915, 36.411507, 40.466808>,  <36.748718, 36.597500, 40.560246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091915, 36.411507, 40.466808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916466, 36.581825, 40.783367>,  <35.811195, 36.684017, 40.973301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916466, 36.581825, 40.783367>,  <36.091915, 36.411507, 40.466808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916466, 36.581825, 40.783367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773952, -0.626546, -0.091858,
		0.456733, -0.652793, 0.604364,
		-0.438627, 0.425794, 0.791395,
		35.784878, 36.709564, 41.020786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884018, 36.133728, 39.823009>,  <36.091915, 36.411507, 40.466808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884018, 36.133728, 39.823009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567909, 36.003082, 40.030392>,  <35.378246, 35.924694, 40.154823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567909, 36.003082, 40.030392>,  <35.884018, 36.133728, 39.823009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567909, 36.003082, 40.030392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608852, 0.323120, -0.724495,
		0.069103, -0.888211, -0.454209,
		-0.790268, -0.326611, 0.518461,
		35.330830, 35.905098, 40.185928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500118, 35.884583, 39.454533>,  <35.884018, 36.133728, 39.823009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500118, 35.884583, 39.454533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243752, 35.965977, 39.750595>,  <35.089931, 36.014812, 39.928230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243752, 35.965977, 39.750595>,  <35.500118, 35.884583, 39.454533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243752, 35.965977, 39.750595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623472, 0.424488, -0.656576,
		-0.447788, -0.882273, -0.145194,
		-0.640912, 0.203482, 0.740153,
		35.051479, 36.027023, 39.972641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100685, 35.522778, 39.453243>,  <35.500118, 35.884583, 39.454533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100685, 35.522778, 39.453243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989986, 35.458569, 39.832218>,  <35.923565, 35.420044, 40.059605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989986, 35.458569, 39.832218>,  <36.100685, 35.522778, 39.453243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989986, 35.458569, 39.832218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086184, -0.986122, -0.141898,
		0.957069, 0.042383, 0.286745,
		-0.276751, -0.160519, 0.947440,
		35.906960, 35.410412, 40.116451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612873, 36.039017, 39.285606>,  <36.100685, 35.522778, 39.453243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612873, 36.039017, 39.285606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845062, 36.352253, 39.374889>,  <36.984375, 36.540195, 39.428459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845062, 36.352253, 39.374889>,  <36.612873, 36.039017, 39.285606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845062, 36.352253, 39.374889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191940, 0.397984, -0.897089,
		-0.791335, 0.477893, 0.381324,
		0.580473, 0.783088, 0.223212,
		37.019203, 36.587181, 39.441853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240292, 36.480385, 38.925018>,  <36.612873, 36.039017, 39.285606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240292, 36.480385, 38.925018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603043, 36.634838, 38.992527>,  <36.820694, 36.727509, 39.033031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603043, 36.634838, 38.992527>,  <36.240292, 36.480385, 38.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603043, 36.634838, 38.992527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020433, 0.359743, -0.932828,
		-0.420909, 0.849405, 0.318351,
		0.906873, 0.386130, 0.168775,
		36.875103, 36.750679, 39.043159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314556, 37.219196, 38.808407>,  <36.240292, 36.480385, 38.925018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314556, 37.219196, 38.808407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677200, 37.066063, 38.737427>,  <36.894787, 36.974182, 38.694839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677200, 37.066063, 38.737427>,  <36.314556, 37.219196, 38.808407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677200, 37.066063, 38.737427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042511, 0.501266, -0.864248,
		0.419815, 0.775996, 0.470729,
		0.906613, -0.382836, -0.177451,
		36.949184, 36.951214, 38.684193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862034, 37.805519, 38.746174>,  <36.314556, 37.219196, 38.808407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862034, 37.805519, 38.746174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955757, 37.470707, 38.548393>,  <37.011993, 37.269821, 38.429726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955757, 37.470707, 38.548393>,  <36.862034, 37.805519, 38.746174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955757, 37.470707, 38.548393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159531, 0.534824, -0.829767,
		0.958983, 0.115544, 0.258848,
		0.234313, -0.837026, -0.494454,
		37.026051, 37.219601, 38.400059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973663, 38.042721, 38.098526>,  <36.862034, 37.805519, 38.746174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973663, 38.042721, 38.098526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050457, 37.657417, 38.023407>,  <37.096535, 37.426235, 37.978336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050457, 37.657417, 38.023407>,  <36.973663, 38.042721, 38.098526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050457, 37.657417, 38.023407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266543, 0.235342, -0.934649,
		0.944509, 0.129382, 0.301933,
		0.191985, -0.963262, -0.187796,
		37.108051, 37.368439, 37.967068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632954, 37.977108, 38.090191>,  <36.973663, 38.042721, 38.098526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632954, 37.977108, 38.090191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450661, 37.707985, 37.857079>,  <37.341286, 37.546509, 37.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450661, 37.707985, 37.857079>,  <37.632954, 37.977108, 38.090191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450661, 37.707985, 37.857079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424881, 0.410892, -0.806625,
		0.782166, -0.615218, 0.098609,
		-0.455732, -0.672812, -0.582780,
		37.313942, 37.506142, 37.682243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411934, 37.834602, 37.978275>,  <37.632954, 37.977108, 38.090191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411934, 37.834602, 37.978275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106289, 37.658802, 37.789394>,  <37.922901, 37.553322, 37.676067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106289, 37.658802, 37.789394>,  <38.411934, 37.834602, 37.978275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106289, 37.658802, 37.789394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351523, 0.330088, -0.876056,
		0.540897, -0.835392, -0.097728,
		-0.764109, -0.439502, -0.472203,
		37.877056, 37.526951, 37.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725449, 37.581940, 37.362591>,  <38.411934, 37.834602, 37.978275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725449, 37.581940, 37.362591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329464, 37.578915, 37.306133>,  <38.091873, 37.577099, 37.272259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329464, 37.578915, 37.306133>,  <38.725449, 37.581940, 37.362591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329464, 37.578915, 37.306133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128490, 0.367894, -0.920948,
		0.058893, -0.929837, -0.363228,
		-0.989961, -0.007566, -0.141141,
		38.032475, 37.576645, 37.263790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644325, 37.293457, 36.772305>,  <38.725449, 37.581940, 37.362591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644325, 37.293457, 36.772305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317501, 37.518494, 36.822739>,  <38.121407, 37.653515, 36.852997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317501, 37.518494, 36.822739>,  <38.644325, 37.293457, 36.772305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317501, 37.518494, 36.822739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058369, 0.298278, -0.952693,
		-0.573586, -0.771051, -0.276550,
		-0.817063, 0.562593, 0.126082,
		38.072384, 37.687271, 36.860565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484058, 37.475483, 36.053608>,  <38.644325, 37.293457, 36.772305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484058, 37.475483, 36.053608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184238, 37.655396, 36.247875>,  <38.004345, 37.763344, 36.364437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184238, 37.655396, 36.247875>,  <38.484058, 37.475483, 36.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184238, 37.655396, 36.247875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409004, 0.262196, -0.874053,
		-0.520471, -0.853787, -0.012568,
		-0.749550, 0.449779, 0.485667,
		37.959373, 37.790329, 36.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810783, 37.218262, 35.689880>,  <38.484058, 37.475483, 36.053608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810783, 37.218262, 35.689880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772861, 37.564983, 35.885700>,  <37.750107, 37.773018, 36.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772861, 37.564983, 35.885700>,  <37.810783, 37.218262, 35.689880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772861, 37.564983, 35.885700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627524, 0.329716, -0.705337,
		-0.772803, -0.374072, 0.512684,
		-0.094807, 0.866809, 0.489545,
		37.744419, 37.825027, 36.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078056, 37.400509, 35.943478>,  <37.810783, 37.218262, 35.689880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078056, 37.400509, 35.943478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311745, 37.709133, 35.842777>,  <37.451958, 37.894306, 35.782356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311745, 37.709133, 35.842777>,  <37.078056, 37.400509, 35.943478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311745, 37.709133, 35.842777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664629, 0.276810, -0.694006,
		-0.465782, 0.572773, 0.674521,
		0.584222, 0.771562, -0.251749,
		37.487011, 37.940601, 35.767254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676628, 37.910110, 35.574699>,  <37.078056, 37.400509, 35.943478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676628, 37.910110, 35.574699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040810, 38.055546, 35.495834>,  <37.259319, 38.142807, 35.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040810, 38.055546, 35.495834>,  <36.676628, 37.910110, 35.574699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040810, 38.055546, 35.495834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328980, 0.347676, -0.878006,
		-0.250681, 0.864249, 0.436156,
		0.910456, 0.363586, -0.197165,
		37.313946, 38.164623, 35.436684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558533, 38.604671, 35.248070>,  <36.676628, 37.910110, 35.574699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558533, 38.604671, 35.248070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928909, 38.492752, 35.146599>,  <37.151134, 38.425598, 35.085716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928909, 38.492752, 35.146599>,  <36.558533, 38.604671, 35.248070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928909, 38.492752, 35.146599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157512, 0.324379, -0.932721,
		0.343264, 0.903598, 0.256283,
		0.925937, -0.279802, -0.253675,
		37.206692, 38.408810, 35.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751110, 39.209724, 34.677959>,  <36.558533, 38.604671, 35.248070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751110, 39.209724, 34.677959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043098, 38.936787, 34.662182>,  <37.218292, 38.773026, 34.652714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043098, 38.936787, 34.662182>,  <36.751110, 39.209724, 34.677959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043098, 38.936787, 34.662182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028607, 0.027162, -0.999222,
		0.682882, 0.730528, 0.000308,
		0.729968, -0.682342, -0.039447,
		37.262089, 38.732082, 34.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180771, 39.478497, 34.280582>,  <36.751110, 39.209724, 34.677959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180771, 39.478497, 34.280582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294632, 39.095085, 34.274925>,  <37.362949, 38.865040, 34.271530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294632, 39.095085, 34.274925>,  <37.180771, 39.478497, 34.280582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294632, 39.095085, 34.274925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054304, 0.030849, -0.998048,
		0.957090, 0.283333, 0.060833,
		0.284656, -0.958525, -0.014139,
		37.380028, 38.807526, 34.270683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853931, 39.395733, 33.930759>,  <37.180771, 39.478497, 34.280582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853931, 39.395733, 33.930759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679821, 39.039867, 33.875584>,  <37.575356, 38.826347, 33.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679821, 39.039867, 33.875584>,  <37.853931, 39.395733, 33.930759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679821, 39.039867, 33.875584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275315, 0.014339, -0.961247,
		0.857166, -0.456389, 0.238697,
		-0.435280, -0.889665, -0.137941,
		37.549236, 38.772968, 33.834202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354294, 39.103317, 33.606251>,  <37.853931, 39.395733, 33.930759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354294, 39.103317, 33.606251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002174, 38.933987, 33.520592>,  <37.790901, 38.832386, 33.469196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002174, 38.933987, 33.520592>,  <38.354294, 39.103317, 33.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002174, 38.933987, 33.520592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208695, 0.059823, -0.976149,
		0.426046, -0.903997, 0.035685,
		-0.880302, -0.423332, -0.214147,
		37.738083, 38.806988, 33.456348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477478, 38.503666, 33.177830>,  <38.354294, 39.103317, 33.606251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477478, 38.503666, 33.177830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100388, 38.615566, 33.105156>,  <37.874134, 38.682709, 33.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100388, 38.615566, 33.105156>,  <38.477478, 38.503666, 33.177830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100388, 38.615566, 33.105156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192882, 0.012769, -0.981139,
		-0.272158, -0.959987, -0.065998,
		-0.942723, 0.279755, -0.181689,
		37.817570, 38.699493, 33.050648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342121, 38.140446, 32.503353>,  <38.477478, 38.503666, 33.177830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342121, 38.140446, 32.503353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023327, 38.377697, 32.548992>,  <37.832050, 38.520046, 32.576374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023327, 38.377697, 32.548992>,  <38.342121, 38.140446, 32.503353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023327, 38.377697, 32.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191988, -0.069662, -0.978922,
		-0.572679, -0.802087, 0.169394,
		-0.796981, 0.593130, 0.114097,
		37.784233, 38.555637, 32.583221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843819, 37.769485, 32.937843>,  <38.342121, 38.140446, 32.503353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843819, 37.769485, 32.937843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197639, 37.875759, 32.784492>,  <39.409931, 37.939522, 32.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197639, 37.875759, 32.784492>,  <38.843819, 37.769485, 32.937843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197639, 37.875759, 32.784492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339975, -0.929965, 0.139935,
		-0.319348, -0.254119, -0.912930,
		0.884553, 0.265686, -0.383377,
		39.463005, 37.955463, 32.669479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148041, 37.430416, 32.293282>,  <38.843819, 37.769485, 32.937843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148041, 37.430416, 32.293282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470245, 37.546371, 32.500015>,  <39.663567, 37.615944, 32.624058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470245, 37.546371, 32.500015>,  <39.148041, 37.430416, 32.293282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470245, 37.546371, 32.500015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296440, -0.952324, 0.072128,
		0.513107, 0.095112, -0.853039,
		0.805509, 0.289884, 0.516839,
		39.711899, 37.633335, 32.655067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708378, 37.050594, 32.010792>,  <39.148041, 37.430416, 32.293282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708378, 37.050594, 32.010792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855976, 37.124641, 32.375114>,  <39.944534, 37.169067, 32.593708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855976, 37.124641, 32.375114>,  <39.708378, 37.050594, 32.010792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855976, 37.124641, 32.375114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358833, -0.932358, 0.044121,
		0.857368, 0.310548, -0.410463,
		0.368997, 0.185116, 0.910809,
		39.966675, 37.180176, 32.648357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291256, 36.661140, 32.181183>,  <39.708378, 37.050594, 32.010792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291256, 36.661140, 32.181183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447449, 36.866741, 32.486687>,  <40.541164, 36.990101, 32.669987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447449, 36.866741, 32.486687>,  <40.291256, 36.661140, 32.181183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447449, 36.866741, 32.486687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518074, 0.808476, -0.279223,
		-0.761001, -0.286652, 0.581987,
		0.390483, 0.514001, 0.763758,
		40.564594, 37.020943, 32.715813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959408, 36.212578, 32.394287>,  <40.291256, 36.661140, 32.181183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959408, 36.212578, 32.394287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130814, 35.966686, 32.659157>,  <41.233658, 35.819149, 32.818077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130814, 35.966686, 32.659157>,  <40.959408, 36.212578, 32.394287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130814, 35.966686, 32.659157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798185, 0.600989, 0.041395,
		-0.423407, 0.510800, 0.748205,
		0.428518, -0.614732, 0.662176,
		41.259369, 35.782265, 32.857811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241905, 36.585846, 32.917477>,  <40.959408, 36.212578, 32.394287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241905, 36.585846, 32.917477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450909, 36.252945, 32.843353>,  <41.576309, 36.053204, 32.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450909, 36.252945, 32.843353>,  <41.241905, 36.585846, 32.917477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450909, 36.252945, 32.843353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841981, 0.537893, -0.041697,
		0.134377, -0.134236, 0.981796,
		0.522504, -0.832257, -0.185305,
		41.607658, 36.003269, 32.787762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802883, 37.015373, 32.732716>,  <41.241905, 36.585846, 32.917477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802883, 37.015373, 32.732716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910320, 37.399998, 32.755535>,  <41.974781, 37.630772, 32.769226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910320, 37.399998, 32.755535>,  <41.802883, 37.015373, 32.732716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910320, 37.399998, 32.755535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198790, 0.113278, -0.973473,
		-0.942519, 0.250124, 0.221575,
		0.268589, 0.961564, 0.057044,
		41.990898, 37.688469, 32.772648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355907, 37.162930, 33.183224>,  <41.802883, 37.015373, 32.732716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355907, 37.162930, 33.183224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508759, 36.799892, 33.113647>,  <42.600471, 36.582069, 33.071899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508759, 36.799892, 33.113647>,  <42.355907, 37.162930, 33.183224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508759, 36.799892, 33.113647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569028, 0.082783, 0.818140,
		-0.728136, -0.411616, 0.548078,
		0.382131, -0.907590, -0.173944,
		42.623398, 36.527615, 33.061462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591370, 36.909523, 33.830593>,  <42.355907, 37.162930, 33.183224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591370, 36.909523, 33.830593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768085, 36.620506, 33.617897>,  <42.874115, 36.447094, 33.490280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768085, 36.620506, 33.617897>,  <42.591370, 36.909523, 33.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768085, 36.620506, 33.617897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584525, -0.217799, 0.781597,
		-0.680552, -0.656120, 0.326123,
		0.441792, -0.722544, -0.531742,
		42.900623, 36.403744, 33.458374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627254, 36.211040, 34.194378>,  <42.591370, 36.909523, 33.830593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627254, 36.211040, 34.194378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935089, 36.232327, 33.939850>,  <43.119789, 36.245098, 33.787132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935089, 36.232327, 33.939850>,  <42.627254, 36.211040, 34.194378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935089, 36.232327, 33.939850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618334, -0.310807, 0.721846,
		-0.159357, -0.948982, -0.272100,
		0.769590, 0.053217, -0.636317,
		43.165966, 36.248291, 33.748955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842178, 35.481976, 33.904881>,  <42.627254, 36.211040, 34.194378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842178, 35.481976, 33.904881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105301, 35.779034, 33.955120>,  <43.263172, 35.957268, 33.985264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105301, 35.779034, 33.955120>,  <42.842178, 35.481976, 33.904881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105301, 35.779034, 33.955120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632125, -0.635008, 0.444053,
		0.409527, -0.212708, -0.887155,
		0.657804, 0.742644, 0.125594,
		43.302643, 36.001827, 33.992798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513268, 35.233585, 33.699089>,  <42.842178, 35.481976, 33.904881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513268, 35.233585, 33.699089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598999, 35.509510, 33.975700>,  <43.650440, 35.675064, 34.141666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598999, 35.509510, 33.975700>,  <43.513268, 35.233585, 33.699089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598999, 35.509510, 33.975700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646693, -0.630805, 0.428804,
		0.732018, 0.355303, -0.581300,
		0.214331, 0.689815, 0.691533,
		43.663300, 35.716454, 34.183159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205662, 35.452930, 33.707481>,  <43.513268, 35.233585, 33.699089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205662, 35.452930, 33.707481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044590, 35.508469, 34.069382>,  <43.947948, 35.541790, 34.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044590, 35.508469, 34.069382>,  <44.205662, 35.452930, 33.707481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044590, 35.508469, 34.069382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678598, -0.618060, 0.396870,
		0.614293, 0.773773, 0.154661,
		-0.402677, 0.138842, 0.904751,
		43.923786, 35.550121, 34.340809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530190, 35.920429, 34.270267>,  <44.205662, 35.452930, 33.707481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530190, 35.920429, 34.270267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321659, 35.609375, 34.410835>,  <44.196541, 35.422741, 34.495178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321659, 35.609375, 34.410835>,  <44.530190, 35.920429, 34.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321659, 35.609375, 34.410835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848297, -0.427487, 0.312485,
		-0.092770, 0.461020, 0.882527,
		-0.521331, -0.777635, 0.351424,
		44.165260, 35.376083, 34.516262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826389, 35.627293, 35.004578>,  <44.530190, 35.920429, 34.270267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826389, 35.627293, 35.004578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683212, 35.345348, 34.759617>,  <44.597305, 35.176182, 34.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683212, 35.345348, 34.759617>,  <44.826389, 35.627293, 35.004578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683212, 35.345348, 34.759617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852785, -0.513906, 0.093048,
		-0.380305, -0.488944, 0.785049,
		-0.357946, -0.704864, -0.612406,
		44.575829, 35.133888, 34.575893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882492, 34.954922, 35.325012>,  <44.826389, 35.627293, 35.004578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882492, 34.954922, 35.325012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892479, 34.941761, 34.925354>,  <44.898472, 34.933865, 34.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892479, 34.941761, 34.925354>,  <44.882492, 34.954922, 35.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892479, 34.941761, 34.925354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944177, -0.327640, 0.034381,
		-0.328492, -0.944230, 0.022885,
		0.024965, -0.032901, -0.999147,
		44.899967, 34.931892, 34.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488728, 34.720829, 35.513283>,  <44.882492, 34.954922, 35.325012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488728, 34.720829, 35.513283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704578, 34.905518, 35.231682>,  <45.834087, 35.016331, 35.062721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704578, 34.905518, 35.231682>,  <45.488728, 34.720829, 35.513283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704578, 34.905518, 35.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797748, -0.547675, 0.252288,
		-0.269078, -0.697758, -0.663876,
		0.539624, 0.461720, -0.704003,
		45.866467, 35.044033, 35.020481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853714, 34.192459, 35.036835>,  <45.488728, 34.720829, 35.513283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853714, 34.192459, 35.036835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072216, 34.522305, 34.978027>,  <46.203316, 34.720211, 34.942745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072216, 34.522305, 34.978027>,  <45.853714, 34.192459, 35.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072216, 34.522305, 34.978027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825662, -0.500550, 0.260253,
		0.141021, -0.263550, -0.954282,
		0.546255, 0.824616, -0.147015,
		46.236092, 34.769688, 34.933922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485687, 34.078903, 34.560829>,  <45.853714, 34.192459, 35.036835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485687, 34.078903, 34.560829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570934, 34.414906, 34.760418>,  <46.622082, 34.616505, 34.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570934, 34.414906, 34.760418>,  <46.485687, 34.078903, 34.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570934, 34.414906, 34.760418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885967, -0.381449, 0.263741,
		0.411875, 0.385863, -0.825511,
		0.213122, 0.840004, 0.498972,
		46.634872, 34.666908, 34.910110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233170, 34.403053, 34.354053>,  <46.485687, 34.078903, 34.560829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233170, 34.403053, 34.354053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146477, 34.492237, 34.734226>,  <47.094460, 34.545746, 34.962330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146477, 34.492237, 34.734226>,  <47.233170, 34.403053, 34.354053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146477, 34.492237, 34.734226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951145, -0.171061, 0.257024,
		0.219887, 0.959702, -0.174990,
		-0.216733, 0.222957, 0.950430,
		47.081455, 34.559124, 35.019356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648174, 35.030582, 34.666462>,  <47.233170, 34.403053, 34.354053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648174, 35.030582, 34.666462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560337, 34.746868, 34.934399>,  <47.507633, 34.576637, 35.095161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560337, 34.746868, 34.934399>,  <47.648174, 35.030582, 34.666462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560337, 34.746868, 34.934399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946351, 0.011967, 0.322918,
		-0.237058, 0.704816, 0.668609,
		-0.219596, -0.709289, 0.669840,
		47.494457, 34.534081, 35.135349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.074562, 33.129211, 24.895651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680164, 33.062771, 24.901619>,  <34.443527, 33.022907, 24.905201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.680164, 33.062771, 24.901619>,  <35.074562, 33.129211, 24.895651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680164, 33.062771, 24.901619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022836, -0.045836, 0.998688,
		-0.165201, 0.985043, 0.048987,
		-0.985996, -0.166103, 0.014922,
		34.384365, 33.012939, 24.906096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767426, 33.751556, 25.244644>,  <35.074562, 33.129211, 24.895651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767426, 33.751556, 25.244644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509323, 33.445999, 25.248676>,  <34.354462, 33.262665, 25.251095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509323, 33.445999, 25.248676>,  <34.767426, 33.751556, 25.244644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509323, 33.445999, 25.248676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242859, 0.217614, 0.945338,
		-0.724335, 0.607540, -0.325937,
		-0.645259, -0.763898, 0.010079,
		34.315746, 33.216831, 25.251699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169468, 33.994072, 25.601269>,  <34.767426, 33.751556, 25.244644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169468, 33.994072, 25.601269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157566, 33.596130, 25.640024>,  <34.150425, 33.357365, 25.663277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157566, 33.596130, 25.640024>,  <34.169468, 33.994072, 25.601269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157566, 33.596130, 25.640024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255260, 0.101279, 0.961553,
		-0.966415, 0.003876, -0.256959,
		-0.029751, -0.994850, 0.096888,
		34.148640, 33.297676, 25.669090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551098, 33.869034, 25.987055>,  <34.169468, 33.994072, 25.601269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551098, 33.869034, 25.987055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750565, 33.525066, 26.030651>,  <33.870243, 33.318687, 26.056808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750565, 33.525066, 26.030651>,  <33.551098, 33.869034, 25.987055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750565, 33.525066, 26.030651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381215, -0.104647, 0.918545,
		-0.778466, -0.499593, -0.379996,
		0.498664, -0.859916, 0.108989,
		33.900166, 33.267090, 26.063347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083252, 33.402603, 26.377539>,  <33.551098, 33.869034, 25.987055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083252, 33.402603, 26.377539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439865, 33.228195, 26.426615>,  <33.653831, 33.123550, 26.456060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439865, 33.228195, 26.426615>,  <33.083252, 33.402603, 26.377539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439865, 33.228195, 26.426615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198075, -0.131689, 0.971300,
		-0.407350, -0.890249, -0.203770,
		0.891533, -0.436021, 0.122692,
		33.707325, 33.097389, 26.463423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084999, 32.735348, 26.820171>,  <33.083252, 33.402603, 26.377539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084999, 32.735348, 26.820171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449413, 32.897949, 26.847815>,  <33.668060, 32.995510, 26.864401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.449413, 32.897949, 26.847815>,  <33.084999, 32.735348, 26.820171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449413, 32.897949, 26.847815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069964, -0.012772, 0.997468,
		0.406353, -0.913561, 0.016804,
		0.911034, 0.406500, 0.069106,
		33.722725, 33.019897, 26.868546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608688, 32.313049, 27.255556>,  <33.084999, 32.735348, 26.820171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608688, 32.313049, 27.255556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770138, 32.678101, 27.281460>,  <33.867008, 32.897133, 27.297003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770138, 32.678101, 27.281460>,  <33.608688, 32.313049, 27.255556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770138, 32.678101, 27.281460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031368, -0.084545, 0.995926,
		0.914386, -0.399951, -0.062752,
		0.403627, 0.912629, 0.064761,
		33.891228, 32.951889, 27.300888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271267, 32.304062, 27.742657>,  <33.608688, 32.313049, 27.255556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271267, 32.304062, 27.742657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.124126, 32.676003, 27.739574>,  <34.035843, 32.899166, 27.737724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.124126, 32.676003, 27.739574>,  <34.271267, 32.304062, 27.742657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124126, 32.676003, 27.739574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175197, 0.077441, 0.981483,
		0.913233, 0.359687, -0.191394,
		-0.367848, 0.929854, -0.007706,
		34.013771, 32.954960, 27.737263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545116, 32.552040, 28.275078>,  <34.271267, 32.304062, 27.742657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545116, 32.552040, 28.275078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288277, 32.844543, 28.183018>,  <34.134171, 33.020046, 28.127781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288277, 32.844543, 28.183018>,  <34.545116, 32.552040, 28.275078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288277, 32.844543, 28.183018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114329, 0.388202, 0.914455,
		0.758045, 0.560862, -0.332869,
		-0.642104, 0.731254, -0.230152,
		34.095646, 33.063919, 28.113972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824768, 33.168884, 28.638285>,  <34.545116, 32.552040, 28.275078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824768, 33.168884, 28.638285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450993, 33.281734, 28.551359>,  <34.226727, 33.349445, 28.499203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.450993, 33.281734, 28.551359>,  <34.824768, 33.168884, 28.638285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450993, 33.281734, 28.551359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051432, 0.496921, 0.866270,
		0.352386, 0.820655, -0.449833,
		-0.934440, 0.282126, -0.217316,
		34.170662, 33.366371, 28.486164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812885, 33.805519, 28.455744>,  <34.824768, 33.168884, 28.638285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812885, 33.805519, 28.455744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451675, 33.723534, 28.606762>,  <34.234951, 33.674343, 28.697372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.451675, 33.723534, 28.606762>,  <34.812885, 33.805519, 28.455744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451675, 33.723534, 28.606762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172144, 0.632551, 0.755146,
		-0.393596, 0.746906, -0.535924,
		-0.903022, -0.204966, 0.377545,
		34.180767, 33.662045, 28.720026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435307, 34.496212, 28.708412>,  <34.812885, 33.805519, 28.455744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435307, 34.496212, 28.708412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223106, 34.220184, 28.905338>,  <34.095787, 34.054569, 29.023495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223106, 34.220184, 28.905338>,  <34.435307, 34.496212, 28.708412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223106, 34.220184, 28.905338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045413, 0.556808, 0.829399,
		-0.846469, 0.462351, -0.264047,
		-0.530497, -0.690070, 0.492317,
		34.063957, 34.013165, 29.053034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913445, 34.928379, 29.126577>,  <34.435307, 34.496212, 28.708412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913445, 34.928379, 29.126577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.927784, 34.564678, 29.292459>,  <33.936390, 34.346458, 29.391989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.927784, 34.564678, 29.292459>,  <33.913445, 34.928379, 29.126577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927784, 34.564678, 29.292459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042009, 0.415975, 0.908405,
		-0.998474, -0.015146, 0.053110,
		0.035851, -0.909250, 0.414704,
		33.938538, 34.291904, 29.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471710, 34.932564, 29.773079>,  <33.913445, 34.928379, 29.126577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471710, 34.932564, 29.773079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.712860, 34.616455, 29.816912>,  <33.857552, 34.426788, 29.843210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.712860, 34.616455, 29.816912>,  <33.471710, 34.932564, 29.773079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712860, 34.616455, 29.816912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110395, 0.218655, 0.969538,
		-0.790160, -0.572414, 0.219064,
		0.602876, -0.790274, 0.109580,
		33.893723, 34.379372, 29.849787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209698, 34.647671, 30.343790>,  <33.471710, 34.932564, 29.773079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209698, 34.647671, 30.343790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585236, 34.516521, 30.301697>,  <33.810558, 34.437832, 30.276442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585236, 34.516521, 30.301697>,  <33.209698, 34.647671, 30.343790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585236, 34.516521, 30.301697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191136, 0.241986, 0.951268,
		-0.286432, -0.913204, 0.289855,
		0.938842, -0.327875, -0.105234,
		33.866890, 34.418159, 30.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487621, 34.403748, 31.026867>,  <33.209698, 34.647671, 30.343790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487621, 34.403748, 31.026867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848427, 34.451904, 30.861036>,  <34.064911, 34.480797, 30.761538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848427, 34.451904, 30.861036>,  <33.487621, 34.403748, 31.026867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848427, 34.451904, 30.861036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389818, 0.185497, 0.902016,
		0.185497, -0.975242, 0.120391,
		-0.902016, -0.120391, 0.414576,
		34.119030, 34.488022, 30.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023792, 34.105793, 31.505701>,  <33.487621, 34.403748, 31.026867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023792, 34.105793, 31.505701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232323, 34.343037, 31.260281>,  <34.357441, 34.485382, 31.113028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232323, 34.343037, 31.260281>,  <34.023792, 34.105793, 31.505701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232323, 34.343037, 31.260281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551667, 0.314306, 0.772577,
		0.651062, -0.741241, -0.163340,
		0.521327, 0.593105, -0.613551,
		34.388721, 34.520969, 31.076216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718792, 34.005821, 31.685514>,  <34.023792, 34.105793, 31.505701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718792, 34.005821, 31.685514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722878, 34.354099, 31.488831>,  <34.725330, 34.563068, 31.370819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722878, 34.354099, 31.488831>,  <34.718792, 34.005821, 31.685514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722878, 34.354099, 31.488831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667746, 0.360087, 0.651500,
		0.744319, -0.334995, -0.577726,
		0.010218, 0.870698, -0.491711,
		34.725945, 34.615311, 31.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357155, 34.244732, 31.731127>,  <34.718792, 34.005821, 31.685514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357155, 34.244732, 31.731127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172592, 34.590645, 31.651867>,  <35.061855, 34.798191, 31.604311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172592, 34.590645, 31.651867>,  <35.357155, 34.244732, 31.731127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172592, 34.590645, 31.651867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676990, 0.487541, 0.551351,
		0.573403, 0.120250, -0.810400,
		-0.461403, 0.864779, -0.198149,
		35.034172, 34.850079, 31.592422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866852, 34.701038, 31.515331>,  <35.357155, 34.244732, 31.731127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866852, 34.701038, 31.515331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562122, 34.923710, 31.647835>,  <35.379284, 35.057312, 31.727337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562122, 34.923710, 31.647835>,  <35.866852, 34.701038, 31.515331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562122, 34.923710, 31.647835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635342, 0.542342, 0.549733,
		0.126370, 0.629262, -0.766851,
		-0.761821, 0.556682, 0.331261,
		35.333576, 35.090714, 31.747213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977791, 35.464630, 31.362341>,  <35.866852, 34.701038, 31.515331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977791, 35.464630, 31.362341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709057, 35.444447, 31.657932>,  <35.547817, 35.432335, 31.835287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709057, 35.444447, 31.657932>,  <35.977791, 35.464630, 31.362341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709057, 35.444447, 31.657932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615856, 0.516247, 0.595156,
		-0.411528, 0.854952, -0.315756,
		-0.671838, -0.050463, 0.738977,
		35.507507, 35.429306, 31.879625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955639, 36.181602, 31.587069>,  <35.977791, 35.464630, 31.362341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955639, 36.181602, 31.587069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832249, 35.941631, 31.882345>,  <35.758213, 35.797649, 32.059513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832249, 35.941631, 31.882345>,  <35.955639, 36.181602, 31.587069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832249, 35.941631, 31.882345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612592, 0.468399, 0.636658,
		-0.727718, 0.648605, 0.223021,
		-0.308477, -0.599928, 0.738192,
		35.739704, 35.761654, 32.103802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441193, 36.083370, 32.121674>,  <35.955639, 36.181602, 31.587069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441193, 36.083370, 32.121674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834641, 36.137543, 32.169262>,  <37.070709, 36.170048, 32.197815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834641, 36.137543, 32.169262>,  <36.441193, 36.083370, 32.121674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834641, 36.137543, 32.169262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131769, -0.089792, -0.987205,
		-0.123016, 0.986709, -0.106167,
		0.983618, 0.135432, 0.118972,
		37.129726, 36.178173, 32.204952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527260, 36.572670, 31.766846>,  <36.441193, 36.083370, 32.121674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527260, 36.572670, 31.766846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882072, 36.391579, 31.803104>,  <37.094959, 36.282925, 31.824860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882072, 36.391579, 31.803104>,  <36.527260, 36.572670, 31.766846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882072, 36.391579, 31.803104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088187, -0.026585, -0.995749,
		0.453209, 0.891254, 0.016343,
		0.887031, -0.452724, 0.090646,
		37.148182, 36.255760, 31.830297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926430, 36.911304, 31.339550>,  <36.527260, 36.572670, 31.766846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926430, 36.911304, 31.339550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113770, 36.560818, 31.384989>,  <37.226173, 36.350525, 31.412252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113770, 36.560818, 31.384989>,  <36.926430, 36.911304, 31.339550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113770, 36.560818, 31.384989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257055, 0.012120, -0.966321,
		0.845326, 0.481772, 0.230911,
		0.468345, -0.876213, 0.113597,
		37.254272, 36.297955, 31.419067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568554, 36.957943, 30.984743>,  <36.926430, 36.911304, 31.339550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568554, 36.957943, 30.984743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525814, 36.560783, 31.005629>,  <37.500168, 36.322487, 31.018160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525814, 36.560783, 31.005629>,  <37.568554, 36.957943, 30.984743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525814, 36.560783, 31.005629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490926, -0.098353, -0.865632,
		0.864624, -0.066861, 0.497951,
		-0.106852, -0.992903, 0.052215,
		37.493759, 36.262913, 31.021294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193089, 36.758991, 30.576786>,  <37.568554, 36.957943, 30.984743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193089, 36.758991, 30.576786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937042, 36.456520, 30.631128>,  <37.783417, 36.275040, 30.663734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937042, 36.456520, 30.631128>,  <38.193089, 36.758991, 30.576786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937042, 36.456520, 30.631128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007383, -0.182879, -0.983108,
		0.768245, -0.628297, 0.122646,
		-0.640113, -0.756173, 0.135857,
		37.745007, 36.229668, 30.671885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435143, 36.215775, 30.209946>,  <38.193089, 36.758991, 30.576786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435143, 36.215775, 30.209946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044971, 36.135212, 30.245684>,  <37.810871, 36.086872, 30.267126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044971, 36.135212, 30.245684>,  <38.435143, 36.215775, 30.209946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044971, 36.135212, 30.245684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017469, -0.333526, -0.942579,
		0.219646, -0.920974, 0.321811,
		-0.975423, -0.201412, 0.089346,
		37.752346, 36.074787, 30.272488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376236, 35.554161, 29.848934>,  <38.435143, 36.215775, 30.209946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376236, 35.554161, 29.848934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003475, 35.698532, 29.834566>,  <37.779819, 35.785152, 29.825945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003475, 35.698532, 29.834566>,  <38.376236, 35.554161, 29.848934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003475, 35.698532, 29.834566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063085, -0.258805, -0.963867,
		-0.357179, -0.895965, 0.263950,
		-0.931904, 0.360924, -0.035918,
		37.723904, 35.806808, 29.823792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984608, 34.975708, 29.553246>,  <38.376236, 35.554161, 29.848934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984608, 34.975708, 29.553246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740822, 35.289944, 29.510530>,  <37.594551, 35.478485, 29.484901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740822, 35.289944, 29.510530>,  <37.984608, 34.975708, 29.553246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740822, 35.289944, 29.510530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102814, -0.211874, -0.971874,
		-0.786120, -0.581342, 0.209899,
		-0.609463, 0.785590, -0.106789,
		37.557983, 35.525620, 29.478495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388065, 34.781654, 29.140965>,  <37.984608, 34.975708, 29.553246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388065, 34.781654, 29.140965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437237, 35.178585, 29.135595>,  <37.466740, 35.416744, 29.132374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437237, 35.178585, 29.135595>,  <37.388065, 34.781654, 29.140965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437237, 35.178585, 29.135595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103720, -0.000606, -0.994606,
		-0.986981, 0.123657, 0.102850,
		0.122927, 0.992325, -0.013424,
		37.474113, 35.476284, 29.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982182, 34.891514, 28.568201>,  <37.388065, 34.781654, 29.140965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982182, 34.891514, 28.568201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144848, 35.254539, 28.610075>,  <37.242447, 35.472355, 28.635201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144848, 35.254539, 28.610075>,  <36.982182, 34.891514, 28.568201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144848, 35.254539, 28.610075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048825, 0.092835, -0.994484,
		-0.912272, 0.409533, -0.006559,
		0.406665, 0.907560, 0.104686,
		37.266846, 35.526806, 28.641481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572239, 35.461586, 28.273823>,  <36.982182, 34.891514, 28.568201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572239, 35.461586, 28.273823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966827, 35.526184, 28.262587>,  <37.203583, 35.564945, 28.255844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966827, 35.526184, 28.262587>,  <36.572239, 35.461586, 28.273823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966827, 35.526184, 28.262587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025654, -0.017153, -0.999524,
		-0.161904, 0.986724, -0.012778,
		0.986473, 0.161499, -0.028090,
		37.262768, 35.574635, 28.254160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643436, 35.785362, 27.620050>,  <36.572239, 35.461586, 28.273823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643436, 35.785362, 27.620050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029186, 35.733898, 27.712503>,  <37.260635, 35.703018, 27.767975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029186, 35.733898, 27.712503>,  <36.643436, 35.785362, 27.620050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029186, 35.733898, 27.712503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214290, -0.132334, -0.967764,
		0.155103, 0.982819, -0.100048,
		0.964377, -0.128664, 0.231134,
		37.318501, 35.695297, 27.781843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922241, 36.248047, 27.240646>,  <36.643436, 35.785362, 27.620050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922241, 36.248047, 27.240646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189384, 35.960541, 27.317942>,  <37.349670, 35.788036, 27.364319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189384, 35.960541, 27.317942>,  <36.922241, 36.248047, 27.240646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189384, 35.960541, 27.317942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284713, 0.006831, -0.958589,
		0.687683, 0.695217, 0.209204,
		0.667856, -0.718768, 0.193240,
		37.389740, 35.744911, 27.375914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521618, 36.370106, 26.814281>,  <36.922241, 36.248047, 27.240646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521618, 36.370106, 26.814281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518257, 35.980751, 26.905880>,  <37.516243, 35.747139, 26.960838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518257, 35.980751, 26.905880>,  <37.521618, 36.370106, 26.814281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518257, 35.980751, 26.905880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039272, -0.229149, -0.972599,
		0.999193, 0.000825, 0.040152,
		-0.008398, -0.973391, 0.228997,
		37.515739, 35.688732, 26.974579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035660, 36.073490, 26.354324>,  <37.521618, 36.370106, 26.814281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035660, 36.073490, 26.354324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.810188, 35.780701, 26.507416>,  <37.674908, 35.605026, 26.599270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.810188, 35.780701, 26.507416>,  <38.035660, 36.073490, 26.354324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810188, 35.780701, 26.507416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095752, -0.402323, -0.910477,
		0.820427, -0.549861, 0.156692,
		-0.563677, -0.731976, 0.382727,
		37.641087, 35.561108, 26.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232944, 35.550137, 25.984985>,  <38.035660, 36.073490, 26.354324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232944, 35.550137, 25.984985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877373, 35.442394, 26.133177>,  <37.664032, 35.377747, 26.222092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877373, 35.442394, 26.133177>,  <38.232944, 35.550137, 25.984985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877373, 35.442394, 26.133177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287046, -0.302716, -0.908828,
		0.356951, -0.914226, 0.191774,
		-0.888927, -0.269359, 0.370479,
		37.610695, 35.361588, 26.244320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105579, 34.966339, 25.691483>,  <38.232944, 35.550137, 25.984985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105579, 34.966339, 25.691483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745789, 35.079266, 25.824894>,  <37.529915, 35.147022, 25.904940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745789, 35.079266, 25.824894>,  <38.105579, 34.966339, 25.691483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745789, 35.079266, 25.824894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434355, -0.494245, -0.753032,
		-0.047750, -0.822203, 0.567188,
		-0.899475, 0.282318, 0.333528,
		37.475945, 35.163960, 25.924952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657078, 34.363712, 25.715887>,  <38.105579, 34.966339, 25.691483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657078, 34.363712, 25.715887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431061, 34.691010, 25.673534>,  <37.295452, 34.887386, 25.648123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431061, 34.691010, 25.673534>,  <37.657078, 34.363712, 25.715887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431061, 34.691010, 25.673534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438272, -0.406394, -0.801724,
		-0.699035, -0.406599, 0.588241,
		-0.565038, 0.818242, -0.105883,
		37.261551, 34.936481, 25.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.439709, 34.105061, 26.094498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498158, 34.427227, 25.864733>,  <36.533226, 34.620529, 25.726873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498158, 34.427227, 25.864733>,  <36.439709, 34.105061, 26.094498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498158, 34.427227, 25.864733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482730, -0.448771, -0.752048,
		-0.863493, 0.387175, 0.323225,
		0.146120, 0.805419, -0.574412,
		36.541992, 34.668854, 25.692410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770123, 34.228981, 25.716438>,  <36.439709, 34.105061, 26.094498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770123, 34.228981, 25.716438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058998, 34.414124, 25.510832>,  <36.232323, 34.525208, 25.387468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058998, 34.414124, 25.510832>,  <35.770123, 34.228981, 25.716438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058998, 34.414124, 25.510832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368883, -0.370908, -0.852263,
		-0.585127, 0.805104, -0.097125,
		0.722185, 0.462855, -0.514018,
		36.275654, 34.552979, 25.356627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413288, 34.479786, 25.113558>,  <35.770123, 34.228981, 25.716438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413288, 34.479786, 25.113558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802326, 34.538540, 25.041462>,  <36.035748, 34.573792, 24.998205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802326, 34.538540, 25.041462>,  <35.413288, 34.479786, 25.113558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802326, 34.538540, 25.041462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180551, -0.011314, -0.983501,
		-0.146503, 0.989088, 0.015517,
		0.972594, 0.146887, -0.180238,
		36.094105, 34.582607, 24.987391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493454, 34.970631, 24.689075>,  <35.413288, 34.479786, 25.113558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493454, 34.970631, 24.689075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825481, 34.755165, 24.631348>,  <36.024696, 34.625885, 24.596710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825481, 34.755165, 24.631348>,  <35.493454, 34.970631, 24.689075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825481, 34.755165, 24.631348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143530, 0.043716, -0.988680,
		0.538877, 0.841385, -0.041027,
		0.830067, -0.538666, -0.144322,
		36.074501, 34.593567, 24.588051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749447, 35.210705, 24.088470>,  <35.493454, 34.970631, 24.689075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749447, 35.210705, 24.088470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977528, 34.882114, 24.085594>,  <36.114376, 34.684959, 24.083868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977528, 34.882114, 24.085594>,  <35.749447, 35.210705, 24.088470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977528, 34.882114, 24.085594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054681, 0.046686, -0.997412,
		0.819682, 0.568333, 0.071539,
		0.570202, -0.821473, -0.007191,
		36.148590, 34.635674, 24.083437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287987, 35.348778, 23.637590>,  <35.749447, 35.210705, 24.088470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287987, 35.348778, 23.637590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223503, 34.955551, 23.672430>,  <36.184814, 34.719616, 23.693335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223503, 34.955551, 23.672430>,  <36.287987, 35.348778, 23.637590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223503, 34.955551, 23.672430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012630, -0.086191, -0.996199,
		0.986839, -0.161696, 0.001478,
		-0.161208, -0.983069, 0.087098,
		36.175140, 34.660629, 23.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707603, 35.073612, 23.101763>,  <36.287987, 35.348778, 23.637590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707603, 35.073612, 23.101763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481201, 34.760529, 23.205299>,  <36.345360, 34.572678, 23.267422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481201, 34.760529, 23.205299>,  <36.707603, 35.073612, 23.101763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481201, 34.760529, 23.205299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062394, -0.353745, -0.933259,
		0.822037, -0.512079, 0.249058,
		-0.566005, -0.782713, 0.258840,
		36.311401, 34.525715, 23.282951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992100, 34.581223, 22.726332>,  <36.707603, 35.073612, 23.101763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992100, 34.581223, 22.726332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648663, 34.412563, 22.842974>,  <36.442600, 34.311367, 22.912960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648663, 34.412563, 22.842974>,  <36.992100, 34.581223, 22.726332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648663, 34.412563, 22.842974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093727, -0.430120, -0.897893,
		0.504022, -0.798254, 0.329777,
		-0.858590, -0.421649, 0.291607,
		36.391087, 34.286068, 22.930456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022736, 33.877903, 22.618643>,  <36.992100, 34.581223, 22.726332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022736, 33.877903, 22.618643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630238, 33.952145, 22.639463>,  <36.394737, 33.996689, 22.651957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630238, 33.952145, 22.639463>,  <37.022736, 33.877903, 22.618643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630238, 33.952145, 22.639463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123785, -0.399717, -0.908242,
		-0.147766, -0.897652, 0.415195,
		-0.981245, 0.185602, 0.052051,
		36.335865, 34.007824, 22.655079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589508, 33.293602, 22.613934>,  <37.022736, 33.877903, 22.618643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589508, 33.293602, 22.613934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369705, 33.582264, 22.445524>,  <36.237823, 33.755463, 22.344479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369705, 33.582264, 22.445524>,  <36.589508, 33.293602, 22.613934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369705, 33.582264, 22.445524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010403, -0.509792, -0.860235,
		-0.835427, -0.468322, 0.287640,
		-0.549503, 0.721656, -0.421022,
		36.204853, 33.798759, 22.319218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182972, 32.920788, 22.064487>,  <36.589508, 33.293602, 22.613934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182972, 32.920788, 22.064487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152695, 33.307087, 21.965206>,  <36.134529, 33.538868, 21.905638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152695, 33.307087, 21.965206>,  <36.182972, 32.920788, 22.064487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152695, 33.307087, 21.965206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219008, -0.258940, -0.940737,
		-0.972783, -0.016846, 0.231105,
		-0.075690, 0.965747, -0.248203,
		36.129990, 33.596809, 21.890745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542572, 32.976837, 21.633154>,  <36.182972, 32.920788, 22.064487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542572, 32.976837, 21.633154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792946, 33.279324, 21.556889>,  <35.943169, 33.460815, 21.511129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792946, 33.279324, 21.556889>,  <35.542572, 32.976837, 21.633154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792946, 33.279324, 21.556889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068554, -0.190181, -0.979352,
		-0.776860, 0.626078, -0.067199,
		0.625931, 0.756213, -0.190664,
		35.980724, 33.506187, 21.499689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220913, 33.143673, 20.893986>,  <35.542572, 32.976837, 21.633154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220913, 33.143673, 20.893986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577221, 33.319622, 20.939682>,  <35.791004, 33.425190, 20.967100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577221, 33.319622, 20.939682>,  <35.220913, 33.143673, 20.893986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577221, 33.319622, 20.939682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174387, -0.098699, -0.979718,
		-0.419672, 0.892622, -0.164625,
		0.890766, 0.439869, 0.114240,
		35.844452, 33.451584, 20.973953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288868, 33.637718, 20.314447>,  <35.220913, 33.143673, 20.893986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288868, 33.637718, 20.314447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659267, 33.570644, 20.449741>,  <35.881508, 33.530399, 20.530918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659267, 33.570644, 20.449741>,  <35.288868, 33.637718, 20.314447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659267, 33.570644, 20.449741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348472, 0.035006, -0.936665,
		0.145227, 0.985218, 0.090851,
		0.926000, -0.167688, 0.338237,
		35.937069, 33.520336, 20.551212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656845, 34.137482, 20.025209>,  <35.288868, 33.637718, 20.314447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656845, 34.137482, 20.025209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936550, 33.861023, 20.098261>,  <36.104374, 33.695148, 20.142092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936550, 33.861023, 20.098261>,  <35.656845, 34.137482, 20.025209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936550, 33.861023, 20.098261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274997, 0.024253, -0.961139,
		0.659857, 0.722309, 0.207022,
		0.699261, -0.691145, 0.182630,
		36.146328, 33.653679, 20.153049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254631, 34.377556, 19.857950>,  <35.656845, 34.137482, 20.025209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254631, 34.377556, 19.857950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315762, 33.982460, 19.845259>,  <36.352440, 33.745403, 19.837643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315762, 33.982460, 19.845259>,  <36.254631, 34.377556, 19.857950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315762, 33.982460, 19.845259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276871, 0.073616, -0.958083,
		0.948676, 0.137636, 0.284728,
		0.152828, -0.987743, -0.031730,
		36.361610, 33.686138, 19.835739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851055, 34.345814, 19.336670>,  <36.254631, 34.377556, 19.857950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851055, 34.345814, 19.336670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745426, 33.962700, 19.382118>,  <36.682049, 33.732830, 19.409388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745426, 33.962700, 19.382118>,  <36.851055, 34.345814, 19.336670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745426, 33.962700, 19.382118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038762, -0.128244, -0.990985,
		0.963724, -0.257287, 0.070992,
		-0.264072, -0.957788, 0.113619,
		36.666206, 33.675365, 19.416204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334415, 33.915268, 18.994961>,  <36.851055, 34.345814, 19.336670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334415, 33.915268, 18.994961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987576, 33.716129, 19.001804>,  <36.779472, 33.596645, 19.005911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987576, 33.716129, 19.001804>,  <37.334415, 33.915268, 18.994961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987576, 33.716129, 19.001804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036224, 0.028759, -0.998930,
		0.496821, -0.866789, -0.042971,
		-0.867097, -0.497845, 0.017111,
		36.727448, 33.566776, 19.006937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474972, 33.462082, 18.494482>,  <37.334415, 33.915268, 18.994961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474972, 33.462082, 18.494482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082073, 33.411385, 18.549803>,  <36.846333, 33.380966, 18.582996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082073, 33.411385, 18.549803>,  <37.474972, 33.462082, 18.494482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082073, 33.411385, 18.549803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132871, -0.050399, -0.989851,
		0.132426, -0.990654, 0.032664,
		-0.982247, -0.126742, 0.138304,
		36.787399, 33.373363, 18.591293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258400, 33.041275, 17.865137>,  <37.474972, 33.462082, 18.494482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258400, 33.041275, 17.865137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930664, 33.220905, 18.007692>,  <36.734024, 33.328686, 18.093225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930664, 33.220905, 18.007692>,  <37.258400, 33.041275, 17.865137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930664, 33.220905, 18.007692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276622, 0.234823, -0.931847,
		-0.502160, -0.862083, -0.068175,
		-0.819339, 0.449077, 0.356390,
		36.684864, 33.355629, 18.114609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776291, 32.664906, 17.523746>,  <37.258400, 33.041275, 17.865137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776291, 32.664906, 17.523746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600727, 32.999294, 17.655508>,  <36.495388, 33.199928, 17.734566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600727, 32.999294, 17.655508>,  <36.776291, 32.664906, 17.523746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600727, 32.999294, 17.655508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450217, 0.112657, -0.885784,
		-0.777604, -0.537078, 0.326925,
		-0.438904, 0.835976, 0.329404,
		36.469055, 33.250088, 17.754330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104717, 32.695721, 17.145754>,  <36.776291, 32.664906, 17.523746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104717, 32.695721, 17.145754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192169, 33.058575, 17.289595>,  <36.244640, 33.276287, 17.375900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192169, 33.058575, 17.289595>,  <36.104717, 32.695721, 17.145754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192169, 33.058575, 17.289595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248741, 0.408153, -0.878372,
		-0.943572, 0.102591, 0.314876,
		0.218631, 0.907130, 0.359603,
		36.257759, 33.330715, 17.397476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374943, 32.360409, 16.972862>,  <36.104717, 32.695721, 17.145754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374943, 32.360409, 16.972862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495728, 32.719486, 16.844513>,  <35.568199, 32.934933, 16.767504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495728, 32.719486, 16.844513>,  <35.374943, 32.360409, 16.972862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495728, 32.719486, 16.844513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666744, -0.041704, -0.744119,
		-0.681374, 0.438639, 0.585940,
		0.301964, 0.897695, -0.320876,
		35.586315, 32.988796, 16.748251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953445, 32.942478, 17.112238>,  <35.374943, 32.360409, 16.972862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953445, 32.942478, 17.112238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174637, 32.952621, 16.779114>,  <35.307350, 32.958710, 16.579239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174637, 32.952621, 16.779114>,  <34.953445, 32.942478, 17.112238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174637, 32.952621, 16.779114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788877, -0.305716, -0.533114,
		-0.268125, 0.951785, -0.149046,
		0.552976, 0.025362, -0.832811,
		35.340530, 32.960232, 16.529270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807961, 33.284878, 17.763151>,  <34.953445, 32.942478, 17.112238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807961, 33.284878, 17.763151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472206, 33.190876, 17.567110>,  <34.270752, 33.134476, 17.449486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472206, 33.190876, 17.567110>,  <34.807961, 33.284878, 17.763151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472206, 33.190876, 17.567110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537136, 0.496606, 0.681812,
		0.083158, 0.835557, -0.543074,
		-0.839387, -0.235006, -0.490104,
		34.220390, 33.120373, 17.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517590, 33.848953, 17.553450>,  <34.807961, 33.284878, 17.763151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517590, 33.848953, 17.553450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247456, 33.562511, 17.624020>,  <34.085377, 33.390648, 17.666361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247456, 33.562511, 17.624020>,  <34.517590, 33.848953, 17.553450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247456, 33.562511, 17.624020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464534, 0.598816, 0.652401,
		-0.572832, 0.358631, -0.737053,
		-0.675331, -0.716103, 0.176425,
		34.044857, 33.347679, 17.676947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985905, 34.278526, 17.704897>,  <34.517590, 33.848953, 17.553450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985905, 34.278526, 17.704897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913773, 33.905891, 17.831148>,  <33.870495, 33.682308, 17.906898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913773, 33.905891, 17.831148>,  <33.985905, 34.278526, 17.704897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913773, 33.905891, 17.831148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534812, 0.362177, 0.763416,
		-0.825504, -0.031135, -0.563537,
		-0.180331, -0.931589, 0.315630,
		33.859673, 33.626415, 17.925837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308811, 34.124699, 17.805761>,  <33.985905, 34.278526, 17.704897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308811, 34.124699, 17.805761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464691, 33.840477, 18.040108>,  <33.558220, 33.669945, 18.180716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464691, 33.840477, 18.040108>,  <33.308811, 34.124699, 17.805761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464691, 33.840477, 18.040108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577670, 0.306846, 0.756401,
		-0.717238, -0.633208, -0.290890,
		0.389700, -0.710558, 0.585867,
		33.581600, 33.627308, 18.215868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692787, 33.986469, 18.318571>,  <33.308811, 34.124699, 17.805761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692787, 33.986469, 18.318571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016502, 33.819157, 18.483538>,  <33.210732, 33.718769, 18.582518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016502, 33.819157, 18.483538>,  <32.692787, 33.986469, 18.318571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016502, 33.819157, 18.483538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430490, 0.055350, 0.900897,
		-0.399654, -0.906630, -0.135271,
		0.809293, -0.418280, 0.412416,
		33.259289, 33.693672, 18.607262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363995, 33.542088, 18.908833>,  <32.692787, 33.986469, 18.318571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363995, 33.542088, 18.908833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748951, 33.625465, 18.978529>,  <32.979923, 33.675491, 19.020346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748951, 33.625465, 18.978529>,  <32.363995, 33.542088, 18.908833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748951, 33.625465, 18.978529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199605, 0.107431, 0.973969,
		0.184303, -0.972115, 0.144997,
		0.962388, 0.208447, 0.174239,
		33.037666, 33.688000, 19.030802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461090, 33.201557, 19.496454>,  <32.363995, 33.542088, 18.908833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461090, 33.201557, 19.496454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752018, 33.476067, 19.498966>,  <32.926575, 33.640770, 19.500473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.752018, 33.476067, 19.498966>,  <32.461090, 33.201557, 19.496454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752018, 33.476067, 19.498966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111625, 0.109262, 0.987726,
		0.677160, -0.719094, 0.156073,
		0.727320, 0.686270, 0.006281,
		32.970215, 33.681946, 19.500851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853691, 32.964230, 20.042908>,  <32.461090, 33.201557, 19.496454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853691, 32.964230, 20.042908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929226, 33.350266, 19.970316>,  <32.974548, 33.581886, 19.926762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929226, 33.350266, 19.970316>,  <32.853691, 32.964230, 20.042908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929226, 33.350266, 19.970316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128681, 0.207528, 0.969729,
		0.973541, -0.159767, 0.163378,
		0.188836, 0.965094, -0.181478,
		32.985878, 33.639793, 19.915873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440792, 33.118015, 20.436911>,  <32.853691, 32.964230, 20.042908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440792, 33.118015, 20.436911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249344, 33.464466, 20.379297>,  <33.134476, 33.672337, 20.344728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249344, 33.464466, 20.379297>,  <33.440792, 33.118015, 20.436911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249344, 33.464466, 20.379297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044289, 0.187652, 0.981237,
		0.876905, 0.463259, -0.128174,
		-0.478618, 0.866128, -0.144036,
		33.105759, 33.724304, 20.336086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863983, 33.714996, 20.506157>,  <33.440792, 33.118015, 20.436911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863983, 33.714996, 20.506157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485413, 33.796558, 20.606316>,  <33.258270, 33.845493, 20.666410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485413, 33.796558, 20.606316>,  <33.863983, 33.714996, 20.506157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485413, 33.796558, 20.606316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276042, 0.108500, 0.955002,
		0.167559, 0.972960, -0.158973,
		-0.946427, 0.203903, 0.250397,
		33.201485, 33.857731, 20.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971214, 34.277588, 20.926197>,  <33.863983, 33.714996, 20.506157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971214, 34.277588, 20.926197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617470, 34.127331, 21.037045>,  <33.405224, 34.037174, 21.103554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617470, 34.127331, 21.037045>,  <33.971214, 34.277588, 20.926197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617470, 34.127331, 21.037045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239448, 0.144553, 0.960088,
		-0.400712, 0.915420, -0.037890,
		-0.884361, -0.375646, 0.277120,
		33.352161, 34.014637, 21.120180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800720, 34.625641, 21.509314>,  <33.971214, 34.277588, 20.926197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800720, 34.625641, 21.509314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572117, 34.299004, 21.541710>,  <33.434956, 34.103024, 21.561148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572117, 34.299004, 21.541710>,  <33.800720, 34.625641, 21.509314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572117, 34.299004, 21.541710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183221, -0.030774, 0.982590,
		-0.799881, 0.576397, 0.167204,
		-0.571507, -0.816590, 0.080992,
		33.400665, 34.054028, 21.566008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424496, 34.757904, 22.050123>,  <33.800720, 34.625641, 21.509314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424496, 34.757904, 22.050123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404194, 34.360706, 22.007448>,  <33.392014, 34.122387, 21.981844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404194, 34.360706, 22.007448>,  <33.424496, 34.757904, 22.050123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404194, 34.360706, 22.007448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113121, -0.111853, 0.987265,
		-0.992284, 0.038043, 0.118007,
		-0.050758, -0.992996, -0.106686,
		33.388966, 34.062809, 21.975443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087063, 34.572041, 22.593914>,  <33.424496, 34.757904, 22.050123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087063, 34.572041, 22.593914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242859, 34.218147, 22.491505>,  <33.336338, 34.005814, 22.430059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242859, 34.218147, 22.491505>,  <33.087063, 34.572041, 22.593914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242859, 34.218147, 22.491505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108081, -0.232148, 0.966657,
		-0.914666, -0.404178, 0.005203,
		0.389493, -0.884730, -0.256022,
		33.359707, 33.952728, 22.414698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819729, 34.089600, 23.052654>,  <33.087063, 34.572041, 22.593914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819729, 34.089600, 23.052654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123699, 33.893566, 22.881853>,  <33.306080, 33.775944, 22.779371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123699, 33.893566, 22.881853>,  <32.819729, 34.089600, 23.052654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123699, 33.893566, 22.881853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328100, -0.277886, 0.902845,
		-0.561131, -0.826193, -0.050374,
		0.759923, -0.490087, -0.427004,
		33.351677, 33.746540, 22.753752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755764, 33.284531, 23.143002>,  <32.819729, 34.089600, 23.052654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755764, 33.284531, 23.143002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134975, 33.397793, 23.084936>,  <33.362503, 33.465752, 23.050097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134975, 33.397793, 23.084936>,  <32.755764, 33.284531, 23.143002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134975, 33.397793, 23.084936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259309, -0.423093, 0.868189,
		0.184416, -0.860706, -0.474527,
		0.948024, 0.283157, -0.145164,
		33.419384, 33.482738, 23.041388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179405, 32.784378, 23.356659>,  <32.755764, 33.284531, 23.143002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179405, 32.784378, 23.356659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463638, 33.065701, 23.348324>,  <33.634178, 33.234493, 23.343323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.463638, 33.065701, 23.348324>,  <33.179405, 32.784378, 23.356659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463638, 33.065701, 23.348324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451328, -0.432879, 0.780332,
		0.539794, -0.563893, -0.625018,
		0.710581, 0.703306, -0.020836,
		33.676811, 33.276691, 23.342073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800400, 32.368233, 23.387550>,  <33.179405, 32.784378, 23.356659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800400, 32.368233, 23.387550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873814, 32.745068, 23.499826>,  <33.917862, 32.971169, 23.567192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873814, 32.745068, 23.499826>,  <33.800400, 32.368233, 23.387550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873814, 32.745068, 23.499826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434164, -0.333864, 0.836682,
		0.881940, -0.031693, -0.470295,
		0.183532, 0.942088, 0.280688,
		33.928875, 33.027695, 23.584032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346901, 32.333916, 23.695072>,  <33.800400, 32.368233, 23.387550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346901, 32.333916, 23.695072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173973, 32.659214, 23.850883>,  <34.070217, 32.854393, 23.944370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173973, 32.659214, 23.850883>,  <34.346901, 32.333916, 23.695072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173973, 32.659214, 23.850883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336061, -0.255552, 0.906508,
		0.836758, 0.522807, -0.162819,
		-0.432319, 0.813244, 0.389530,
		34.044277, 32.903187, 23.967743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875839, 32.509430, 24.285912>,  <34.346901, 32.333916, 23.695072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875839, 32.509430, 24.285912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531475, 32.693924, 24.371794>,  <34.324856, 32.804623, 24.423323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531475, 32.693924, 24.371794>,  <34.875839, 32.509430, 24.285912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531475, 32.693924, 24.371794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187448, -0.104764, 0.976672,
		0.472970, 0.881070, 0.003735,
		-0.860908, 0.461237, 0.214705,
		34.273201, 32.832294, 24.436205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.527908, 35.325020, 27.984886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149788, 35.439060, 27.921478>,  <37.922916, 35.507484, 27.883434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149788, 35.439060, 27.921478>,  <38.527908, 35.325020, 27.984886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149788, 35.439060, 27.921478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093068, 0.230038, 0.968721,
		0.312648, 0.930484, -0.190921,
		-0.945299, 0.285100, -0.158519,
		37.866199, 35.524590, 27.873922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447975, 36.108917, 28.190992>,  <38.527908, 35.325020, 27.984886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447975, 36.108917, 28.190992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094364, 35.925713, 28.228355>,  <37.882198, 35.815792, 28.250774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094364, 35.925713, 28.228355>,  <38.447975, 36.108917, 28.190992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094364, 35.925713, 28.228355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122160, 0.419260, 0.899610,
		-0.451192, 0.783868, -0.426587,
		-0.884027, -0.458008, 0.093409,
		37.829155, 35.788311, 28.256378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088120, 36.521000, 28.725344>,  <38.447975, 36.108917, 28.190992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088120, 36.521000, 28.725344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836590, 36.211967, 28.690250>,  <37.685673, 36.026546, 28.669195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836590, 36.211967, 28.690250>,  <38.088120, 36.521000, 28.725344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836590, 36.211967, 28.690250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367082, 0.195504, 0.909411,
		-0.685445, 0.604062, -0.406539,
		-0.628821, -0.772585, -0.087733,
		37.647945, 35.980190, 28.663931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399803, 36.741905, 28.994934>,  <38.088120, 36.521000, 28.725344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399803, 36.741905, 28.994934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402458, 36.344620, 29.041370>,  <37.404053, 36.106247, 29.069231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402458, 36.344620, 29.041370>,  <37.399803, 36.741905, 28.994934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402458, 36.344620, 29.041370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361882, 0.105836, 0.926197,
		-0.932200, -0.048161, -0.358724,
		0.006640, -0.993217, 0.116089,
		37.404449, 36.046654, 29.076197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814304, 36.611610, 29.335217>,  <37.399803, 36.741905, 28.994934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814304, 36.611610, 29.335217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038872, 36.284248, 29.384239>,  <37.173611, 36.087830, 29.413652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038872, 36.284248, 29.384239>,  <36.814304, 36.611610, 29.335217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038872, 36.284248, 29.384239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193248, 0.014348, 0.981045,
		-0.804653, -0.574458, -0.150101,
		0.561416, -0.818408, 0.122558,
		37.207298, 36.038727, 29.421007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475010, 36.140022, 29.841600>,  <36.814304, 36.611610, 29.335217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475010, 36.140022, 29.841600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862637, 36.041492, 29.835361>,  <37.095211, 35.982376, 29.831619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862637, 36.041492, 29.835361>,  <36.475010, 36.140022, 29.841600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862637, 36.041492, 29.835361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028773, 0.049985, 0.998335,
		-0.245135, -0.967898, 0.055526,
		0.969062, -0.246324, -0.015596,
		37.153355, 35.967594, 29.830683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541283, 35.668346, 30.359573>,  <36.475010, 36.140022, 29.841600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541283, 35.668346, 30.359573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.913071, 35.808125, 30.312302>,  <37.136143, 35.891991, 30.283939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.913071, 35.808125, 30.312302>,  <36.541283, 35.668346, 30.359573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913071, 35.808125, 30.312302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137195, -0.030085, 0.990087,
		0.342431, -0.936472, -0.075906,
		0.929472, 0.349450, -0.118177,
		37.191914, 35.912960, 30.276848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890739, 35.283691, 30.884819>,  <36.541283, 35.668346, 30.359573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890739, 35.283691, 30.884819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141762, 35.579948, 30.788792>,  <37.292374, 35.757702, 30.731176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141762, 35.579948, 30.788792>,  <36.890739, 35.283691, 30.884819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141762, 35.579948, 30.788792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313656, 0.041718, 0.948620,
		0.712601, -0.670606, -0.206126,
		0.627551, 0.740640, -0.240067,
		37.330029, 35.802139, 30.716772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474697, 35.017788, 31.217173>,  <36.890739, 35.283691, 30.884819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474697, 35.017788, 31.217173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456158, 35.412285, 31.153711>,  <37.445034, 35.648983, 31.115635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.456158, 35.412285, 31.153711>,  <37.474697, 35.017788, 31.217173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456158, 35.412285, 31.153711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081393, 0.162025, 0.983424,
		0.995604, 0.032668, -0.087783,
		-0.046350, 0.986246, -0.158654,
		37.442253, 35.708160, 31.106115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015759, 35.209751, 31.609013>,  <37.474697, 35.017788, 31.217173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015759, 35.209751, 31.609013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.797508, 35.541225, 31.559105>,  <37.666557, 35.740112, 31.529160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.797508, 35.541225, 31.559105>,  <38.015759, 35.209751, 31.609013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797508, 35.541225, 31.559105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169852, 0.255152, 0.951865,
		0.820635, 0.498171, -0.279973,
		-0.545627, 0.828688, -0.124772,
		37.633820, 35.789833, 31.521673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391205, 35.723900, 31.901127>,  <38.015759, 35.209751, 31.609013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391205, 35.723900, 31.901127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023285, 35.880333, 31.888355>,  <37.802532, 35.974194, 31.880692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023285, 35.880333, 31.888355>,  <38.391205, 35.723900, 31.901127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023285, 35.880333, 31.888355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129197, 0.378686, 0.916463,
		0.370506, 0.838838, -0.398843,
		-0.919801, 0.391085, -0.031930,
		37.747345, 35.997658, 31.878777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435726, 36.225018, 32.344891>,  <38.391205, 35.723900, 31.901127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435726, 36.225018, 32.344891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.037392, 36.216972, 32.309330>,  <37.798389, 36.212143, 32.287994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.037392, 36.216972, 32.309330>,  <38.435726, 36.225018, 32.344891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037392, 36.216972, 32.309330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088205, 0.458689, 0.884209,
		0.022993, 0.888369, -0.458553,
		-0.995837, -0.020116, -0.088905,
		37.738640, 36.210938, 32.282658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257610, 36.767910, 32.661068>,  <38.435726, 36.225018, 32.344891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257610, 36.767910, 32.661068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927830, 36.541618, 32.667130>,  <37.729961, 36.405842, 32.670765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927830, 36.541618, 32.667130>,  <38.257610, 36.767910, 32.661068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927830, 36.541618, 32.667130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166119, 0.267504, 0.949129,
		-0.541006, 0.779993, -0.314522,
		-0.824450, -0.565732, 0.015150,
		37.680496, 36.371899, 32.671673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782776, 37.218601, 32.602505>,  <38.257610, 36.767910, 32.661068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782776, 37.218601, 32.602505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655270, 36.893738, 32.797966>,  <37.578766, 36.698818, 32.915241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.655270, 36.893738, 32.797966>,  <37.782776, 37.218601, 32.602505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655270, 36.893738, 32.797966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077540, 0.491475, 0.867433,
		-0.944656, 0.314400, -0.093691,
		-0.318768, -0.812161, 0.488653,
		37.559639, 36.650089, 32.944561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721931, 37.824062, 32.245548>,  <37.782776, 37.218601, 32.602505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721931, 37.824062, 32.245548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628033, 38.212879, 32.247387>,  <37.571693, 38.446171, 32.248489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628033, 38.212879, 32.247387>,  <37.721931, 37.824062, 32.245548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628033, 38.212879, 32.247387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132600, -0.027341, -0.990793,
		-0.962971, -0.233191, 0.135312,
		-0.234743, 0.972047, 0.004592,
		37.557610, 38.504494, 32.248764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074997, 37.921253, 31.876995>,  <37.721931, 37.824062, 32.245548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074997, 37.921253, 31.876995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266731, 38.269703, 31.834332>,  <37.381771, 38.478775, 31.808733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.266731, 38.269703, 31.834332>,  <37.074997, 37.921253, 31.876995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266731, 38.269703, 31.834332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269686, 0.030555, -0.962463,
		-0.835168, 0.490107, 0.249577,
		0.479336, 0.871127, -0.106657,
		37.410530, 38.531040, 31.802334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630253, 38.229874, 31.522898>,  <37.074997, 37.921253, 31.876995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630253, 38.229874, 31.522898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964523, 38.446438, 31.485968>,  <37.165085, 38.576374, 31.463810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964523, 38.446438, 31.485968>,  <36.630253, 38.229874, 31.522898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964523, 38.446438, 31.485968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187082, 0.122557, -0.974669,
		-0.516379, 0.831779, 0.203706,
		0.835676, 0.541408, -0.092325,
		37.215225, 38.608860, 31.458271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486649, 38.850052, 31.157276>,  <36.630253, 38.229874, 31.522898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486649, 38.850052, 31.157276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.879551, 38.793308, 31.108217>,  <37.115292, 38.759262, 31.078781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.879551, 38.793308, 31.108217>,  <36.486649, 38.850052, 31.157276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879551, 38.793308, 31.108217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094989, 0.187544, -0.977652,
		0.161689, 0.971959, 0.170742,
		0.982260, -0.141857, -0.122649,
		37.174229, 38.750751, 31.071423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730225, 39.301914, 30.600882>,  <36.486649, 38.850052, 31.157276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730225, 39.301914, 30.600882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990551, 38.998722, 30.618370>,  <37.146748, 38.816807, 30.628862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990551, 38.998722, 30.618370>,  <36.730225, 39.301914, 30.600882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990551, 38.998722, 30.618370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155734, 0.076913, -0.984800,
		0.743095, 0.647729, 0.168099,
		0.650812, -0.757979, 0.043720,
		37.185795, 38.771328, 30.631487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096798, 39.548824, 30.080841>,  <36.730225, 39.301914, 30.600882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096798, 39.548824, 30.080841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.218216, 39.171761, 30.136337>,  <37.291065, 38.945522, 30.169634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.218216, 39.171761, 30.136337>,  <37.096798, 39.548824, 30.080841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218216, 39.171761, 30.136337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006225, -0.147568, -0.989032,
		0.952797, 0.299353, -0.050661,
		0.303545, -0.942662, 0.138739,
		37.309280, 38.888962, 30.177959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438404, 39.444431, 29.584299>,  <37.096798, 39.548824, 30.080841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438404, 39.444431, 29.584299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387455, 39.062893, 29.693083>,  <37.356888, 38.833969, 29.758354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387455, 39.062893, 29.693083>,  <37.438404, 39.444431, 29.584299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387455, 39.062893, 29.693083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103821, -0.285509, -0.952736,
		0.986407, -0.093115, 0.135395,
		-0.127370, -0.953842, 0.271961,
		37.349243, 38.776741, 29.774672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905975, 39.181320, 29.186480>,  <37.438404, 39.444431, 29.584299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905975, 39.181320, 29.186480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642200, 38.898781, 29.289406>,  <37.483936, 38.729256, 29.351162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.642200, 38.898781, 29.289406>,  <37.905975, 39.181320, 29.186480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642200, 38.898781, 29.289406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052425, -0.298242, -0.953049,
		0.749931, -0.641965, 0.159640,
		-0.659436, -0.706352, 0.257316,
		37.444370, 38.686874, 29.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133621, 38.489201, 28.883488>,  <37.905975, 39.181320, 29.186480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133621, 38.489201, 28.883488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741230, 38.460335, 28.955561>,  <37.505795, 38.443016, 28.998804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741230, 38.460335, 28.955561>,  <38.133621, 38.489201, 28.883488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741230, 38.460335, 28.955561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128748, -0.452782, -0.882277,
		0.145251, -0.888696, 0.434880,
		-0.980982, -0.072162, 0.180185,
		37.446934, 38.438686, 29.009617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938828, 37.798859, 28.669544>,  <38.133621, 38.489201, 28.883488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938828, 37.798859, 28.669544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613819, 38.032032, 28.670162>,  <37.418816, 38.171936, 28.670532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.613819, 38.032032, 28.670162>,  <37.938828, 37.798859, 28.669544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613819, 38.032032, 28.670162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357322, -0.495960, -0.791419,
		-0.460570, -0.643601, 0.611272,
		-0.812524, 0.582925, 0.001549,
		37.370064, 38.206913, 28.670626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451759, 37.353237, 28.345428>,  <37.938828, 37.798859, 28.669544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451759, 37.353237, 28.345428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256718, 37.702465, 28.345034>,  <37.139694, 37.912003, 28.344797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256718, 37.702465, 28.345034>,  <37.451759, 37.353237, 28.345428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256718, 37.702465, 28.345034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518126, -0.290281, -0.804538,
		-0.702703, -0.391780, 0.593900,
		-0.487600, 0.873067, -0.000989,
		37.110439, 37.964386, 28.344736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855080, 37.174534, 28.247686>,  <37.451759, 37.353237, 28.345428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855080, 37.174534, 28.247686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.883732, 37.559189, 28.141769>,  <36.900925, 37.789982, 28.078218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.883732, 37.559189, 28.141769>,  <36.855080, 37.174534, 28.247686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883732, 37.559189, 28.141769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286747, -0.234413, -0.928885,
		-0.955324, 0.142468, 0.258956,
		0.071634, 0.961641, -0.264793,
		36.905224, 37.847683, 28.062332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246929, 37.277046, 27.852003>,  <36.855080, 37.174534, 28.247686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246929, 37.277046, 27.852003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509155, 37.560871, 27.748653>,  <36.666489, 37.731167, 27.686644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509155, 37.560871, 27.748653>,  <36.246929, 37.277046, 27.852003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509155, 37.560871, 27.748653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267397, -0.101860, -0.958188,
		-0.706213, 0.697240, 0.122960,
		0.655562, 0.709564, -0.258374,
		36.705826, 37.773739, 27.671141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893627, 37.754581, 27.416727>,  <36.246929, 37.277046, 27.852003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893627, 37.754581, 27.416727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.267651, 37.845325, 27.307770>,  <36.492065, 37.899773, 27.242395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.267651, 37.845325, 27.307770>,  <35.893627, 37.754581, 27.416727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267651, 37.845325, 27.307770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309435, 0.147426, -0.939423,
		-0.172963, 0.962704, 0.208052,
		0.935058, 0.226864, -0.272395,
		36.548168, 37.913383, 27.226051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541187, 38.454227, 27.549274>,  <35.893627, 37.754581, 27.416727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541187, 38.454227, 27.549274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141796, 38.466949, 27.567314>,  <34.902161, 38.474583, 27.578138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141796, 38.466949, 27.567314>,  <35.541187, 38.454227, 27.549274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141796, 38.466949, 27.567314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044838, -0.008920, 0.998954,
		0.032171, 0.999454, 0.007481,
		-0.998476, 0.031802, 0.045100,
		34.842255, 38.476490, 27.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370583, 39.050591, 28.009178>,  <35.541187, 38.454227, 27.549274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370583, 39.050591, 28.009178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062855, 38.795059, 28.006454>,  <34.878216, 38.641743, 28.004820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062855, 38.795059, 28.006454>,  <35.370583, 39.050591, 28.009178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062855, 38.795059, 28.006454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114984, 0.127973, 0.985090,
		-0.628429, 0.758634, -0.171907,
		-0.769322, -0.638826, -0.006809,
		34.832058, 38.603413, 28.004412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936218, 39.388149, 28.378134>,  <35.370583, 39.050591, 28.009178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936218, 39.388149, 28.378134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755367, 39.031368, 28.379147>,  <34.646854, 38.817299, 28.379755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.755367, 39.031368, 28.379147>,  <34.936218, 39.388149, 28.378134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755367, 39.031368, 28.379147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205218, 0.106788, 0.972873,
		-0.868023, 0.439345, -0.231326,
		-0.452130, -0.891948, 0.002533,
		34.619728, 38.763783, 28.379906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206192, 39.428028, 28.666372>,  <34.936218, 39.388149, 28.378134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206192, 39.428028, 28.666372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336124, 39.054485, 28.726231>,  <34.414085, 38.830360, 28.762146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336124, 39.054485, 28.726231>,  <34.206192, 39.428028, 28.666372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336124, 39.054485, 28.726231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281174, 0.055716, 0.958038,
		-0.903008, -0.353281, -0.244477,
		0.324835, -0.933856, 0.149645,
		34.433575, 38.774330, 28.771124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779667, 39.106750, 29.056770>,  <34.206192, 39.428028, 28.666372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779667, 39.106750, 29.056770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059765, 38.826523, 29.111689>,  <34.227825, 38.658386, 29.144640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.059765, 38.826523, 29.111689>,  <33.779667, 39.106750, 29.056770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059765, 38.826523, 29.111689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172234, 0.020852, 0.984835,
		-0.692812, -0.713276, -0.106061,
		0.700248, -0.700573, 0.137297,
		34.269840, 38.616352, 29.152878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446068, 38.683350, 29.481323>,  <33.779667, 39.106750, 29.056770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446068, 38.683350, 29.481323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.833874, 38.597969, 29.529467>,  <34.066555, 38.546741, 29.558353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.833874, 38.597969, 29.529467>,  <33.446068, 38.683350, 29.481323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833874, 38.597969, 29.529467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110983, 0.055419, 0.992276,
		-0.218472, -0.975381, 0.030040,
		0.969511, -0.213451, 0.120358,
		34.124725, 38.533936, 29.565575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457924, 38.041237, 29.931356>,  <33.446068, 38.683350, 29.481323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457924, 38.041237, 29.931356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.803684, 38.242352, 29.932264>,  <34.011143, 38.363022, 29.932810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.803684, 38.242352, 29.932264>,  <33.457924, 38.041237, 29.931356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803684, 38.242352, 29.932264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072446, 0.120080, 0.990117,
		0.497549, -0.856027, 0.140223,
		0.864405, 0.502791, 0.002270,
		34.063007, 38.393188, 29.932945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022148, 37.663582, 30.326717>,  <33.457924, 38.041237, 29.931356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022148, 37.663582, 30.326717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131920, 38.048206, 30.323105>,  <34.197781, 38.278980, 30.320938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131920, 38.048206, 30.323105>,  <34.022148, 37.663582, 30.326717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131920, 38.048206, 30.323105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028908, 0.017635, 0.999426,
		0.961174, -0.274007, 0.032636,
		0.274426, 0.961566, -0.009030,
		34.214249, 38.336678, 30.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535900, 37.700356, 30.798517>,  <34.022148, 37.663582, 30.326717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535900, 37.700356, 30.798517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.433239, 38.085331, 30.763105>,  <34.371643, 38.316319, 30.741858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.433239, 38.085331, 30.763105>,  <34.535900, 37.700356, 30.798517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433239, 38.085331, 30.763105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003482, 0.092517, 0.995705,
		0.966498, 0.255239, -0.027096,
		-0.256650, 0.962441, -0.088529,
		34.356243, 38.374062, 30.736547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949066, 38.145031, 31.245043>,  <34.535900, 37.700356, 30.798517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949066, 38.145031, 31.245043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.604012, 38.338783, 31.186752>,  <34.396980, 38.455036, 31.151777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.604012, 38.338783, 31.186752>,  <34.949066, 38.145031, 31.245043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604012, 38.338783, 31.186752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139023, 0.049967, 0.989028,
		0.486348, 0.873429, 0.024236,
		-0.862634, 0.484381, -0.145728,
		34.345222, 38.484097, 31.143034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989582, 38.773952, 31.614624>,  <34.949066, 38.145031, 31.245043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989582, 38.773952, 31.614624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.602650, 38.684422, 31.566996>,  <34.370491, 38.630703, 31.538420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.602650, 38.684422, 31.566996>,  <34.989582, 38.773952, 31.614624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602650, 38.684422, 31.566996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139556, 0.078001, 0.987137,
		-0.211656, 0.971504, -0.106688,
		-0.967329, -0.223823, -0.119070,
		34.312450, 38.617275, 31.531275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763733, 39.130646, 32.122322>,  <34.989582, 38.773952, 31.614624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763733, 39.130646, 32.122322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.446033, 38.904415, 32.033508>,  <34.255413, 38.768677, 31.980221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.446033, 38.904415, 32.033508>,  <34.763733, 39.130646, 32.122322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446033, 38.904415, 32.033508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262830, -0.009665, 0.964794,
		-0.547807, 0.824642, -0.140973,
		-0.794247, -0.565573, -0.222035,
		34.207760, 38.734745, 31.966898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.970947, 39.375603, 24.051363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686920, 39.094364, 24.066633>,  <34.516502, 38.925621, 24.075796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686920, 39.094364, 24.066633>,  <34.970947, 39.375603, 24.051363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686920, 39.094364, 24.066633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, 0.051652, 0.998662,
		-0.704130, 0.709214, -0.034884,
		-0.710067, -0.703099, 0.038177,
		34.473900, 38.883434, 24.078087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534019, 39.614079, 24.405821>,  <34.970947, 39.375603, 24.051363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534019, 39.614079, 24.405821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438576, 39.226486, 24.431559>,  <34.381310, 38.993931, 24.447002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438576, 39.226486, 24.431559>,  <34.534019, 39.614079, 24.405821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438576, 39.226486, 24.431559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081454, 0.085996, 0.992960,
		-0.967693, 0.231689, -0.099447,
		-0.238610, -0.968981, 0.064346,
		34.366993, 38.935791, 24.450863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983910, 39.581493, 24.953768>,  <34.534019, 39.614079, 24.405821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983910, 39.581493, 24.953768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116970, 39.205269, 24.926374>,  <34.196804, 38.979534, 24.909939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116970, 39.205269, 24.926374>,  <33.983910, 39.581493, 24.953768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116970, 39.205269, 24.926374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236723, -0.153575, 0.959363,
		-0.912857, -0.302918, -0.273739,
		0.332648, -0.940561, -0.068485,
		34.216763, 38.923100, 24.905828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489803, 39.077850, 25.383318>,  <33.983910, 39.581493, 24.953768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489803, 39.077850, 25.383318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853432, 38.915611, 25.345194>,  <34.071609, 38.818268, 25.322319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853432, 38.915611, 25.345194>,  <33.489803, 39.077850, 25.383318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853432, 38.915611, 25.345194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011686, -0.203850, 0.978932,
		-0.416479, -0.891032, -0.180574,
		0.909070, -0.405595, -0.095312,
		34.126152, 38.793934, 25.316601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363750, 38.441025, 25.666407>,  <33.489803, 39.077850, 25.383318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363750, 38.441025, 25.666407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762501, 38.468636, 25.651022>,  <34.001751, 38.485203, 25.641792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762501, 38.468636, 25.651022>,  <33.363750, 38.441025, 25.666407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762501, 38.468636, 25.651022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046977, -0.126347, 0.990873,
		0.063537, -0.989582, -0.129194,
		0.996873, 0.069026, -0.038460,
		34.061562, 38.489342, 25.639484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665451, 37.880756, 26.036015>,  <33.363750, 38.441025, 25.666407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665451, 37.880756, 26.036015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968811, 38.140171, 26.009981>,  <34.150826, 38.295818, 25.994362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968811, 38.140171, 26.009981>,  <33.665451, 37.880756, 26.036015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968811, 38.140171, 26.009981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210357, -0.149032, 0.966198,
		0.616912, -0.746454, -0.249449,
		0.758399, 0.648533, -0.065082,
		34.196331, 38.334732, 25.990456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192554, 37.590740, 26.327358>,  <33.665451, 37.880756, 26.036015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192554, 37.590740, 26.327358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266457, 37.983593, 26.341690>,  <34.310799, 38.219303, 26.350288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266457, 37.983593, 26.341690>,  <34.192554, 37.590740, 26.327358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266457, 37.983593, 26.341690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246193, -0.081547, 0.965784,
		0.951448, -0.169616, -0.256861,
		0.184759, 0.982131, 0.035829,
		34.321884, 38.278233, 26.352438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818073, 37.561066, 26.721697>,  <34.192554, 37.590740, 26.327358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818073, 37.561066, 26.721697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643749, 37.919361, 26.756853>,  <34.539154, 38.134338, 26.777946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643749, 37.919361, 26.756853>,  <34.818073, 37.561066, 26.721697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643749, 37.919361, 26.756853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236070, 0.019528, 0.971540,
		0.868530, 0.444150, -0.219968,
		-0.435805, 0.895739, 0.087889,
		34.513008, 38.188084, 26.783220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251785, 37.945980, 27.105753>,  <34.818073, 37.561066, 26.721697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251785, 37.945980, 27.105753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921173, 38.166466, 27.151382>,  <34.722805, 38.298759, 27.178761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921173, 38.166466, 27.151382>,  <35.251785, 37.945980, 27.105753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921173, 38.166466, 27.151382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181921, 0.069800, 0.980833,
		0.532690, 0.831437, -0.157970,
		-0.826527, 0.551218, 0.114074,
		34.673214, 38.331833, 27.185604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812969, 38.304855, 26.790234>,  <35.251785, 37.945980, 27.105753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812969, 38.304855, 26.790234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194286, 38.184036, 26.789167>,  <36.423077, 38.111546, 26.788528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194286, 38.184036, 26.789167>,  <35.812969, 38.304855, 26.790234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194286, 38.184036, 26.789167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014198, -0.035996, -0.999251,
		0.301729, 0.952612, -0.038603,
		0.953288, -0.302051, -0.002664,
		36.480274, 38.093422, 26.788368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174557, 38.799000, 26.354752>,  <35.812969, 38.304855, 26.790234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174557, 38.799000, 26.354752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412029, 38.477341, 26.342861>,  <36.554512, 38.284344, 26.335728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412029, 38.477341, 26.342861>,  <36.174557, 38.799000, 26.354752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412029, 38.477341, 26.342861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015688, 0.048497, -0.998700,
		0.804545, 0.592447, 0.041407,
		0.593685, -0.804148, -0.029724,
		36.590134, 38.236095, 26.333944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435284, 38.777088, 25.659153>,  <36.174557, 38.799000, 26.354752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435284, 38.777088, 25.659153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570179, 38.425213, 25.793264>,  <36.651115, 38.214088, 25.873732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570179, 38.425213, 25.793264>,  <36.435284, 38.777088, 25.659153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570179, 38.425213, 25.793264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084404, -0.326455, -0.941437,
		0.937628, 0.345787, -0.035843,
		0.337238, -0.879692, 0.335279,
		36.671349, 38.161304, 25.893848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121117, 38.733025, 25.420237>,  <36.435284, 38.777088, 25.659153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121117, 38.733025, 25.420237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992435, 38.360622, 25.489220>,  <36.915226, 38.137180, 25.530609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992435, 38.360622, 25.489220>,  <37.121117, 38.733025, 25.420237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992435, 38.360622, 25.489220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157362, -0.232181, -0.959859,
		0.933671, -0.281653, 0.221198,
		-0.321705, -0.931001, 0.172459,
		36.895924, 38.081322, 25.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686634, 38.329445, 25.144995>,  <37.121117, 38.733025, 25.420237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686634, 38.329445, 25.144995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324284, 38.160030, 25.144512>,  <37.106873, 38.058380, 25.144222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324284, 38.160030, 25.144512>,  <37.686634, 38.329445, 25.144995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324284, 38.160030, 25.144512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114163, -0.241435, -0.963678,
		0.407863, -0.873112, 0.267063,
		-0.905878, -0.423538, -0.001204,
		37.052521, 38.032970, 25.144152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769424, 37.685040, 24.758036>,  <37.686634, 38.329445, 25.144995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769424, 37.685040, 24.758036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370159, 37.706264, 24.769730>,  <37.130600, 37.718998, 24.776747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370159, 37.706264, 24.769730>,  <37.769424, 37.685040, 24.758036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370159, 37.706264, 24.769730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044127, -0.306147, -0.950961,
		-0.041507, -0.950505, 0.307926,
		-0.998164, 0.053059, 0.029235,
		37.070709, 37.722183, 24.778500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565609, 36.982914, 24.623671>,  <37.769424, 37.685040, 24.758036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565609, 36.982914, 24.623671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280628, 37.241276, 24.513964>,  <37.109642, 37.396294, 24.448139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280628, 37.241276, 24.513964>,  <37.565609, 36.982914, 24.623671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280628, 37.241276, 24.513964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124978, -0.267805, -0.955333,
		-0.690506, -0.714903, 0.110073,
		-0.712448, 0.645906, -0.274268,
		37.066895, 37.435047, 24.431683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192219, 36.636833, 24.009789>,  <37.565609, 36.982914, 24.623671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192219, 36.636833, 24.009789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114769, 37.029091, 23.998196>,  <37.068298, 37.264446, 23.991240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114769, 37.029091, 23.998196>,  <37.192219, 36.636833, 24.009789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114769, 37.029091, 23.998196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159254, -0.060568, -0.985378,
		-0.968063, -0.186180, 0.167899,
		-0.193627, 0.980647, -0.028984,
		37.056683, 37.323284, 23.989500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550762, 36.642986, 23.645575>,  <37.192219, 36.636833, 24.009789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550762, 36.642986, 23.645575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745903, 36.990067, 23.607409>,  <36.862988, 37.198315, 23.584509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745903, 36.990067, 23.607409>,  <36.550762, 36.642986, 23.645575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745903, 36.990067, 23.607409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206244, 0.008362, -0.978465,
		-0.848214, 0.497022, 0.183037,
		0.487849, 0.867698, -0.095416,
		36.892258, 37.250378, 23.578783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137596, 36.928772, 23.089115>,  <36.550762, 36.642986, 23.645575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137596, 36.928772, 23.089115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470024, 37.149761, 23.114727>,  <36.669479, 37.282356, 23.130095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470024, 37.149761, 23.114727>,  <36.137596, 36.928772, 23.089115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470024, 37.149761, 23.114727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123085, 0.294969, -0.947546,
		-0.542381, 0.779594, 0.313140,
		0.831067, 0.552474, 0.064029,
		36.719345, 37.315502, 23.133936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005421, 37.607235, 22.833698>,  <36.137596, 36.928772, 23.089115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005421, 37.607235, 22.833698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394680, 37.533527, 22.778524>,  <36.628235, 37.489304, 22.745420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394680, 37.533527, 22.778524>,  <36.005421, 37.607235, 22.833698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394680, 37.533527, 22.778524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071520, 0.327529, -0.942130,
		0.218779, 0.926699, 0.305556,
		0.973150, -0.184265, -0.137934,
		36.686626, 37.478249, 22.737144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301723, 38.230343, 22.560131>,  <36.005421, 37.607235, 22.833698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301723, 38.230343, 22.560131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525661, 37.917122, 22.451761>,  <36.660023, 37.729187, 22.386740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525661, 37.917122, 22.451761>,  <36.301723, 38.230343, 22.560131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525661, 37.917122, 22.451761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012744, 0.318790, -0.947740,
		0.828500, 0.534039, 0.168494,
		0.559844, -0.783055, -0.270923,
		36.693615, 37.682205, 22.370485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551300, 38.523228, 21.929867>,  <36.301723, 38.230343, 22.560131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551300, 38.523228, 21.929867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656540, 38.137875, 21.909224>,  <36.719685, 37.906662, 21.896837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656540, 38.137875, 21.909224>,  <36.551300, 38.523228, 21.929867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656540, 38.137875, 21.909224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134135, 0.089502, -0.986913,
		0.955398, 0.252736, 0.152772,
		0.263102, -0.963387, -0.051609,
		36.735470, 37.848858, 21.893742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086823, 38.529011, 21.458731>,  <36.551300, 38.523228, 21.929867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086823, 38.529011, 21.458731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980907, 38.143581, 21.473785>,  <36.917358, 37.912323, 21.482819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980907, 38.143581, 21.473785>,  <37.086823, 38.529011, 21.458731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980907, 38.143581, 21.473785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361381, -0.135338, -0.922544,
		0.894032, -0.230674, 0.384052,
		-0.264784, -0.963573, 0.037635,
		36.901474, 37.854511, 21.485077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.656584, 32.986256, 23.387201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.787165, 33.364262, 23.394867>,  <30.865513, 33.591064, 23.399466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.787165, 33.364262, 23.394867>,  <30.656584, 32.986256, 23.387201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787165, 33.364262, 23.394867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329466, -0.132769, 0.934786,
		0.885935, -0.298848, -0.354695,
		0.326452, 0.945020, 0.019165,
		30.885099, 33.647766, 23.400616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291138, 32.904976, 23.660925>,  <30.656584, 32.986256, 23.387201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291138, 32.904976, 23.660925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.201525, 33.291645, 23.710476>,  <31.147757, 33.523647, 23.740206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.201525, 33.291645, 23.710476>,  <31.291138, 32.904976, 23.660925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201525, 33.291645, 23.710476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323299, -0.046194, 0.945169,
		0.919394, 0.251800, -0.302177,
		-0.224035, 0.966676, 0.123877,
		31.134314, 33.581650, 23.747639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828199, 33.122971, 24.061476>,  <31.291138, 32.904976, 23.660925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828199, 33.122971, 24.061476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.545431, 33.402061, 24.107836>,  <31.375771, 33.569515, 24.135653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.545431, 33.402061, 24.107836>,  <31.828199, 33.122971, 24.061476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545431, 33.402061, 24.107836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201850, 0.041965, 0.978517,
		0.677878, 0.715130, -0.170503,
		-0.706922, 0.697731, 0.115902,
		31.333355, 33.611382, 24.142607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174988, 33.654121, 24.566076>,  <31.828199, 33.122971, 24.061476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174988, 33.654121, 24.566076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.777491, 33.698795, 24.566410>,  <31.538992, 33.725601, 24.566610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.777491, 33.698795, 24.566410>,  <32.174988, 33.654121, 24.566076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777491, 33.698795, 24.566410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002750, -0.031923, 0.999487,
		0.111658, 0.993230, 0.032030,
		-0.993743, 0.111689, 0.000834,
		31.479368, 33.732304, 24.566660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037159, 34.256699, 24.986347>,  <32.174988, 33.654121, 24.566076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037159, 34.256699, 24.986347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703272, 34.039158, 24.951763>,  <31.502939, 33.908634, 24.931013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703272, 34.039158, 24.951763>,  <32.037159, 34.256699, 24.986347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703272, 34.039158, 24.951763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161038, 0.090930, 0.982751,
		-0.526608, 0.834241, -0.163481,
		-0.834716, -0.543851, -0.086460,
		31.452858, 33.876003, 24.925825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590736, 34.624531, 25.338562>,  <32.037159, 34.256699, 24.986347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590736, 34.624531, 25.338562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.407040, 34.270550, 25.307676>,  <31.296822, 34.058163, 25.289145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.407040, 34.270550, 25.307676>,  <31.590736, 34.624531, 25.338562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407040, 34.270550, 25.307676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218292, 0.028169, 0.975477,
		-0.861073, 0.464833, -0.206114,
		-0.459240, -0.884950, -0.077214,
		31.269268, 34.005066, 25.284512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911695, 34.714382, 25.582338>,  <31.590736, 34.624531, 25.338562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911695, 34.714382, 25.582338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.006060, 34.328430, 25.628569>,  <31.062677, 34.096859, 25.656307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.006060, 34.328430, 25.628569>,  <30.911695, 34.714382, 25.582338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006060, 34.328430, 25.628569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190615, 0.070676, 0.979118,
		-0.952897, -0.253012, -0.167247,
		0.235908, -0.964878, 0.115575,
		31.076832, 34.038967, 25.663240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475611, 34.483543, 26.184639>,  <30.911695, 34.714382, 25.582338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475611, 34.483543, 26.184639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732227, 34.178040, 26.156084>,  <30.886196, 33.994736, 26.138950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.732227, 34.178040, 26.156084>,  <30.475611, 34.483543, 26.184639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732227, 34.178040, 26.156084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056938, -0.140220, 0.988482,
		-0.764974, -0.630085, -0.133443,
		0.641539, -0.763761, -0.071389,
		30.924688, 33.948910, 26.134668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234690, 34.002609, 26.673658>,  <30.475611, 34.483543, 26.184639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234690, 34.002609, 26.673658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618736, 33.907372, 26.615025>,  <30.849165, 33.850227, 26.579845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618736, 33.907372, 26.615025>,  <30.234690, 34.002609, 26.673658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618736, 33.907372, 26.615025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095995, -0.211687, 0.972612,
		-0.262606, -0.947892, -0.180388,
		0.960116, -0.238097, -0.146583,
		30.906771, 33.835941, 26.571051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355721, 33.316433, 27.012060>,  <30.234690, 34.002609, 26.673658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355721, 33.316433, 27.012060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.689568, 33.533936, 26.976870>,  <30.889875, 33.664436, 26.955755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.689568, 33.533936, 26.976870>,  <30.355721, 33.316433, 27.012060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689568, 33.533936, 26.976870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175422, -0.110986, 0.978217,
		0.522150, -0.831871, -0.188018,
		0.834618, 0.543759, -0.087977,
		30.939953, 33.697063, 26.950476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758080, 32.945316, 27.522057>,  <30.355721, 33.316433, 27.012060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758080, 32.945316, 27.522057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949278, 33.292362, 27.467258>,  <31.063997, 33.500591, 27.434380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949278, 33.292362, 27.467258>,  <30.758080, 32.945316, 27.522057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949278, 33.292362, 27.467258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353757, -0.047395, 0.934136,
		0.803977, -0.494974, -0.329579,
		0.477994, 0.867614, -0.136996,
		31.092676, 33.552647, 27.426159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328241, 32.784710, 27.826435>,  <30.758080, 32.945316, 27.522057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328241, 32.784710, 27.826435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.307499, 33.183464, 27.802647>,  <31.295053, 33.422714, 27.788374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.307499, 33.183464, 27.802647>,  <31.328241, 32.784710, 27.826435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307499, 33.183464, 27.802647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357402, 0.074130, 0.931004,
		0.932510, 0.027022, -0.360132,
		-0.051854, 0.996882, -0.059469,
		31.291943, 33.482529, 27.784805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860554, 32.934322, 28.175581>,  <31.328241, 32.784710, 27.826435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860554, 32.934322, 28.175581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.639332, 33.267578, 28.176796>,  <31.506599, 33.467533, 28.177525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.639332, 33.267578, 28.176796>,  <31.860554, 32.934322, 28.175581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639332, 33.267578, 28.176796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343004, 0.224367, 0.912145,
		0.759262, 0.505509, -0.409857,
		-0.553056, 0.833139, 0.003038,
		31.473415, 33.517521, 28.177708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274387, 33.393234, 28.451777>,  <31.860554, 32.934322, 28.175581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274387, 33.393234, 28.451777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912733, 33.559120, 28.492851>,  <31.695740, 33.658653, 28.517496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.912733, 33.559120, 28.492851>,  <32.274387, 33.393234, 28.451777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912733, 33.559120, 28.492851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222013, 0.250715, 0.942259,
		0.365023, 0.874731, -0.318753,
		-0.904140, 0.414714, 0.102684,
		31.641491, 33.683533, 28.523657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936405, 33.609753, 28.420523>,  <32.274387, 33.393234, 28.451777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936405, 33.609753, 28.420523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334301, 33.569759, 28.429493>,  <33.573036, 33.545765, 28.434875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334301, 33.569759, 28.429493>,  <32.936405, 33.609753, 28.420523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334301, 33.569759, 28.429493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015112, -0.073327, -0.997194,
		0.101348, 0.992284, -0.071430,
		0.994736, -0.099984, 0.022427,
		33.632721, 33.539764, 28.436220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179142, 33.983467, 27.806879>,  <32.936405, 33.609753, 28.420523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179142, 33.983467, 27.806879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454559, 33.714722, 27.916063>,  <33.619812, 33.553474, 27.981573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454559, 33.714722, 27.916063>,  <33.179142, 33.983467, 27.806879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454559, 33.714722, 27.916063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190031, -0.196083, -0.961998,
		0.699852, 0.714250, -0.007337,
		0.688546, -0.671862, 0.272959,
		33.661121, 33.513165, 27.997952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830318, 34.238525, 27.618038>,  <33.179142, 33.983467, 27.806879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830318, 34.238525, 27.618038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882179, 33.842922, 27.646460>,  <33.913296, 33.605560, 27.663513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882179, 33.842922, 27.646460>,  <33.830318, 34.238525, 27.618038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882179, 33.842922, 27.646460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328694, -0.024737, -0.944112,
		0.935494, 0.145763, 0.321875,
		0.129655, -0.989010, 0.071053,
		33.921074, 33.546219, 27.667776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466492, 34.095264, 27.255762>,  <33.830318, 34.238525, 27.618038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466492, 34.095264, 27.255762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261490, 33.752224, 27.272991>,  <34.138489, 33.546398, 27.283329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261490, 33.752224, 27.272991>,  <34.466492, 34.095264, 27.255762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261490, 33.752224, 27.272991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338064, -0.247631, -0.907960,
		0.789336, -0.450772, 0.416837,
		-0.512504, -0.857603, 0.043074,
		34.107738, 33.494942, 27.285913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878361, 33.499168, 27.008339>,  <34.466492, 34.095264, 27.255762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878361, 33.499168, 27.008339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503654, 33.363998, 26.971933>,  <34.278831, 33.282898, 26.950090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.503654, 33.363998, 26.971933>,  <34.878361, 33.499168, 27.008339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503654, 33.363998, 26.971933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208969, -0.331498, -0.920022,
		0.280725, -0.880862, 0.381150,
		-0.936763, -0.337921, -0.091013,
		34.222626, 33.262623, 26.944630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974369, 32.893341, 26.580626>,  <34.878361, 33.499168, 27.008339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974369, 32.893341, 26.580626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576107, 32.917671, 26.552431>,  <34.337151, 32.932270, 26.535515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576107, 32.917671, 26.552431>,  <34.974369, 32.893341, 26.580626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576107, 32.917671, 26.552431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051536, -0.270482, -0.961345,
		-0.077536, -0.960802, 0.266173,
		-0.995657, 0.060821, -0.070488,
		34.277409, 32.935917, 26.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738556, 32.277847, 26.253460>,  <34.974369, 32.893341, 26.580626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738556, 32.277847, 26.253460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478512, 32.577862, 26.204777>,  <34.322487, 32.757870, 26.175568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478512, 32.577862, 26.204777>,  <34.738556, 32.277847, 26.253460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478512, 32.577862, 26.204777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053831, -0.114311, -0.991985,
		-0.757934, -0.651447, 0.033939,
		-0.650106, 0.750033, -0.121708,
		34.283482, 32.802872, 26.168264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097786, 31.997332, 25.866638>,  <34.738556, 32.277847, 26.253460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097786, 31.997332, 25.866638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.115803, 32.393604, 25.815226>,  <34.126614, 32.631367, 25.784378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.115803, 32.393604, 25.815226>,  <34.097786, 31.997332, 25.866638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115803, 32.393604, 25.815226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210885, -0.116336, -0.970563,
		-0.976473, 0.070819, 0.203680,
		0.045039, 0.990682, -0.128534,
		34.129314, 32.690807, 25.776665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470524, 32.276184, 25.622305>,  <34.097786, 31.997332, 25.866638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470524, 32.276184, 25.622305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.748402, 32.527302, 25.481863>,  <33.915127, 32.677971, 25.397598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.748402, 32.527302, 25.481863>,  <33.470524, 32.276184, 25.622305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748402, 32.527302, 25.481863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483751, 0.046523, -0.873968,
		-0.532338, 0.776988, 0.336015,
		0.694695, 0.627794, -0.351103,
		33.956810, 32.715641, 25.376532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136459, 32.710854, 25.032026>,  <33.470524, 32.276184, 25.622305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136459, 32.710854, 25.032026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521595, 32.802235, 24.974398>,  <33.752674, 32.857063, 24.939821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521595, 32.802235, 24.974398>,  <33.136459, 32.710854, 25.032026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521595, 32.802235, 24.974398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204778, 0.269669, -0.940928,
		-0.176109, 0.935461, 0.306430,
		0.962835, 0.228456, -0.144070,
		33.810444, 32.870770, 24.931177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188122, 33.441174, 24.851091>,  <33.136459, 32.710854, 25.032026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188122, 33.441174, 24.851091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.511600, 33.238857, 24.730967>,  <33.705688, 33.117470, 24.658892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.511600, 33.238857, 24.730967>,  <33.188122, 33.441174, 24.851091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511600, 33.238857, 24.730967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158863, 0.303767, -0.939408,
		0.566364, 0.807407, 0.165305,
		0.808699, -0.505787, -0.300310,
		33.754211, 33.087120, 24.640873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621773, 34.006229, 24.523252>,  <33.188122, 33.441174, 24.851091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621773, 34.006229, 24.523252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731316, 33.657082, 24.361712>,  <33.797043, 33.447594, 24.264788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731316, 33.657082, 24.361712>,  <33.621773, 34.006229, 24.523252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731316, 33.657082, 24.361712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091185, 0.394448, -0.914383,
		0.957438, 0.287235, 0.028429,
		0.273857, -0.872873, -0.403851,
		33.813473, 33.395218, 24.240557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128284, 34.215534, 24.027851>,  <33.621773, 34.006229, 24.523252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128284, 34.215534, 24.027851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073071, 33.844666, 23.888538>,  <34.039944, 33.622143, 23.804951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073071, 33.844666, 23.888538>,  <34.128284, 34.215534, 24.027851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073071, 33.844666, 23.888538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090963, 0.362031, -0.927717,
		0.986241, -0.096378, -0.134311,
		-0.138036, -0.927170, -0.348283,
		34.031658, 33.566513, 23.784054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585316, 34.182060, 23.424299>,  <34.128284, 34.215534, 24.027851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585316, 34.182060, 23.424299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310806, 33.895397, 23.374617>,  <34.146099, 33.723400, 23.344807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310806, 33.895397, 23.374617>,  <34.585316, 34.182060, 23.424299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310806, 33.895397, 23.374617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081060, 0.245063, -0.966112,
		0.722811, -0.652951, -0.226273,
		-0.686275, -0.716658, -0.124206,
		34.104923, 33.680401, 23.337355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123230, 33.905651, 23.210070>,  <34.585316, 34.182060, 23.424299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123230, 33.905651, 23.210070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490093, 34.029949, 23.110268>,  <35.710213, 34.104530, 23.050386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490093, 34.029949, 23.110268>,  <35.123230, 33.905651, 23.210070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490093, 34.029949, 23.110268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184317, 0.224323, 0.956926,
		0.353334, -0.923642, 0.148463,
		0.917160, 0.310750, -0.249504,
		35.765240, 34.123173, 23.035416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517738, 33.488323, 23.594339>,  <35.123230, 33.905651, 23.210070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517738, 33.488323, 23.594339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758297, 33.788574, 23.484877>,  <35.902630, 33.968723, 23.419199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758297, 33.788574, 23.484877>,  <35.517738, 33.488323, 23.594339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758297, 33.788574, 23.484877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434282, -0.019621, 0.900563,
		0.670615, -0.660437, -0.337783,
		0.601393, 0.750625, -0.273658,
		35.938713, 34.013763, 23.402779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202412, 33.338547, 23.885223>,  <35.517738, 33.488323, 23.594339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202412, 33.338547, 23.885223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.732506, 23.817362>,  <36.224464, 33.968884, 23.776646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216194, 33.732506, 23.817362>,  <36.202412, 33.338547, 23.885223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216194, 33.732506, 23.817362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348456, 0.147264, 0.925684,
		0.936692, -0.091009, -0.338121,
		0.034453, 0.984901, -0.169654,
		36.226528, 34.027977, 23.766466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766460, 33.546085, 24.283281>,  <36.202412, 33.338547, 23.885223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766460, 33.546085, 24.283281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582840, 33.893261, 24.207439>,  <36.472668, 34.101566, 24.161934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.582840, 33.893261, 24.207439>,  <36.766460, 33.546085, 24.283281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582840, 33.893261, 24.207439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323205, 0.361951, 0.874374,
		0.827532, 0.340104, -0.446677,
		-0.459053, 0.867941, -0.189603,
		36.445126, 34.153645, 24.150558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203712, 34.019135, 24.550138>,  <36.766460, 33.546085, 24.283281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203712, 34.019135, 24.550138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858612, 34.220470, 24.530922>,  <36.651550, 34.341270, 24.519392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858612, 34.220470, 24.530922>,  <37.203712, 34.019135, 24.550138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858612, 34.220470, 24.530922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212782, 0.447618, 0.868540,
		0.458672, 0.739114, -0.493285,
		-0.862754, 0.503337, -0.048040,
		36.599785, 34.371471, 24.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371861, 34.643883, 24.753630>,  <37.203712, 34.019135, 24.550138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371861, 34.643883, 24.753630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976795, 34.635910, 24.815750>,  <36.739754, 34.631126, 24.853022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976795, 34.635910, 24.815750>,  <37.371861, 34.643883, 24.753630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976795, 34.635910, 24.815750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126374, 0.484129, 0.865822,
		-0.092440, 0.874770, -0.475639,
		-0.987666, -0.019928, 0.155301,
		36.680496, 34.629932, 24.862341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119907, 35.313057, 24.733974>,  <37.371861, 34.643883, 24.753630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119907, 35.313057, 24.733974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862648, 35.089409, 24.943258>,  <36.708294, 34.955219, 25.068829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862648, 35.089409, 24.943258>,  <37.119907, 35.313057, 24.733974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862648, 35.089409, 24.943258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144440, 0.582423, 0.799950,
		-0.751997, 0.590057, -0.293824,
		-0.643146, -0.559121, 0.523208,
		36.669704, 34.921673, 25.100222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706562, 35.828594, 25.054609>,  <37.119907, 35.313057, 24.733974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706562, 35.828594, 25.054609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689022, 35.475739, 25.242189>,  <36.678497, 35.264027, 25.354736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689022, 35.475739, 25.242189>,  <36.706562, 35.828594, 25.054609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689022, 35.475739, 25.242189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277742, 0.440131, 0.853900,
		-0.959655, 0.167691, 0.225706,
		-0.043851, -0.882137, 0.468948,
		36.675865, 35.211098, 25.382874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633957, 36.031067, 25.657457>,  <36.706562, 35.828594, 25.054609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633957, 36.031067, 25.657457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747791, 35.649464, 25.695150>,  <36.816093, 35.420502, 25.717766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747791, 35.649464, 25.695150>,  <36.633957, 36.031067, 25.657457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747791, 35.649464, 25.695150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353010, 0.195679, 0.914928,
		-0.891287, -0.227113, 0.392462,
		0.284589, -0.954007, 0.094233,
		36.833168, 35.363262, 25.723419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339291, 35.657749, 26.239687>,  <36.633957, 36.031067, 25.657457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339291, 35.657749, 26.239687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680641, 35.462677, 26.166019>,  <36.885452, 35.345634, 26.121819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680641, 35.462677, 26.166019>,  <36.339291, 35.657749, 26.239687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680641, 35.462677, 26.166019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340139, 0.253192, 0.905648,
		-0.395033, -0.835503, 0.381946,
		0.853378, -0.487676, -0.184168,
		36.936653, 35.316376, 26.110769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446415, 35.062599, 26.787081>,  <36.339291, 35.657749, 26.239687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446415, 35.062599, 26.787081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803505, 35.133984, 26.621576>,  <37.017757, 35.176815, 26.522274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803505, 35.133984, 26.621576>,  <36.446415, 35.062599, 26.787081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803505, 35.133984, 26.621576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421463, -0.005835, 0.906827,
		0.159422, -0.983929, -0.080425,
		0.892722, 0.178464, -0.413759,
		37.071323, 35.187523, 26.497448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989265, 34.597794, 27.101397>,  <36.446415, 35.062599, 26.787081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989265, 34.597794, 27.101397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173264, 34.919540, 26.950979>,  <37.283661, 35.112587, 26.860729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173264, 34.919540, 26.950979>,  <36.989265, 34.597794, 27.101397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173264, 34.919540, 26.950979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480169, 0.130895, 0.867355,
		0.746890, -0.579540, -0.326020,
		0.459993, 0.804363, -0.376041,
		37.311260, 35.160851, 26.838167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606396, 34.440697, 27.259663>,  <36.989265, 34.597794, 27.101397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606396, 34.440697, 27.259663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597172, 34.828884, 27.163616>,  <37.591637, 35.061798, 27.105989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597172, 34.828884, 27.163616>,  <37.606396, 34.440697, 27.259663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597172, 34.828884, 27.163616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092540, 0.241220, 0.966048,
		0.995442, 0.000057, -0.095370,
		-0.023061, 0.970470, -0.240115,
		37.590252, 35.120026, 27.091581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130936, 34.719692, 27.583807>,  <37.606396, 34.440697, 27.259663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130936, 34.719692, 27.583807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891060, 35.037708, 27.547421>,  <37.747135, 35.228519, 27.525589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891060, 35.037708, 27.547421>,  <38.130936, 34.719692, 27.583807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891060, 35.037708, 27.547421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184782, 0.248181, 0.950927,
		0.778605, 0.553454, -0.295741,
		-0.599691, 0.795044, -0.090967,
		37.711151, 35.276222, 27.520130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.676254, 38.055321, 21.038889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.346588, 37.829803, 21.060394>,  <37.148788, 37.694492, 21.073298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.346588, 37.829803, 21.060394>,  <37.676254, 38.055321, 21.038889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346588, 37.829803, 21.060394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172316, -0.340050, -0.924485,
		0.539504, -0.752662, 0.377407,
		-0.824162, -0.563796, 0.053762,
		37.099339, 37.660664, 21.076523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953804, 37.445736, 20.866718>,  <37.676254, 38.055321, 21.038889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953804, 37.445736, 20.866718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557819, 37.444176, 20.810213>,  <37.320229, 37.443241, 20.776310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557819, 37.444176, 20.810213>,  <37.953804, 37.445736, 20.866718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557819, 37.444176, 20.810213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130801, -0.403654, -0.905513,
		-0.053488, -0.914904, 0.400113,
		-0.989965, -0.003901, -0.141261,
		37.260830, 37.443005, 20.767836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910480, 36.732113, 20.537519>,  <37.953804, 37.445736, 20.866718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910480, 36.732113, 20.537519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561642, 36.917439, 20.474558>,  <37.352337, 37.028633, 20.436781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561642, 36.917439, 20.474558>,  <37.910480, 36.732113, 20.537519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561642, 36.917439, 20.474558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000156, -0.321938, -0.946761,
		-0.489326, -0.825647, 0.280835,
		-0.872101, 0.463318, -0.157404,
		37.300011, 37.056435, 20.427338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369568, 36.245762, 20.317333>,  <37.910480, 36.732113, 20.537519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369568, 36.245762, 20.317333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241058, 36.601124, 20.186169>,  <37.163952, 36.814339, 20.107470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241058, 36.601124, 20.186169>,  <37.369568, 36.245762, 20.317333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241058, 36.601124, 20.186169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245644, -0.412595, -0.877168,
		-0.914573, -0.201260, 0.350786,
		-0.321271, 0.888403, -0.327910,
		37.144676, 36.867645, 20.087795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765789, 36.153008, 19.927073>,  <37.369568, 36.245762, 20.317333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765789, 36.153008, 19.927073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882854, 36.514091, 19.800920>,  <36.953094, 36.730743, 19.725229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882854, 36.514091, 19.800920>,  <36.765789, 36.153008, 19.927073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882854, 36.514091, 19.800920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377559, -0.193933, -0.905450,
		-0.878521, 0.384064, 0.284070,
		0.292660, 0.902710, -0.315381,
		36.970654, 36.784904, 19.706306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182968, 36.487762, 19.597649>,  <36.765789, 36.153008, 19.927073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182968, 36.487762, 19.597649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520432, 36.645935, 19.452389>,  <36.722908, 36.740837, 19.365232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520432, 36.645935, 19.452389>,  <36.182968, 36.487762, 19.597649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520432, 36.645935, 19.452389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276322, -0.260123, -0.925193,
		-0.460315, 0.880891, -0.110188,
		0.843657, 0.395433, -0.363148,
		36.773529, 36.764565, 19.343445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965492, 36.839500, 19.008263>,  <36.182968, 36.487762, 19.597649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965492, 36.839500, 19.008263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356956, 36.782166, 18.949358>,  <36.591835, 36.747765, 18.914015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356956, 36.782166, 18.949358>,  <35.965492, 36.839500, 19.008263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356956, 36.782166, 18.949358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181451, -0.266300, -0.946657,
		0.096476, 0.953173, -0.286625,
		0.978656, -0.143338, -0.147263,
		36.650555, 36.739162, 18.905180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013992, 36.994240, 18.362616>,  <35.965492, 36.839500, 19.008263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013992, 36.994240, 18.362616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358265, 36.804260, 18.435991>,  <36.564831, 36.690273, 18.480017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358265, 36.804260, 18.435991>,  <36.013992, 36.994240, 18.362616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358265, 36.804260, 18.435991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064047, -0.256437, -0.964437,
		0.505095, 0.841824, -0.190293,
		0.860684, -0.474945, 0.183441,
		36.616470, 36.661777, 18.491024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431507, 37.103992, 17.720200>,  <36.013992, 36.994240, 18.362616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431507, 37.103992, 17.720200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552124, 36.778458, 17.918894>,  <36.624493, 36.583138, 18.038111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552124, 36.778458, 17.918894>,  <36.431507, 37.103992, 17.720200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552124, 36.778458, 17.918894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031222, -0.512278, -0.858252,
		0.952941, 0.274309, -0.129064,
		0.301543, -0.813834, 0.496735,
		36.642586, 36.534306, 18.067915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034672, 36.765015, 17.330357>,  <36.431507, 37.103992, 17.720200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034672, 36.765015, 17.330357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839626, 36.500801, 17.558714>,  <36.722599, 36.342274, 17.695728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839626, 36.500801, 17.558714>,  <37.034672, 36.765015, 17.330357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839626, 36.500801, 17.558714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074731, -0.619922, -0.781097,
		0.869853, -0.423540, 0.252922,
		-0.487618, -0.660538, 0.570893,
		36.693340, 36.302639, 17.729982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347122, 36.169949, 17.017351>,  <37.034672, 36.765015, 17.330357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347122, 36.169949, 17.017351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023785, 36.065887, 17.228594>,  <36.829781, 36.003448, 17.355339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023785, 36.065887, 17.228594>,  <37.347122, 36.169949, 17.017351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023785, 36.065887, 17.228594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343749, -0.519675, -0.782160,
		0.477927, -0.813792, 0.330649,
		-0.808346, -0.260155, 0.528107,
		36.781281, 35.987843, 17.387026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383408, 35.497856, 17.204515>,  <37.347122, 36.169949, 17.017351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383408, 35.497856, 17.204515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991302, 35.576641, 17.211433>,  <36.756039, 35.623913, 17.215584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991302, 35.576641, 17.211433>,  <37.383408, 35.497856, 17.204515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991302, 35.576641, 17.211433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169297, -0.790960, -0.587981,
		-0.102129, -0.579301, 0.808690,
		-0.980259, 0.196959, 0.017294,
		36.697224, 35.635727, 17.216621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100639, 34.837250, 17.503090>,  <37.383408, 35.497856, 17.204515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100639, 34.837250, 17.503090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804203, 34.980362, 17.275837>,  <36.626339, 35.066227, 17.139484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804203, 34.980362, 17.275837>,  <37.100639, 34.837250, 17.503090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804203, 34.980362, 17.275837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102260, -0.896466, -0.431152,
		-0.663568, -0.261427, 0.700951,
		-0.741094, 0.357778, -0.568133,
		36.581875, 35.087696, 17.105396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801769, 34.362782, 17.052805>,  <37.100639, 34.837250, 17.503090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801769, 34.362782, 17.052805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494831, 34.119633, 17.134464>,  <36.310669, 33.973743, 17.183460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.494831, 34.119633, 17.134464>,  <36.801769, 34.362782, 17.052805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494831, 34.119633, 17.134464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381103, -0.176282, 0.907571,
		-0.515700, 0.774219, 0.366931,
		-0.767342, -0.607873, 0.204149,
		36.264629, 33.937271, 17.195709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489105, 34.569477, 17.750233>,  <36.801769, 34.362782, 17.052805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489105, 34.569477, 17.750233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406063, 34.185932, 17.672794>,  <36.356239, 33.955803, 17.626331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.406063, 34.185932, 17.672794>,  <36.489105, 34.569477, 17.750233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406063, 34.185932, 17.672794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339487, -0.256231, 0.905038,
		-0.917414, 0.122168, 0.378717,
		-0.207606, -0.958864, -0.193596,
		36.343781, 33.898273, 17.614716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997765, 34.426311, 18.184893>,  <36.489105, 34.569477, 17.750233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997765, 34.426311, 18.184893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165421, 34.081810, 18.069950>,  <36.266014, 33.875111, 18.000984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165421, 34.081810, 18.069950>,  <35.997765, 34.426311, 18.184893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165421, 34.081810, 18.069950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012594, -0.321982, 0.946662,
		-0.907835, -0.393164, -0.145801,
		0.419138, -0.861249, -0.287355,
		36.291161, 33.823437, 17.983744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645710, 33.972511, 18.547886>,  <35.997765, 34.426311, 18.184893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645710, 33.972511, 18.547886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959064, 33.766266, 18.409065>,  <36.147079, 33.642517, 18.325773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959064, 33.766266, 18.409065>,  <35.645710, 33.972511, 18.547886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959064, 33.766266, 18.409065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065407, -0.486889, 0.871012,
		-0.618081, -0.705041, -0.347698,
		0.783389, -0.515614, -0.347051,
		36.194080, 33.611584, 18.304951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424339, 33.245235, 18.615990>,  <35.645710, 33.972511, 18.547886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424339, 33.245235, 18.615990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814552, 33.333130, 18.612846>,  <36.048679, 33.385864, 18.610960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814552, 33.333130, 18.612846>,  <35.424339, 33.245235, 18.615990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814552, 33.333130, 18.612846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098097, -0.402976, 0.909938,
		0.196776, -0.888442, -0.414670,
		0.975529, 0.219732, -0.007858,
		36.107212, 33.399048, 18.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757793, 32.737743, 19.022663>,  <35.424339, 33.245235, 18.615990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757793, 32.737743, 19.022663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072796, 32.983692, 19.005831>,  <36.261799, 33.131260, 18.995731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.072796, 32.983692, 19.005831>,  <35.757793, 32.737743, 19.022663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072796, 32.983692, 19.005831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162112, -0.140784, 0.976678,
		0.594606, -0.775961, -0.210546,
		0.787505, 0.614870, -0.042081,
		36.309048, 33.168152, 18.993206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235493, 32.456551, 19.504347>,  <35.757793, 32.737743, 19.022663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235493, 32.456551, 19.504347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.361279, 32.834972, 19.473116>,  <36.436749, 33.062027, 19.454378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.361279, 32.834972, 19.473116>,  <36.235493, 32.456551, 19.504347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361279, 32.834972, 19.473116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126676, 0.039694, 0.991150,
		0.940780, -0.321568, -0.107360,
		0.314461, 0.946054, -0.078078,
		36.455616, 33.118790, 19.449692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799519, 32.496002, 19.914780>,  <36.235493, 32.456551, 19.504347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799519, 32.496002, 19.914780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650040, 32.865547, 19.881701>,  <36.560352, 33.087273, 19.861853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650040, 32.865547, 19.881701>,  <36.799519, 32.496002, 19.914780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650040, 32.865547, 19.881701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120503, 0.136754, 0.983248,
		0.919692, 0.357468, -0.162432,
		-0.373693, 0.923859, -0.082696,
		36.537933, 33.142704, 19.856892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059772, 32.869583, 20.498077>,  <36.799519, 32.496002, 19.914780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059772, 32.869583, 20.498077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745792, 33.086987, 20.379118>,  <36.557404, 33.217430, 20.307741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745792, 33.086987, 20.379118>,  <37.059772, 32.869583, 20.498077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745792, 33.086987, 20.379118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158458, 0.287939, 0.944448,
		0.598949, 0.788472, -0.139896,
		-0.784953, 0.543509, -0.297400,
		36.510307, 33.250038, 20.289898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227242, 33.416866, 20.864603>,  <37.059772, 32.869583, 20.498077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227242, 33.416866, 20.864603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838718, 33.433285, 20.770905>,  <36.605602, 33.443134, 20.714685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838718, 33.433285, 20.770905>,  <37.227242, 33.416866, 20.864603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838718, 33.433285, 20.770905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198529, 0.402339, 0.893705,
		0.130931, 0.914570, -0.382647,
		-0.971310, 0.041048, -0.234247,
		36.547325, 33.445599, 20.700630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009552, 34.022617, 21.042982>,  <37.227242, 33.416866, 20.864603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009552, 34.022617, 21.042982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660278, 33.827667, 21.044180>,  <36.450714, 33.710697, 21.044899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660278, 33.827667, 21.044180>,  <37.009552, 34.022617, 21.042982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660278, 33.827667, 21.044180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286754, 0.518704, 0.805431,
		-0.394100, 0.702433, -0.592683,
		-0.873188, -0.487375, 0.002996,
		36.398323, 33.681454, 21.045078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489746, 34.589653, 21.073536>,  <37.009552, 34.022617, 21.042982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489746, 34.589653, 21.073536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335926, 34.249252, 21.216599>,  <36.243633, 34.045013, 21.302437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335926, 34.249252, 21.216599>,  <36.489746, 34.589653, 21.073536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335926, 34.249252, 21.216599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272010, 0.474709, 0.837056,
		-0.882119, 0.224601, -0.414029,
		-0.384547, -0.851003, 0.357656,
		36.220562, 33.993950, 21.323895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998692, 34.813183, 21.482437>,  <36.489746, 34.589653, 21.073536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998692, 34.813183, 21.482437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019691, 34.439026, 21.622314>,  <36.032291, 34.214531, 21.706242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019691, 34.439026, 21.622314>,  <35.998692, 34.813183, 21.482437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019691, 34.439026, 21.622314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255249, 0.325975, 0.910268,
		-0.965449, -0.137046, -0.221645,
		0.052497, -0.935392, 0.349693,
		36.035442, 34.158409, 21.727222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432213, 34.796280, 22.047764>,  <35.998692, 34.813183, 21.482437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432213, 34.796280, 22.047764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680759, 34.492184, 22.123590>,  <35.829887, 34.309727, 22.169086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680759, 34.492184, 22.123590>,  <35.432213, 34.796280, 22.047764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680759, 34.492184, 22.123590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187999, 0.090209, 0.978018,
		-0.760628, -0.643349, -0.086871,
		0.621370, -0.760240, 0.189565,
		35.867172, 34.264111, 22.180460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085167, 34.417213, 22.590101>,  <35.432213, 34.796280, 22.047764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085167, 34.417213, 22.590101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464634, 34.295567, 22.624817>,  <35.692314, 34.222576, 22.645647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464634, 34.295567, 22.624817>,  <35.085167, 34.417213, 22.590101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464634, 34.295567, 22.624817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092030, -0.002905, 0.995752,
		-0.302577, -0.952629, -0.030744,
		0.948672, -0.304121, 0.086791,
		35.749237, 34.204330, 22.650854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649548, 33.866917, 22.690739>,  <35.085167, 34.417213, 22.590101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649548, 33.866917, 22.690739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294022, 33.703979, 22.774714>,  <34.080704, 33.606216, 22.825098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294022, 33.703979, 22.774714>,  <34.649548, 33.866917, 22.690739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294022, 33.703979, 22.774714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338914, 0.275953, -0.899437,
		0.308457, -0.870582, -0.383329,
		-0.888815, -0.407353, 0.209933,
		34.027374, 33.581776, 22.837694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421188, 33.410538, 22.163260>,  <34.649548, 33.866917, 22.690739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421188, 33.410538, 22.163260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089920, 33.517990, 22.360022>,  <33.891159, 33.582462, 22.478079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089920, 33.517990, 22.360022>,  <34.421188, 33.410538, 22.163260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089920, 33.517990, 22.360022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483000, 0.103167, -0.869521,
		-0.284325, -0.957703, 0.044307,
		-0.828173, 0.268627, 0.491904,
		33.841469, 33.598579, 22.507593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941765, 32.889454, 22.036650>,  <34.421188, 33.410538, 22.163260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941765, 32.889454, 22.036650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747280, 33.213486, 22.167723>,  <33.630589, 33.407906, 22.246367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747280, 33.213486, 22.167723>,  <33.941765, 32.889454, 22.036650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747280, 33.213486, 22.167723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493745, 0.054715, -0.867884,
		-0.720981, -0.583766, 0.373368,
		-0.486212, 0.810077, 0.327680,
		33.601418, 33.456509, 22.266027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130863, 32.842899, 21.878811>,  <33.941765, 32.889454, 22.036650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130863, 32.842899, 21.878811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223850, 33.230583, 21.911266>,  <33.279644, 33.463196, 21.930740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223850, 33.230583, 21.911266>,  <33.130863, 32.842899, 21.878811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223850, 33.230583, 21.911266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522835, 0.194877, -0.829860,
		-0.820123, 0.150493, 0.552041,
		0.232468, 0.969213, 0.081140,
		33.293591, 33.521347, 21.935608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597439, 32.990894, 21.641657>,  <33.130863, 32.842899, 21.878811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597439, 32.990894, 21.641657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814686, 33.325890, 21.617529>,  <32.945034, 33.526886, 21.603052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814686, 33.325890, 21.617529>,  <32.597439, 32.990894, 21.641657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814686, 33.325890, 21.617529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536832, 0.291105, -0.791877,
		-0.645629, 0.462461, 0.607695,
		0.543115, 0.837489, -0.060318,
		32.977619, 33.577137, 21.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168827, 33.460743, 21.376059>,  <32.597439, 32.990894, 21.641657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168827, 33.460743, 21.376059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.518135, 33.649323, 21.326845>,  <32.727718, 33.762470, 21.297318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.518135, 33.649323, 21.326845>,  <32.168827, 33.460743, 21.376059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518135, 33.649323, 21.326845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355049, 0.442806, -0.823324,
		-0.333672, 0.762668, 0.554076,
		0.873272, 0.471444, -0.123032,
		32.780117, 33.790756, 21.289936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990021, 34.022167, 20.981949>,  <32.168827, 33.460743, 21.376059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990021, 34.022167, 20.981949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378735, 33.988911, 20.893658>,  <32.611961, 33.968956, 20.840683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378735, 33.988911, 20.893658>,  <31.990021, 34.022167, 20.981949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378735, 33.988911, 20.893658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189473, 0.282194, -0.940461,
		0.140475, 0.955748, 0.258480,
		0.971785, -0.083137, -0.220729,
		32.670269, 33.963970, 20.827438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799623, 34.742168, 20.697346>,  <31.990021, 34.022167, 20.981949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799623, 34.742168, 20.697346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403416, 34.714233, 20.650023>,  <31.165691, 34.697472, 20.621628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403416, 34.714233, 20.650023>,  <31.799623, 34.742168, 20.697346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403416, 34.714233, 20.650023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107975, -0.136708, 0.984709,
		-0.084942, 0.988147, 0.127871,
		-0.990518, -0.069836, -0.118308,
		31.106260, 34.693283, 20.614531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561262, 34.980389, 21.303450>,  <31.799623, 34.742168, 20.697346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561262, 34.980389, 21.303450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232016, 34.787540, 21.183422>,  <31.034468, 34.671833, 21.111406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232016, 34.787540, 21.183422>,  <31.561262, 34.980389, 21.303450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232016, 34.787540, 21.183422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276497, -0.121285, 0.953331,
		-0.496010, 0.867672, -0.033472,
		-0.823118, -0.482117, -0.300067,
		30.985081, 34.642906, 21.093403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987900, 35.277405, 21.605360>,  <31.561262, 34.980389, 21.303450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987900, 35.277405, 21.605360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847157, 34.910477, 21.530825>,  <30.762711, 34.690319, 21.486103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.847157, 34.910477, 21.530825>,  <30.987900, 35.277405, 21.605360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847157, 34.910477, 21.530825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269457, -0.091384, 0.958667,
		-0.896431, 0.387525, -0.215024,
		-0.351857, -0.917319, -0.186341,
		30.741600, 34.635281, 21.474922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397999, 35.207024, 22.050505>,  <30.987900, 35.277405, 21.605360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397999, 35.207024, 22.050505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511105, 34.841351, 21.934362>,  <30.578968, 34.621944, 21.864677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.511105, 34.841351, 21.934362>,  <30.397999, 35.207024, 22.050505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511105, 34.841351, 21.934362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115141, -0.332871, 0.935917,
		-0.952254, -0.231212, -0.199384,
		0.282764, -0.914187, -0.290355,
		30.595934, 34.567093, 21.847256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928019, 34.752686, 22.395006>,  <30.397999, 35.207024, 22.050505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928019, 34.752686, 22.395006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232399, 34.506233, 22.313683>,  <30.415028, 34.358360, 22.264889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232399, 34.506233, 22.313683>,  <29.928019, 34.752686, 22.395006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232399, 34.506233, 22.313683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016708, -0.294645, 0.955461,
		-0.648593, -0.730457, -0.213916,
		0.760952, -0.616131, -0.203309,
		30.460684, 34.321396, 22.252689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757177, 34.195057, 22.778242>,  <29.928019, 34.752686, 22.395006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757177, 34.195057, 22.778242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149609, 34.162632, 22.707909>,  <30.385067, 34.143177, 22.665709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.149609, 34.162632, 22.707909>,  <29.757177, 34.195057, 22.778242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149609, 34.162632, 22.707909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131591, -0.387020, 0.912633,
		-0.142026, -0.918502, -0.369030,
		0.981077, -0.081057, -0.175834,
		30.443932, 34.138313, 22.655159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009666, 33.495552, 23.139927>,  <29.757177, 34.195057, 22.778242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009666, 33.495552, 23.139927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.360033, 33.670471, 23.058397>,  <30.570253, 33.775421, 23.009480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.360033, 33.670471, 23.058397>,  <30.009666, 33.495552, 23.139927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360033, 33.670471, 23.058397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361058, -0.313919, 0.878118,
		0.320016, -0.842748, -0.432857,
		0.875915, 0.437299, -0.203822,
		30.622807, 33.801662, 22.997252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.318062, 36.816822, 17.655708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712605, 36.755867, 17.680605>,  <33.949329, 36.719296, 17.695543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712605, 36.755867, 17.680605>,  <33.318062, 36.816822, 17.655708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712605, 36.755867, 17.680605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011169, 0.439194, 0.898323,
		-0.164229, -0.885374, 0.434905,
		0.986359, -0.152387, 0.062240,
		34.008511, 36.710152, 17.699276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417328, 36.565563, 18.236137>,  <33.318062, 36.816822, 17.655708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417328, 36.565563, 18.236137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.796646, 36.677795, 18.176800>,  <34.024239, 36.745136, 18.141197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.796646, 36.677795, 18.176800>,  <33.417328, 36.565563, 18.236137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796646, 36.677795, 18.176800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066999, 0.279895, 0.957690,
		0.310235, -0.918112, 0.246625,
		0.948296, 0.280585, -0.148346,
		34.081135, 36.761971, 18.132296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805542, 36.120998, 18.782822>,  <33.417328, 36.565563, 18.236137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805542, 36.120998, 18.782822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044292, 36.422104, 18.671762>,  <34.187542, 36.602768, 18.605127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044292, 36.422104, 18.671762>,  <33.805542, 36.120998, 18.782822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044292, 36.422104, 18.671762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186211, 0.206635, 0.960535,
		0.780426, -0.625022, -0.016837,
		0.596876, 0.752761, -0.277650,
		34.223354, 36.647934, 18.588467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320164, 35.993847, 19.271561>,  <33.805542, 36.120998, 18.782822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320164, 35.993847, 19.271561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329578, 36.367874, 19.130081>,  <34.335228, 36.592289, 19.045195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329578, 36.367874, 19.130081>,  <34.320164, 35.993847, 19.271561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329578, 36.367874, 19.130081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206908, 0.341577, 0.916796,
		0.978077, -0.094764, -0.185432,
		0.023539, 0.935064, -0.353696,
		34.336639, 36.648392, 19.023972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907894, 36.242142, 19.562349>,  <34.320164, 35.993847, 19.271561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907894, 36.242142, 19.562349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.701252, 36.571892, 19.469799>,  <34.577267, 36.769741, 19.414268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.701252, 36.571892, 19.469799>,  <34.907894, 36.242142, 19.562349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701252, 36.571892, 19.469799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243861, 0.400697, 0.883162,
		0.820765, 0.399818, -0.408032,
		-0.516601, 0.824371, -0.231378,
		34.546272, 36.819202, 19.400385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245007, 36.843895, 19.867056>,  <34.907894, 36.242142, 19.562349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245007, 36.843895, 19.867056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890388, 37.007973, 19.781462>,  <34.677620, 37.106419, 19.730106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890388, 37.007973, 19.781462>,  <35.245007, 36.843895, 19.867056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890388, 37.007973, 19.781462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033064, 0.517509, 0.855039,
		0.461468, 0.750952, -0.472355,
		-0.886541, 0.410190, -0.213984,
		34.624428, 37.131031, 19.717266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228729, 37.658520, 19.991402>,  <35.245007, 36.843895, 19.867056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228729, 37.658520, 19.991402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846897, 37.542561, 20.018908>,  <34.617798, 37.472984, 20.035412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846897, 37.542561, 20.018908>,  <35.228729, 37.658520, 19.991402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846897, 37.542561, 20.018908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132934, 0.620963, 0.772486,
		-0.266643, 0.728261, -0.631298,
		-0.954584, -0.289899, 0.068765,
		34.560520, 37.455589, 20.039537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878498, 38.331455, 20.165232>,  <35.228729, 37.658520, 19.991402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878498, 38.331455, 20.165232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.616356, 38.047390, 20.268131>,  <34.459068, 37.876953, 20.329870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.616356, 38.047390, 20.268131>,  <34.878498, 38.331455, 20.165232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616356, 38.047390, 20.268131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088815, 0.410676, 0.907445,
		-0.750077, 0.571855, -0.332214,
		-0.655360, -0.710160, 0.257249,
		34.419746, 37.834343, 20.345306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342381, 38.676102, 20.470600>,  <34.878498, 38.331455, 20.165232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342381, 38.676102, 20.470600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.324314, 38.292774, 20.583445>,  <34.313473, 38.062778, 20.651152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.324314, 38.292774, 20.583445>,  <34.342381, 38.676102, 20.470600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324314, 38.292774, 20.583445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110684, 0.285464, 0.951977,
		-0.992829, 0.011775, -0.118965,
		-0.045170, -0.958317, 0.282113,
		34.310764, 38.005280, 20.668079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819477, 38.670116, 20.861568>,  <34.342381, 38.676102, 20.470600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819477, 38.670116, 20.861568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.003685, 38.337402, 20.985537>,  <34.114208, 38.137772, 21.059917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.003685, 38.337402, 20.985537>,  <33.819477, 38.670116, 20.861568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003685, 38.337402, 20.985537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251698, 0.212452, 0.944199,
		-0.851217, -0.512829, -0.111522,
		0.460519, -0.831788, 0.309920,
		34.141842, 38.087868, 21.078512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399006, 38.230595, 21.403534>,  <33.819477, 38.670116, 20.861568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399006, 38.230595, 21.403534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750290, 38.048550, 21.462345>,  <33.961060, 37.939323, 21.497633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750290, 38.048550, 21.462345>,  <33.399006, 38.230595, 21.403534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750290, 38.048550, 21.462345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059313, 0.201407, 0.977710,
		-0.474584, -0.867355, 0.149883,
		0.878210, -0.455115, 0.147030,
		34.013752, 37.912014, 21.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250587, 37.853256, 21.931879>,  <33.399006, 38.230595, 21.403534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250587, 37.853256, 21.931879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649353, 37.881706, 21.918638>,  <33.888615, 37.898777, 21.910694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649353, 37.881706, 21.918638>,  <33.250587, 37.853256, 21.931879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649353, 37.881706, 21.918638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021541, 0.157532, 0.987279,
		0.075430, -0.984950, 0.155514,
		0.996918, 0.071121, -0.033100,
		33.948429, 37.903042, 21.908709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901901, 37.455734, 22.261051>,  <33.250587, 37.853256, 21.931879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901901, 37.455734, 22.261051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.503731, 37.446651, 22.298155>,  <32.264828, 37.441200, 22.320417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.503731, 37.446651, 22.298155>,  <32.901901, 37.455734, 22.261051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503731, 37.446651, 22.298155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091350, -0.056691, -0.994204,
		0.027838, -0.998133, 0.054357,
		-0.995430, -0.022711, 0.092757,
		32.205101, 37.439838, 22.325981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579418, 36.844231, 21.807074>,  <32.901901, 37.455734, 22.261051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579418, 36.844231, 21.807074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.315945, 37.132523, 21.893503>,  <32.157860, 37.305496, 21.945362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.315945, 37.132523, 21.893503>,  <32.579418, 36.844231, 21.807074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315945, 37.132523, 21.893503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321498, -0.009952, -0.946858,
		-0.680275, -0.693148, 0.238267,
		-0.658684, 0.720727, 0.216075,
		32.118340, 37.348740, 21.958326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010265, 36.633816, 21.578812>,  <32.579418, 36.844231, 21.807074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010265, 36.633816, 21.578812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.967014, 37.031334, 21.589279>,  <31.941065, 37.269844, 21.595560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.967014, 37.031334, 21.589279>,  <32.010265, 36.633816, 21.578812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967014, 37.031334, 21.589279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320633, -0.009946, -0.947151,
		-0.941012, -0.110799, 0.319718,
		-0.108123, 0.993793, 0.026167,
		31.934578, 37.329472, 21.597130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336752, 36.744499, 21.258741>,  <32.010265, 36.633816, 21.578812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336752, 36.744499, 21.258741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541525, 37.088074, 21.253855>,  <31.664389, 37.294220, 21.250923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541525, 37.088074, 21.253855>,  <31.336752, 36.744499, 21.258741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541525, 37.088074, 21.253855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287946, 0.158185, -0.944492,
		-0.809328, 0.487034, 0.328308,
		0.511933, 0.858939, -0.012216,
		31.695105, 37.345757, 21.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773695, 37.246281, 21.093851>,  <31.336752, 36.744499, 21.258741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773695, 37.246281, 21.093851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116058, 37.435612, 21.010538>,  <31.321476, 37.549210, 20.960550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116058, 37.435612, 21.010538>,  <30.773695, 37.246281, 21.093851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116058, 37.435612, 21.010538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313072, 0.153718, -0.937207,
		-0.411586, 0.867372, 0.279753,
		0.855910, 0.473325, -0.208282,
		31.372831, 37.577610, 20.948053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624847, 37.919075, 20.952124>,  <30.773695, 37.246281, 21.093851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624847, 37.919075, 20.952124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968895, 37.831718, 20.767733>,  <31.175323, 37.779305, 20.657099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.968895, 37.831718, 20.767733>,  <30.624847, 37.919075, 20.952124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968895, 37.831718, 20.767733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372491, 0.348491, -0.860119,
		0.348491, 0.911514, 0.218394,
		0.860119, -0.218394, -0.460977,
		31.226931, 37.766201, 20.629440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631149, 38.371861, 20.429775>,  <30.624847, 37.919075, 20.952124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631149, 38.371861, 20.429775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943100, 38.162437, 20.292559>,  <31.130270, 38.036781, 20.210230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943100, 38.162437, 20.292559>,  <30.631149, 38.371861, 20.429775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943100, 38.162437, 20.292559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319454, 0.138372, -0.937444,
		0.538276, 0.840677, -0.059341,
		0.779877, -0.523561, -0.343040,
		31.177063, 38.005371, 20.189646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921614, 38.728401, 19.887909>,  <30.631149, 38.371861, 20.429775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921614, 38.728401, 19.887909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032024, 38.350353, 19.817989>,  <31.098270, 38.123524, 19.776037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032024, 38.350353, 19.817989>,  <30.921614, 38.728401, 19.887909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032024, 38.350353, 19.817989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214429, 0.116726, -0.969740,
		0.936925, 0.305157, -0.170442,
		0.276028, -0.945121, -0.174798,
		31.114832, 38.066818, 19.765551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490240, 38.739697, 19.444326>,  <30.921614, 38.728401, 19.887909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490240, 38.739697, 19.444326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357279, 38.365086, 19.399729>,  <31.277502, 38.140320, 19.372971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357279, 38.365086, 19.399729>,  <31.490240, 38.739697, 19.444326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357279, 38.365086, 19.399729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056396, 0.137741, -0.988861,
		0.941450, -0.322411, -0.098602,
		-0.332401, -0.936525, -0.111494,
		31.257559, 38.084129, 19.366282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899405, 38.338257, 18.909880>,  <31.490240, 38.739697, 19.444326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899405, 38.338257, 18.909880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572937, 38.107346, 18.919807>,  <31.377056, 37.968800, 18.925764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572937, 38.107346, 18.919807>,  <31.899405, 38.338257, 18.909880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572937, 38.107346, 18.919807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176437, 0.208090, -0.962065,
		0.550217, -0.789586, -0.271690,
		-0.816168, -0.577281, 0.024818,
		31.328087, 37.934162, 18.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988096, 37.834858, 18.396704>,  <31.899405, 38.338257, 18.909880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988096, 37.834858, 18.396704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596182, 37.875431, 18.465677>,  <31.361034, 37.899776, 18.507061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.596182, 37.875431, 18.465677>,  <31.988096, 37.834858, 18.396704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596182, 37.875431, 18.465677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175407, -0.021089, -0.984270,
		-0.096202, -0.994619, 0.038454,
		-0.979785, 0.101434, 0.172434,
		31.302246, 37.905861, 18.517408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634676, 37.308384, 18.071787>,  <31.988096, 37.834858, 18.396704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634676, 37.308384, 18.071787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340487, 37.575787, 18.115932>,  <31.163973, 37.736229, 18.142420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340487, 37.575787, 18.115932>,  <31.634676, 37.308384, 18.071787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340487, 37.575787, 18.115932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368600, -0.258096, -0.893040,
		-0.568517, -0.697488, 0.436233,
		-0.735474, 0.668504, 0.110362,
		31.119844, 37.776337, 18.149040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103428, 36.962631, 17.787848>,  <31.634676, 37.308384, 18.071787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103428, 36.962631, 17.787848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.985336, 37.344410, 17.805124>,  <30.914480, 37.573479, 17.815491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.985336, 37.344410, 17.805124>,  <31.103428, 36.962631, 17.787848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985336, 37.344410, 17.805124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524080, -0.123977, -0.842597,
		-0.798861, -0.271396, 0.536810,
		-0.295230, 0.954449, 0.043193,
		30.896767, 37.630745, 17.818083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486076, 36.834946, 18.055294>,  <31.103428, 36.962631, 17.787848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486076, 36.834946, 18.055294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370775, 36.460365, 17.975323>,  <30.301594, 36.235619, 17.927340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370775, 36.460365, 17.975323>,  <30.486076, 36.834946, 18.055294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370775, 36.460365, 17.975323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409308, -0.309254, 0.858387,
		-0.865665, 0.165601, 0.472440,
		-0.288254, -0.936450, -0.199929,
		30.284300, 36.179432, 17.915344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079388, 36.573921, 18.529905>,  <30.486076, 36.834946, 18.055294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079388, 36.573921, 18.529905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217234, 36.233219, 18.372047>,  <30.299942, 36.028797, 18.277332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217234, 36.233219, 18.372047>,  <30.079388, 36.573921, 18.529905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217234, 36.233219, 18.372047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216262, -0.337054, 0.916311,
		-0.913493, -0.401123, 0.068049,
		0.344617, -0.851760, -0.394645,
		30.320620, 35.977692, 18.253654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712803, 35.906052, 18.798935>,  <30.079388, 36.573921, 18.529905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712803, 35.906052, 18.798935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068222, 35.780190, 18.665384>,  <30.281473, 35.704674, 18.585255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068222, 35.780190, 18.665384>,  <29.712803, 35.906052, 18.798935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068222, 35.780190, 18.665384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190915, -0.408147, 0.892731,
		-0.417189, -0.856971, -0.302579,
		0.888541, -0.314670, -0.333883,
		30.334787, 35.685795, 18.565222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767071, 35.241993, 18.897619>,  <29.712803, 35.906052, 18.798935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767071, 35.241993, 18.897619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155910, 35.310406, 18.833403>,  <30.389214, 35.351456, 18.794872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155910, 35.310406, 18.833403>,  <29.767071, 35.241993, 18.897619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155910, 35.310406, 18.833403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218918, -0.415611, 0.882804,
		0.084271, -0.893317, -0.441457,
		0.972098, 0.171037, -0.160539,
		30.447540, 35.361717, 18.785240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101671, 34.624199, 19.019009>,  <29.767071, 35.241993, 18.897619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101671, 34.624199, 19.019009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376257, 34.910004, 19.073025>,  <30.541008, 35.081486, 19.105434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376257, 34.910004, 19.073025>,  <30.101671, 34.624199, 19.019009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376257, 34.910004, 19.073025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362725, -0.497422, 0.788037,
		0.630235, -0.491978, -0.600635,
		0.686465, 0.714514, 0.135040,
		30.582197, 35.124359, 19.113537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765560, 34.230026, 18.972206>,  <30.101671, 34.624199, 19.019009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765560, 34.230026, 18.972206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840782, 34.567188, 19.173855>,  <30.885916, 34.769485, 19.294844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840782, 34.567188, 19.173855>,  <30.765560, 34.230026, 18.972206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840782, 34.567188, 19.173855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287748, -0.538043, 0.792282,
		0.939062, -0.003933, -0.343727,
		0.188056, 0.842908, 0.504124,
		30.897200, 34.820061, 19.325092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180775, 34.013504, 19.511866>,  <30.765560, 34.230026, 18.972206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180775, 34.013504, 19.511866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093279, 34.376740, 19.654713>,  <31.040781, 34.594681, 19.740421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093279, 34.376740, 19.654713>,  <31.180775, 34.013504, 19.511866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093279, 34.376740, 19.654713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237659, -0.305381, 0.922096,
		0.946399, 0.286573, -0.149015,
		-0.218741, 0.908085, 0.357119,
		31.027657, 34.649166, 19.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750494, 34.338108, 20.061661>,  <31.180775, 34.013504, 19.511866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750494, 34.338108, 20.061661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382057, 34.482559, 20.119869>,  <31.160995, 34.569229, 20.154795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382057, 34.482559, 20.119869>,  <31.750494, 34.338108, 20.061661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382057, 34.482559, 20.119869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120487, -0.091030, 0.988533,
		0.370231, 0.928064, 0.040336,
		-0.921093, 0.361125, 0.145521,
		31.105730, 34.590897, 20.163527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455170, 34.865719, 19.948708>,  <31.750494, 34.338108, 20.061661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455170, 34.865719, 19.948708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.678490, 34.561069, 20.080299>,  <32.812481, 34.378281, 20.159254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.678490, 34.561069, 20.080299>,  <32.455170, 34.865719, 19.948708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678490, 34.561069, 20.080299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212364, -0.252132, -0.944103,
		0.802002, 0.596953, 0.020978,
		0.558296, -0.761628, 0.328981,
		32.845978, 34.332581, 20.178993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203205, 34.897545, 19.697100>,  <32.455170, 34.865719, 19.948708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203205, 34.897545, 19.697100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116425, 34.515961, 19.779943>,  <33.064354, 34.287010, 19.829649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116425, 34.515961, 19.779943>,  <33.203205, 34.897545, 19.697100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116425, 34.515961, 19.779943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426941, -0.283522, -0.858683,
		0.877868, -0.097872, 0.468795,
		-0.216955, -0.953958, 0.207109,
		33.051338, 34.229774, 19.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869652, 34.549606, 19.663551>,  <33.203205, 34.897545, 19.697100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869652, 34.549606, 19.663551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.582886, 34.280003, 19.592291>,  <33.410824, 34.118240, 19.549534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.582886, 34.280003, 19.592291>,  <33.869652, 34.549606, 19.663551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582886, 34.280003, 19.592291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429639, -0.225902, -0.874287,
		0.549035, -0.703333, 0.451535,
		-0.716918, -0.674011, -0.178150,
		33.367809, 34.077801, 19.538845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244625, 33.992348, 19.402328>,  <33.869652, 34.549606, 19.663551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244625, 33.992348, 19.402328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.875435, 33.899391, 19.279621>,  <33.653919, 33.843616, 19.205997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.875435, 33.899391, 19.279621>,  <34.244625, 33.992348, 19.402328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875435, 33.899391, 19.279621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375649, -0.370726, -0.849382,
		0.083661, -0.899198, 0.429468,
		-0.922978, -0.232389, -0.306768,
		33.598541, 33.829674, 19.187592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298378, 33.270985, 19.194281>,  <34.244625, 33.992348, 19.402328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298378, 33.270985, 19.194281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.964706, 33.380627, 19.002857>,  <33.764503, 33.446411, 18.888002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.964706, 33.380627, 19.002857>,  <34.298378, 33.270985, 19.194281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964706, 33.380627, 19.002857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416985, -0.254433, -0.872575,
		-0.360940, -0.927432, 0.097943,
		-0.834174, 0.274107, -0.478560,
		33.714455, 33.462856, 18.859289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019783, 32.624813, 18.883301>,  <34.298378, 33.270985, 19.194281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019783, 32.624813, 18.883301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871563, 32.939114, 18.685198>,  <33.782631, 33.127693, 18.566336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871563, 32.939114, 18.685198>,  <34.019783, 32.624813, 18.883301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871563, 32.939114, 18.685198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254688, -0.426820, -0.867732,
		-0.893211, -0.447676, -0.041963,
		-0.370552, 0.785755, -0.495257,
		33.760399, 33.174839, 18.536621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615177, 32.337757, 18.353647>,  <34.019783, 32.624813, 18.883301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615177, 32.337757, 18.353647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676861, 32.713737, 18.231855>,  <33.713871, 32.939327, 18.158779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676861, 32.713737, 18.231855>,  <33.615177, 32.337757, 18.353647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676861, 32.713737, 18.231855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180571, -0.329787, -0.926625,
		-0.971398, 0.087910, -0.220583,
		0.154206, 0.939953, -0.304481,
		33.723122, 32.995724, 18.140511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164879, 32.434631, 17.834789>,  <33.615177, 32.337757, 18.353647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164879, 32.434631, 17.834789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.451744, 32.709164, 17.786406>,  <33.623863, 32.873882, 17.757376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.451744, 32.709164, 17.786406>,  <33.164879, 32.434631, 17.834789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451744, 32.709164, 17.786406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174846, -0.345213, -0.922094,
		-0.674616, 0.640143, -0.367575,
		0.717163, 0.686328, -0.120960,
		33.666893, 32.915062, 17.750118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105259, 32.566414, 17.158543>,  <33.164879, 32.434631, 17.834789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105259, 32.566414, 17.158543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.470261, 32.693653, 17.261423>,  <33.689262, 32.769997, 17.323151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.470261, 32.693653, 17.261423>,  <33.105259, 32.566414, 17.158543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470261, 32.693653, 17.261423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354596, -0.301593, -0.885044,
		-0.203960, 0.898808, -0.388000,
		0.912503, 0.318097, 0.257201,
		33.744011, 32.789082, 17.338583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.173038, 35.048119, 33.001690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348240, 35.276474, 32.723919>,  <35.453362, 35.413486, 32.557255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348240, 35.276474, 32.723919>,  <35.173038, 35.048119, 33.001690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348240, 35.276474, 32.723919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810594, -0.083200, -0.579668,
		-0.388705, 0.816799, 0.426320,
		0.438003, 0.570892, -0.694432,
		35.479641, 35.447742, 32.515591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547955, 35.465584, 32.708492>,  <35.173038, 35.048119, 33.001690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547955, 35.465584, 32.708492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850792, 35.478588, 32.447491>,  <35.032494, 35.486389, 32.290890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850792, 35.478588, 32.447491>,  <34.547955, 35.465584, 32.708492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850792, 35.478588, 32.447491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647476, -0.095856, -0.756033,
		-0.087125, 0.994864, -0.051522,
		0.757089, 0.032510, -0.652503,
		35.077919, 35.488342, 32.251740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378242, 35.908005, 32.154888>,  <34.547955, 35.465584, 32.708492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378242, 35.908005, 32.154888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643021, 35.634068, 32.033024>,  <34.801888, 35.469704, 31.959906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643021, 35.634068, 32.033024>,  <34.378242, 35.908005, 32.154888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643021, 35.634068, 32.033024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587582, -0.221754, -0.778185,
		0.465375, 0.694129, -0.549191,
		0.661946, -0.684843, -0.304659,
		34.841606, 35.428616, 31.941626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177071, 35.800331, 31.403723>,  <34.378242, 35.908005, 32.154888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177071, 35.800331, 31.403723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463959, 35.524963, 31.446932>,  <34.636093, 35.359741, 31.472857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463959, 35.524963, 31.446932>,  <34.177071, 35.800331, 31.403723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463959, 35.524963, 31.446932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402721, -0.535996, -0.741973,
		0.568690, 0.488656, -0.661670,
		0.717222, -0.688421, 0.108023,
		34.679127, 35.318436, 31.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646145, 35.778591, 30.743174>,  <34.177071, 35.800331, 31.403723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646145, 35.778591, 30.743174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651291, 35.433167, 30.944807>,  <34.654377, 35.225914, 31.065788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651291, 35.433167, 30.944807>,  <34.646145, 35.778591, 30.743174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651291, 35.433167, 30.944807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284396, -0.486466, -0.826117,
		0.958621, -0.132732, -0.251851,
		0.012865, -0.863558, 0.504084,
		34.655151, 35.174099, 31.096033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869499, 35.378613, 30.245779>,  <34.646145, 35.778591, 30.743174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869499, 35.378613, 30.245779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724648, 35.113411, 30.507860>,  <34.637737, 34.954292, 30.665110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724648, 35.113411, 30.507860>,  <34.869499, 35.378613, 30.245779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724648, 35.113411, 30.507860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351232, -0.554046, -0.754764,
		0.863421, -0.503453, -0.032229,
		-0.362132, -0.662999, 0.655204,
		34.616009, 34.914513, 30.704422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172989, 34.787579, 30.108929>,  <34.869499, 35.378613, 30.245779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172989, 34.787579, 30.108929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841675, 34.671551, 30.300684>,  <34.642887, 34.601933, 30.415737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841675, 34.671551, 30.300684>,  <35.172989, 34.787579, 30.108929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841675, 34.671551, 30.300684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198079, -0.648738, -0.734781,
		0.524133, -0.703561, 0.479881,
		-0.828281, -0.290068, 0.479386,
		34.593189, 34.584530, 30.444500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087337, 33.998306, 30.015305>,  <35.172989, 34.787579, 30.108929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087337, 33.998306, 30.015305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723095, 34.131538, 30.113173>,  <34.504551, 34.211475, 30.171894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723095, 34.131538, 30.113173>,  <35.087337, 33.998306, 30.015305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723095, 34.131538, 30.113173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407071, -0.620597, -0.670189,
		-0.071382, -0.709874, 0.700703,
		-0.910603, 0.333075, 0.244670,
		34.449913, 34.231461, 30.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598972, 33.318481, 30.031240>,  <35.087337, 33.998306, 30.015305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598972, 33.318481, 30.031240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392620, 33.656471, 29.974823>,  <34.268810, 33.859264, 29.940973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.392620, 33.656471, 29.974823>,  <34.598972, 33.318481, 30.031240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392620, 33.656471, 29.974823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414394, -0.390238, -0.822187,
		-0.749765, -0.365700, 0.551466,
		-0.515877, 0.844972, -0.141043,
		34.237858, 33.909962, 29.932510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857578, 33.146435, 29.998892>,  <34.598972, 33.318481, 30.031240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857578, 33.146435, 29.998892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917152, 33.495697, 29.813240>,  <33.952896, 33.705254, 29.701849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917152, 33.495697, 29.813240>,  <33.857578, 33.146435, 29.998892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917152, 33.495697, 29.813240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336186, -0.396694, -0.854174,
		-0.929944, 0.283254, 0.234459,
		0.148940, 0.873156, -0.464129,
		33.961834, 33.757645, 29.674002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274837, 33.208008, 29.664238>,  <33.857578, 33.146435, 29.998892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274837, 33.208008, 29.664238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527279, 33.457294, 29.479498>,  <33.678745, 33.606865, 29.368654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527279, 33.457294, 29.479498>,  <33.274837, 33.208008, 29.664238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527279, 33.457294, 29.479498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351099, -0.301420, -0.886496,
		-0.691691, 0.721627, 0.028583,
		0.631104, 0.623218, -0.461852,
		33.716610, 33.644260, 29.340942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958191, 33.557793, 29.137135>,  <33.274837, 33.208008, 29.664238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958191, 33.557793, 29.137135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338596, 33.568886, 29.013968>,  <33.566837, 33.575542, 28.940067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338596, 33.568886, 29.013968>,  <32.958191, 33.557793, 29.137135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338596, 33.568886, 29.013968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292803, -0.238892, -0.925849,
		-0.099235, 0.970650, -0.219069,
		0.951009, 0.027732, -0.307916,
		33.623898, 33.577206, 28.921593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399761, 33.953659, 28.919117>,  <32.958191, 33.557793, 29.137135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399761, 33.953659, 28.919117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999981, 33.941914, 28.925346>,  <31.760113, 33.934868, 28.929083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999981, 33.941914, 28.925346>,  <32.399761, 33.953659, 28.919117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999981, 33.941914, 28.925346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005303, 0.321657, 0.946842,
		-0.032810, 0.946401, -0.321324,
		-0.999448, -0.029362, 0.015572,
		31.700146, 33.933105, 28.930017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129025, 34.467777, 29.283707>,  <32.399761, 33.953659, 28.919117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129025, 34.467777, 29.283707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828997, 34.207020, 29.328295>,  <31.648979, 34.050564, 29.355047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828997, 34.207020, 29.328295>,  <32.129025, 34.467777, 29.283707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828997, 34.207020, 29.328295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127918, 0.308365, 0.942628,
		-0.648870, 0.692778, -0.314685,
		-0.750070, -0.651897, 0.111470,
		31.603975, 34.011452, 29.361736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508303, 34.784916, 29.601213>,  <32.129025, 34.467777, 29.283707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508303, 34.784916, 29.601213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510607, 34.390827, 29.669693>,  <31.511990, 34.154373, 29.710781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510607, 34.390827, 29.669693>,  <31.508303, 34.784916, 29.601213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510607, 34.390827, 29.669693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118407, 0.169326, 0.978421,
		-0.992948, -0.025907, -0.115682,
		0.005760, -0.985220, 0.171200,
		31.512335, 34.095261, 29.721052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978729, 34.822948, 29.961004>,  <31.508303, 34.784916, 29.601213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978729, 34.822948, 29.961004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173899, 34.481560, 30.034241>,  <31.291000, 34.276726, 30.078182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173899, 34.481560, 30.034241>,  <30.978729, 34.822948, 29.961004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173899, 34.481560, 30.034241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009381, 0.214870, 0.976597,
		-0.872836, -0.474787, 0.112846,
		0.487923, -0.853468, 0.183093,
		31.320276, 34.225521, 30.089169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613525, 34.564583, 30.475809>,  <30.978729, 34.822948, 29.961004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613525, 34.564583, 30.475809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971428, 34.385986, 30.478949>,  <31.186169, 34.278828, 30.480831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971428, 34.385986, 30.478949>,  <30.613525, 34.564583, 30.475809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971428, 34.385986, 30.478949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041102, 0.099841, 0.994154,
		-0.444664, -0.889201, 0.107685,
		0.894754, -0.446491, 0.007847,
		31.239855, 34.252041, 30.481302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541294, 34.000381, 30.972601>,  <30.613525, 34.564583, 30.475809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541294, 34.000381, 30.972601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927305, 34.103939, 30.956125>,  <31.158913, 34.166073, 30.946239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927305, 34.103939, 30.956125>,  <30.541294, 34.000381, 30.972601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927305, 34.103939, 30.956125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028716, 0.260573, 0.965027,
		0.260573, -0.930094, 0.258894,
		-0.965027, -0.258894, 0.041190,
		31.216814, 34.181606, 30.943768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836420, 33.895252, 31.660591>,  <30.541294, 34.000381, 30.972601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836420, 33.895252, 31.660591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140083, 34.093563, 31.491888>,  <31.322281, 34.212551, 31.390667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.140083, 34.093563, 31.491888>,  <30.836420, 33.895252, 31.660591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140083, 34.093563, 31.491888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283403, 0.331553, 0.899864,
		0.585971, -0.802666, 0.111195,
		0.759158, 0.495781, -0.421759,
		31.367830, 34.242298, 31.365360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432976, 33.651455, 32.026443>,  <30.836420, 33.895252, 31.660591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432976, 33.651455, 32.026443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500610, 34.007751, 31.857691>,  <31.541191, 34.221531, 31.756439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500610, 34.007751, 31.857691>,  <31.432976, 33.651455, 32.026443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500610, 34.007751, 31.857691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365556, 0.340833, 0.866142,
		0.915302, -0.300673, -0.267987,
		0.169087, 0.890746, -0.421878,
		31.551336, 34.274975, 31.731127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101669, 33.927498, 32.180286>,  <31.432976, 33.651455, 32.026443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101669, 33.927498, 32.180286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.885878, 34.253727, 32.096565>,  <31.756403, 34.449463, 32.046333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.885878, 34.253727, 32.096565>,  <32.101669, 33.927498, 32.180286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885878, 34.253727, 32.096565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375964, 0.455749, 0.806810,
		0.753402, 0.356564, -0.552492,
		-0.539478, 0.815570, -0.209307,
		31.724035, 34.498398, 32.033772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485973, 34.434788, 32.550144>,  <32.101669, 33.927498, 32.180286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485973, 34.434788, 32.550144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161743, 34.637222, 32.432262>,  <31.967205, 34.758682, 32.361534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161743, 34.637222, 32.432262>,  <32.485973, 34.434788, 32.550144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161743, 34.637222, 32.432262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079122, 0.593246, 0.801124,
		0.580269, 0.626051, -0.520911,
		-0.810572, 0.506083, -0.294708,
		31.918571, 34.789047, 32.343849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673820, 35.122314, 32.612129>,  <32.485973, 34.434788, 32.550144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673820, 35.122314, 32.612129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273975, 35.127625, 32.621971>,  <32.034069, 35.130810, 32.627876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273975, 35.127625, 32.621971>,  <32.673820, 35.122314, 32.612129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273975, 35.127625, 32.621971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026871, 0.699032, 0.714585,
		-0.007717, 0.714967, -0.699116,
		-0.999609, 0.013271, 0.024606,
		31.974092, 35.131607, 32.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440166, 35.877659, 32.577023>,  <32.673820, 35.122314, 32.612129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440166, 35.877659, 32.577023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137699, 35.669876, 32.736206>,  <31.956219, 35.545208, 32.831718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137699, 35.669876, 32.736206>,  <32.440166, 35.877659, 32.577023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137699, 35.669876, 32.736206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064996, 0.545528, 0.835568,
		-0.651138, 0.657698, -0.378750,
		-0.756171, -0.519453, 0.397962,
		31.910849, 35.514042, 32.855595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002621, 36.358395, 32.858833>,  <32.440166, 35.877659, 32.577023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002621, 36.358395, 32.858833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900032, 36.021065, 33.047737>,  <31.838480, 35.818668, 33.161079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900032, 36.021065, 33.047737>,  <32.002621, 36.358395, 32.858833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900032, 36.021065, 33.047737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082134, 0.505852, 0.858701,
		-0.963056, 0.181443, -0.199001,
		-0.256471, -0.843322, 0.472262,
		31.823092, 35.768066, 33.189415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424952, 36.472168, 33.220474>,  <32.002621, 36.358395, 32.858833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424952, 36.472168, 33.220474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607632, 36.166283, 33.402306>,  <31.717239, 35.982750, 33.511402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607632, 36.166283, 33.402306>,  <31.424952, 36.472168, 33.220474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607632, 36.166283, 33.402306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082387, 0.545135, 0.834291,
		-0.885799, -0.343568, 0.311964,
		0.456698, -0.764715, 0.454574,
		31.744640, 35.936867, 33.538677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331827, 37.152466, 33.167126>,  <31.424952, 36.472168, 33.220474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331827, 37.152466, 33.167126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391129, 37.548042, 33.165428>,  <31.426710, 37.785389, 33.164410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391129, 37.548042, 33.165428>,  <31.331827, 37.152466, 33.167126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391129, 37.548042, 33.165428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114891, 0.012963, -0.993294,
		-0.982253, 0.147747, 0.115542,
		0.148254, 0.988940, -0.004242,
		31.435604, 37.844723, 33.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873489, 37.470207, 32.708881>,  <31.331827, 37.152466, 33.167126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873489, 37.470207, 32.708881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184208, 37.717175, 32.659283>,  <31.370640, 37.865356, 32.629524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184208, 37.717175, 32.659283>,  <30.873489, 37.470207, 32.708881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184208, 37.717175, 32.659283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148321, -0.011991, -0.988867,
		-0.612034, 0.786542, 0.082262,
		0.776798, 0.617421, -0.124000,
		31.417248, 37.902401, 32.622082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702181, 38.043110, 32.286591>,  <30.873489, 37.470207, 32.708881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702181, 38.043110, 32.286591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097450, 37.994953, 32.248608>,  <31.334612, 37.966057, 32.225819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.097450, 37.994953, 32.248608>,  <30.702181, 38.043110, 32.286591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097450, 37.994953, 32.248608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076497, 0.149646, -0.985776,
		0.132892, 0.981382, 0.138666,
		0.988174, -0.120394, -0.094960,
		31.393902, 37.958836, 32.220119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922449, 38.546600, 31.681484>,  <30.702181, 38.043110, 32.286591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922449, 38.546600, 31.681484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211592, 38.274006, 31.727192>,  <31.385077, 38.110451, 31.754618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211592, 38.274006, 31.727192>,  <30.922449, 38.546600, 31.681484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211592, 38.274006, 31.727192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070019, -0.092282, -0.993268,
		0.687442, 0.725991, -0.018990,
		0.722856, -0.681485, 0.114272,
		31.428448, 38.069561, 31.761473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396000, 38.740162, 31.246792>,  <30.922449, 38.546600, 31.681484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396000, 38.740162, 31.246792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475935, 38.354031, 31.313974>,  <31.523895, 38.122353, 31.354284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475935, 38.354031, 31.313974>,  <31.396000, 38.740162, 31.246792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475935, 38.354031, 31.313974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190249, -0.129924, -0.973101,
		0.961182, 0.226414, 0.157689,
		0.199836, -0.965327, 0.167956,
		31.535887, 38.064434, 31.364361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043346, 38.468262, 30.913563>,  <31.396000, 38.740162, 31.246792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043346, 38.468262, 30.913563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830952, 38.133255, 30.965128>,  <31.703514, 37.932251, 30.996067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830952, 38.133255, 30.965128>,  <32.043346, 38.468262, 30.913563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830952, 38.133255, 30.965128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110146, -0.219059, -0.969475,
		0.840190, -0.500580, 0.208567,
		-0.530988, -0.837516, 0.128914,
		31.671656, 37.882000, 31.003801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299728, 38.020145, 30.387533>,  <32.043346, 38.468262, 30.913563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299728, 38.020145, 30.387533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985218, 37.796047, 30.491756>,  <31.796511, 37.661587, 30.554291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985218, 37.796047, 30.491756>,  <32.299728, 38.020145, 30.387533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985218, 37.796047, 30.491756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032011, -0.458069, -0.888340,
		0.617043, -0.690141, 0.378104,
		-0.786278, -0.560247, 0.260556,
		31.749334, 37.627972, 30.569923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486935, 37.324085, 30.172533>,  <32.299728, 38.020145, 30.387533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486935, 37.324085, 30.172533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088894, 37.359177, 30.190716>,  <31.850069, 37.380234, 30.201626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088894, 37.359177, 30.190716>,  <32.486935, 37.324085, 30.172533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088894, 37.359177, 30.190716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073871, -0.355003, -0.931942,
		-0.065623, -0.930739, 0.359747,
		-0.995107, 0.087731, 0.045458,
		31.790361, 37.385498, 30.204353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202190, 36.851009, 29.740316>,  <32.486935, 37.324085, 30.172533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202190, 36.851009, 29.740316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872641, 37.068012, 29.805933>,  <31.674910, 37.198215, 29.845303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872641, 37.068012, 29.805933>,  <32.202190, 36.851009, 29.740316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872641, 37.068012, 29.805933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227640, -0.051684, -0.972373,
		-0.519042, -0.838459, 0.166078,
		-0.823878, 0.542509, 0.164041,
		31.625477, 37.230766, 29.855145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611826, 36.437386, 29.475473>,  <32.202190, 36.851009, 29.740316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611826, 36.437386, 29.475473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494854, 36.819130, 29.499723>,  <31.424671, 37.048176, 29.514275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494854, 36.819130, 29.499723>,  <31.611826, 36.437386, 29.475473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494854, 36.819130, 29.499723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413426, -0.069003, -0.907919,
		-0.862302, -0.290565, 0.414737,
		-0.292428, 0.954364, 0.060626,
		31.407125, 37.105438, 29.517912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876657, 36.462856, 29.382330>,  <31.611826, 36.437386, 29.475473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876657, 36.462856, 29.382330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010914, 36.829304, 29.294622>,  <31.091467, 37.049171, 29.241997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010914, 36.829304, 29.294622>,  <30.876657, 36.462856, 29.382330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010914, 36.829304, 29.294622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333300, -0.102220, -0.937263,
		-0.881055, 0.387664, 0.271032,
		0.335639, 0.916116, -0.219270,
		31.111605, 37.104137, 29.228842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425713, 36.648849, 28.875818>,  <30.876657, 36.462856, 29.382330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425713, 36.648849, 28.875818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723581, 36.914524, 28.849510>,  <30.902302, 37.073929, 28.833725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723581, 36.914524, 28.849510>,  <30.425713, 36.648849, 28.875818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723581, 36.914524, 28.849510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098426, 0.011819, -0.995074,
		-0.660135, 0.747475, 0.074174,
		0.744670, 0.664184, -0.065769,
		30.946983, 37.113781, 28.829779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143961, 37.159893, 28.475679>,  <30.425713, 36.648849, 28.875818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143961, 37.159893, 28.475679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540152, 37.187973, 28.428310>,  <30.777866, 37.204819, 28.399889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540152, 37.187973, 28.428310>,  <30.143961, 37.159893, 28.475679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540152, 37.187973, 28.428310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130518, 0.205254, -0.969967,
		-0.043783, 0.976188, 0.212462,
		0.990479, 0.070198, -0.118424,
		30.837296, 37.209034, 28.392784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175230, 37.748058, 28.075613>,  <30.143961, 37.159893, 28.475679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175230, 37.748058, 28.075613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524240, 37.556080, 28.039055>,  <30.733646, 37.440895, 28.017120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.524240, 37.556080, 28.039055>,  <30.175230, 37.748058, 28.075613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524240, 37.556080, 28.039055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050921, 0.096711, -0.994009,
		0.485907, 0.871952, 0.059944,
		0.872526, -0.479944, -0.091394,
		30.785997, 37.412098, 28.011637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628469, 38.213474, 27.807178>,  <30.175230, 37.748058, 28.075613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628469, 38.213474, 27.807178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809557, 37.866314, 27.725401>,  <30.918209, 37.658016, 27.676334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809557, 37.866314, 27.725401>,  <30.628469, 38.213474, 27.807178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809557, 37.866314, 27.725401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205222, 0.324549, -0.923337,
		0.867716, 0.376055, 0.325041,
		0.452717, -0.867900, -0.204442,
		30.945372, 37.605946, 27.664068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231697, 38.340878, 27.325737>,  <30.628469, 38.213474, 27.807178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231697, 38.340878, 27.325737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151096, 37.954269, 27.262199>,  <31.102736, 37.722305, 27.224077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151096, 37.954269, 27.262199>,  <31.231697, 38.340878, 27.325737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151096, 37.954269, 27.262199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015868, 0.165372, -0.986104,
		0.979360, -0.196179, -0.048659,
		-0.201500, -0.966523, -0.158846,
		31.090647, 37.664314, 27.214546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845284, 38.041878, 26.908352>,  <31.231697, 38.340878, 27.325737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845284, 38.041878, 26.908352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543205, 37.782169, 26.872288>,  <31.361959, 37.626343, 26.850649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543205, 37.782169, 26.872288>,  <31.845284, 38.041878, 26.908352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543205, 37.782169, 26.872288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208927, -0.108047, -0.971944,
		0.621314, -0.752843, 0.217247,
		-0.755194, -0.649271, -0.090159,
		31.316647, 37.587387, 26.845240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116684, 37.526875, 26.450294>,  <31.845284, 38.041878, 26.908352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116684, 37.526875, 26.450294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721842, 37.465500, 26.432083>,  <31.484936, 37.428677, 26.421156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721842, 37.465500, 26.432083>,  <32.116684, 37.526875, 26.450294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721842, 37.465500, 26.432083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054002, -0.051509, -0.997211,
		0.150664, -0.986815, 0.059131,
		-0.987109, -0.153437, -0.045529,
		31.425709, 37.419468, 26.418425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018620, 36.919327, 26.039862>,  <32.116684, 37.526875, 26.450294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018620, 36.919327, 26.039862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659452, 37.094978, 26.027740>,  <31.443953, 37.200367, 26.020468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659452, 37.094978, 26.027740>,  <32.018620, 36.919327, 26.039862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659452, 37.094978, 26.027740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016919, -0.103226, -0.994514,
		-0.439844, -0.892476, 0.100117,
		-0.897915, 0.439125, -0.030304,
		31.390078, 37.226715, 26.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483137, 36.440842, 25.791130>,  <32.018620, 36.919327, 26.039862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483137, 36.440842, 25.791130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415110, 36.829082, 25.723005>,  <31.374292, 37.062027, 25.682131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415110, 36.829082, 25.723005>,  <31.483137, 36.440842, 25.791130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415110, 36.829082, 25.723005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197251, -0.135803, -0.970901,
		-0.965489, -0.198714, -0.168357,
		-0.170068, 0.970603, -0.170313,
		31.364090, 37.120262, 25.671911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137789, 36.520653, 25.183449>,  <31.483137, 36.440842, 25.791130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137789, 36.520653, 25.183449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166836, 36.916370, 25.234070>,  <31.184265, 37.153801, 25.264442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166836, 36.916370, 25.234070>,  <31.137789, 36.520653, 25.183449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166836, 36.916370, 25.234070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119964, 0.117302, -0.985824,
		-0.990119, 0.086771, -0.110162,
		0.072619, 0.989298, 0.126552,
		31.188622, 37.213161, 25.272036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616903, 36.834465, 24.785883>,  <31.137789, 36.520653, 25.183449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616903, 36.834465, 24.785883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922325, 37.080742, 24.863768>,  <31.105577, 37.228508, 24.910500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922325, 37.080742, 24.863768>,  <30.616903, 36.834465, 24.785883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922325, 37.080742, 24.863768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233310, 0.018127, -0.972233,
		-0.602122, 0.787782, -0.129805,
		0.763555, 0.615688, 0.194713,
		31.151392, 37.265450, 24.922182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629738, 37.277843, 24.388771>,  <30.616903, 36.834465, 24.785883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629738, 37.277843, 24.388771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007685, 37.347862, 24.499468>,  <31.234453, 37.389874, 24.565886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007685, 37.347862, 24.499468>,  <30.629738, 37.277843, 24.388771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007685, 37.347862, 24.499468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239389, 0.207400, -0.948514,
		-0.223430, 0.962468, 0.154061,
		0.944866, 0.175046, 0.276744,
		31.291145, 37.400375, 24.582491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718094, 37.738720, 23.947783>,  <30.629738, 37.277843, 24.388771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718094, 37.738720, 23.947783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.084663, 37.664234, 24.089483>,  <31.304605, 37.619545, 24.174503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.084663, 37.664234, 24.089483>,  <30.718094, 37.738720, 23.947783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084663, 37.664234, 24.089483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399562, 0.375191, -0.836410,
		0.022837, 0.908051, 0.418237,
		0.916422, -0.186213, 0.354254,
		31.359591, 37.608372, 24.195759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146721, 38.231541, 23.704615>,  <30.718094, 37.738720, 23.947783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146721, 38.231541, 23.704615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397329, 37.929539, 23.782007>,  <31.547695, 37.748337, 23.828444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397329, 37.929539, 23.782007>,  <31.146721, 38.231541, 23.704615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397329, 37.929539, 23.782007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251938, -0.038738, -0.966968,
		0.737563, 0.654571, 0.165945,
		0.626521, -0.755008, 0.193483,
		31.585285, 37.703037, 23.840052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821276, 38.385170, 23.573326>,  <31.146721, 38.231541, 23.704615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821276, 38.385170, 23.573326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830187, 37.986771, 23.538712>,  <31.835533, 37.747730, 23.517942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830187, 37.986771, 23.538712>,  <31.821276, 38.385170, 23.573326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830187, 37.986771, 23.538712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299600, 0.089233, -0.949883,
		0.953805, -0.004764, 0.300389,
		0.022280, -0.995999, -0.086538,
		31.836870, 37.687969, 23.512751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524464, 38.311852, 23.327454>,  <31.821276, 38.385170, 23.573326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524464, 38.311852, 23.327454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306969, 37.984306, 23.253904>,  <32.176472, 37.787777, 23.209776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306969, 37.984306, 23.253904>,  <32.524464, 38.311852, 23.327454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306969, 37.984306, 23.253904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261488, 0.042887, -0.964253,
		0.797481, -0.572379, 0.190805,
		-0.543735, -0.818867, -0.183872,
		32.143848, 37.738647, 23.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913445, 37.872002, 22.934729>,  <32.524464, 38.311852, 23.327454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913445, 37.872002, 22.934729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542542, 37.734116, 22.876270>,  <32.320000, 37.651382, 22.841194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542542, 37.734116, 22.876270>,  <32.913445, 37.872002, 22.934729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542542, 37.734116, 22.876270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146853, 0.024221, -0.988862,
		0.344418, -0.938394, 0.028164,
		-0.927259, -0.344717, -0.146148,
		32.264362, 37.630699, 22.832426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540977, 37.454178, 22.597038>,  <32.913445, 37.872002, 22.934729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540977, 37.454178, 22.597038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848648, 37.677898, 22.473394>,  <34.033253, 37.812130, 22.399208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848648, 37.677898, 22.473394>,  <33.540977, 37.454178, 22.597038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848648, 37.677898, 22.473394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150180, 0.311957, 0.938152,
		0.621137, -0.768028, 0.155954,
		0.769178, 0.559300, -0.309111,
		34.079403, 37.845688, 22.380661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180508, 37.270672, 22.891436>,  <33.540977, 37.454178, 22.597038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180508, 37.270672, 22.891436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176693, 37.660034, 22.799871>,  <34.174404, 37.893650, 22.744934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176693, 37.660034, 22.799871>,  <34.180508, 37.270672, 22.891436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176693, 37.660034, 22.799871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258295, 0.223548, 0.939846,
		0.966019, -0.050164, -0.253556,
		-0.009536, 0.973401, -0.228908,
		34.173832, 37.952053, 22.731199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882595, 37.502747, 23.301611>,  <34.180508, 37.270672, 22.891436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882595, 37.502747, 23.301611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664639, 37.823650, 23.204063>,  <34.533863, 38.016193, 23.145535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664639, 37.823650, 23.204063>,  <34.882595, 37.502747, 23.301611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664639, 37.823650, 23.204063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046697, 0.319420, 0.946462,
		0.837204, 0.504333, -0.211513,
		-0.544893, 0.802259, -0.243868,
		34.501171, 38.064327, 23.130903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203491, 37.939224, 23.589382>,  <34.882595, 37.502747, 23.301611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203491, 37.939224, 23.589382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860401, 38.138664, 23.539261>,  <34.654545, 38.258327, 23.509188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860401, 38.138664, 23.539261>,  <35.203491, 37.939224, 23.589382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860401, 38.138664, 23.539261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034664, 0.299270, 0.953539,
		0.512931, 0.813535, -0.273976,
		-0.857730, 0.498597, -0.125305,
		34.603081, 38.288242, 23.501669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253868, 38.652802, 23.771807>,  <35.203491, 37.939224, 23.589382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253868, 38.652802, 23.771807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856953, 38.609501, 23.747684>,  <34.618801, 38.583523, 23.733212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856953, 38.609501, 23.747684>,  <35.253868, 38.652802, 23.771807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856953, 38.609501, 23.747684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093459, 0.334252, 0.937838,
		-0.081363, 0.936246, -0.341793,
		-0.992293, -0.108249, -0.060305,
		34.559265, 38.577026, 23.729593>
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
