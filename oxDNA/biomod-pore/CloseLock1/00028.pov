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
	<24.475069, 35.355995, 35.149368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348122, 34.983112, 35.079773>,  <24.271954, 34.759384, 35.038017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348122, 34.983112, 35.079773>,  <24.475069, 35.355995, 35.149368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348122, 34.983112, 35.079773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915786, -0.348915, 0.198982,
		-0.246198, -0.096183, 0.964435,
		-0.317367, -0.932205, -0.173986,
		24.252911, 34.703449, 35.027576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728558, 34.852558, 35.706062>,  <24.475069, 35.355995, 35.149368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728558, 34.852558, 35.706062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675350, 34.666836, 35.355812>,  <24.643425, 34.555401, 35.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675350, 34.666836, 35.355812>,  <24.728558, 34.852558, 35.706062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675350, 34.666836, 35.355812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931590, -0.360133, 0.049442,
		-0.338299, -0.809150, 0.480447,
		-0.133019, -0.464306, -0.875629,
		24.635445, 34.527546, 35.093124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986650, 34.105858, 35.702896>,  <24.728558, 34.852558, 35.706062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986650, 34.105858, 35.702896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009655, 34.283024, 35.345009>,  <25.023458, 34.389324, 35.130276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009655, 34.283024, 35.345009>,  <24.986650, 34.105858, 35.702896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009655, 34.283024, 35.345009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945803, -0.311079, -0.093197,
		-0.319607, -0.840866, -0.436801,
		0.057514, 0.442915, -0.894717,
		25.026909, 34.415897, 35.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365767, 33.664780, 35.259026>,  <24.986650, 34.105858, 35.702896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365767, 33.664780, 35.259026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365189, 34.003567, 35.046368>,  <25.364841, 34.206841, 34.918774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365189, 34.003567, 35.046368>,  <25.365767, 33.664780, 35.259026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365189, 34.003567, 35.046368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998854, 0.026663, 0.039762,
		0.047852, -0.530975, -0.846035,
		-0.001446, 0.846968, -0.531643,
		25.364756, 34.257656, 34.886875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828978, 33.689308, 34.583580>,  <25.365767, 33.664780, 35.259026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828978, 33.689308, 34.583580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771967, 34.058823, 34.725742>,  <25.737761, 34.280529, 34.811039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771967, 34.058823, 34.725742>,  <25.828978, 33.689308, 34.583580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771967, 34.058823, 34.725742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986446, 0.162067, -0.025655,
		-0.081299, 0.346929, -0.934361,
		-0.142528, 0.923783, 0.355403,
		25.729208, 34.335957, 34.832363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617592, 33.761017, 34.691311>,  <25.828978, 33.689308, 34.583580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617592, 33.761017, 34.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904509, 33.919456, 34.920605>,  <27.076658, 34.014519, 35.058182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904509, 33.919456, 34.920605>,  <26.617592, 33.761017, 34.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904509, 33.919456, 34.920605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576247, 0.799725, 0.168460,
		-0.391704, -0.451160, 0.801886,
		0.717291, 0.396098, 0.573236,
		27.119696, 34.038284, 35.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322483, 34.068890, 35.310802>,  <26.617592, 33.761017, 34.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322483, 34.068890, 35.310802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644827, 34.280556, 35.204544>,  <26.838234, 34.407555, 35.140789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644827, 34.280556, 35.204544>,  <26.322483, 34.068890, 35.310802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644827, 34.280556, 35.204544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509461, 0.848303, 0.144332,
		0.301724, 0.019025, 0.953206,
		0.805861, 0.529169, -0.265646,
		26.886585, 34.439308, 35.124851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289759, 34.646374, 35.751640>,  <26.322483, 34.068890, 35.310802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289759, 34.646374, 35.751640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572470, 34.763428, 35.494011>,  <26.742096, 34.833660, 35.339432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572470, 34.763428, 35.494011>,  <26.289759, 34.646374, 35.751640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572470, 34.763428, 35.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280258, 0.951765, 0.124894,
		0.649555, 0.092234, 0.754700,
		0.706778, 0.292636, -0.644073,
		26.784502, 34.851219, 35.300789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645065, 35.210964, 35.972172>,  <26.289759, 34.646374, 35.751640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645065, 35.210964, 35.972172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734678, 35.247265, 35.584034>,  <26.788446, 35.269047, 35.351151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734678, 35.247265, 35.584034>,  <26.645065, 35.210964, 35.972172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734678, 35.247265, 35.584034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233602, 0.971630, 0.036937,
		0.946171, 0.218401, 0.238874,
		0.224030, 0.090750, -0.970348,
		26.801888, 35.274490, 35.292931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080730, 35.946465, 35.932888>,  <26.645065, 35.210964, 35.972172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080730, 35.946465, 35.932888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903847, 35.854458, 35.586121>,  <26.797716, 35.799255, 35.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903847, 35.854458, 35.586121>,  <27.080730, 35.946465, 35.932888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903847, 35.854458, 35.586121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374630, 0.925572, -0.054483,
		0.814927, 0.300680, -0.495466,
		-0.442208, -0.230016, -0.866917,
		26.771185, 35.785454, 35.326046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298679, 36.458248, 35.593182>,  <27.080730, 35.946465, 35.932888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298679, 36.458248, 35.593182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990396, 36.310566, 35.385452>,  <26.805428, 36.221958, 35.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990396, 36.310566, 35.385452>,  <27.298679, 36.458248, 35.593182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990396, 36.310566, 35.385452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379996, 0.920550, -0.090506,
		0.511480, 0.127588, -0.849770,
		-0.770708, -0.369201, -0.519326,
		26.759184, 36.199806, 35.229656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150990, 36.926567, 35.062630>,  <27.298679, 36.458248, 35.593182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150990, 36.926567, 35.062630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815681, 36.710670, 35.093567>,  <26.614496, 36.581135, 35.112129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815681, 36.710670, 35.093567>,  <27.150990, 36.926567, 35.062630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815681, 36.710670, 35.093567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545077, 0.833123, -0.093792,
		-0.013815, -0.120783, -0.992583,
		-0.838272, -0.539739, 0.077346,
		26.564199, 36.548748, 35.116772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772602, 37.263714, 34.600117>,  <27.150990, 36.926567, 35.062630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772602, 37.263714, 34.600117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511150, 37.062588, 34.826374>,  <26.354280, 36.941914, 34.962128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511150, 37.062588, 34.826374>,  <26.772602, 37.263714, 34.600117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511150, 37.062588, 34.826374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630691, 0.775009, -0.039868,
		-0.418329, -0.382803, -0.823688,
		-0.653628, -0.502815, 0.565640,
		26.315062, 36.911743, 34.996067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072523, 37.368832, 34.271210>,  <26.772602, 37.263714, 34.600117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072523, 37.368832, 34.271210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010391, 37.284981, 34.657356>,  <25.973112, 37.234669, 34.889042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010391, 37.284981, 34.657356>,  <26.072523, 37.368832, 34.271210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010391, 37.284981, 34.657356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520428, 0.847982, 0.100401,
		-0.839659, -0.486807, -0.240814,
		-0.155330, -0.209629, 0.965365,
		25.963793, 37.222092, 34.946964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334839, 37.456322, 34.398243>,  <26.072523, 37.368832, 34.271210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334839, 37.456322, 34.398243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487795, 37.475800, 34.767330>,  <25.579569, 37.487488, 34.988781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487795, 37.475800, 34.767330>,  <25.334839, 37.456322, 34.398243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487795, 37.475800, 34.767330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175137, 0.984328, 0.020633,
		-0.907252, -0.169492, 0.384924,
		0.382389, 0.048695, 0.922718,
		25.602512, 37.490410, 35.044144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863760, 37.910587, 34.795376>,  <25.334839, 37.456322, 34.398243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863760, 37.910587, 34.795376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203409, 37.907063, 35.006622>,  <25.407200, 37.904945, 35.133369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203409, 37.907063, 35.006622>,  <24.863760, 37.910587, 34.795376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203409, 37.907063, 35.006622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128653, 0.966296, 0.222980,
		-0.512285, -0.257282, 0.819372,
		0.849124, -0.008815, 0.528120,
		25.458147, 37.904419, 35.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672215, 38.364208, 35.401611>,  <24.863760, 37.910587, 34.795376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672215, 38.364208, 35.401611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070019, 38.359535, 35.360023>,  <25.308702, 38.356731, 35.335072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070019, 38.359535, 35.360023>,  <24.672215, 38.364208, 35.401611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070019, 38.359535, 35.360023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029323, 0.985033, 0.169851,
		0.100426, -0.171967, 0.979970,
		0.994512, -0.011678, -0.103966,
		25.368372, 38.356033, 35.328835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877733, 38.744740, 35.974827>,  <24.672215, 38.364208, 35.401611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877733, 38.744740, 35.974827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232504, 38.748699, 35.790108>,  <25.445366, 38.751076, 35.679276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232504, 38.748699, 35.790108>,  <24.877733, 38.744740, 35.974827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232504, 38.748699, 35.790108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204204, 0.888359, 0.411241,
		0.414317, -0.459043, 0.785888,
		0.886928, 0.009903, -0.461801,
		25.498583, 38.751671, 35.651566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472490, 38.871845, 36.466587>,  <24.877733, 38.744740, 35.974827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472490, 38.871845, 36.466587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616989, 38.994820, 36.114452>,  <25.703688, 39.068604, 35.903172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616989, 38.994820, 36.114452>,  <25.472490, 38.871845, 36.466587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616989, 38.994820, 36.114452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432296, 0.781286, 0.450236,
		0.826209, -0.543210, 0.149334,
		0.361245, 0.307433, -0.880333,
		25.725363, 39.087048, 35.850353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189665, 39.004665, 36.508018>,  <25.472490, 38.871845, 36.466587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189665, 39.004665, 36.508018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082565, 39.214470, 36.184734>,  <26.018305, 39.340351, 35.990765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082565, 39.214470, 36.184734>,  <26.189665, 39.004665, 36.508018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082565, 39.214470, 36.184734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604026, 0.744905, 0.283320,
		0.750641, -0.412319, -0.516266,
		-0.267751, 0.524509, -0.808208,
		26.002239, 39.371822, 35.942272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795151, 39.186073, 36.227146>,  <26.189665, 39.004665, 36.508018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795151, 39.186073, 36.227146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519369, 39.420876, 36.057400>,  <26.353901, 39.561756, 35.955551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519369, 39.420876, 36.057400>,  <26.795151, 39.186073, 36.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519369, 39.420876, 36.057400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525952, 0.808535, 0.263906,
		0.498025, -0.041244, -0.866181,
		-0.689453, 0.587001, -0.424363,
		26.312532, 39.596977, 35.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159018, 39.720585, 35.665424>,  <26.795151, 39.186073, 36.227146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159018, 39.720585, 35.665424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820627, 39.853897, 35.831917>,  <26.617594, 39.933884, 35.931812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820627, 39.853897, 35.831917>,  <27.159018, 39.720585, 35.665424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820627, 39.853897, 35.831917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477584, 0.820759, 0.313478,
		-0.237147, 0.463979, -0.853513,
		-0.845976, 0.333284, 0.416229,
		26.566835, 39.953884, 35.956787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048008, 40.348003, 35.320595>,  <27.159018, 39.720585, 35.665424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048008, 40.348003, 35.320595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790150, 40.391193, 35.623322>,  <26.635435, 40.417107, 35.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790150, 40.391193, 35.623322>,  <27.048008, 40.348003, 35.320595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790150, 40.391193, 35.623322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451959, 0.852269, 0.263383,
		-0.616574, 0.511839, -0.598212,
		-0.644647, 0.107972, 0.756817,
		26.596756, 40.423584, 35.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668032, 41.027958, 35.312260>,  <27.048008, 40.348003, 35.320595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668032, 41.027958, 35.312260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647526, 40.921062, 35.697166>,  <26.635221, 40.856926, 35.928112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647526, 40.921062, 35.697166>,  <26.668032, 41.027958, 35.312260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647526, 40.921062, 35.697166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211931, 0.938677, 0.271976,
		-0.975939, 0.217877, 0.008513,
		-0.051266, -0.267236, 0.962266,
		26.632147, 40.840893, 35.985847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573969, 41.654568, 35.647003>,  <26.668032, 41.027958, 35.312260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573969, 41.654568, 35.647003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675398, 41.434387, 35.965176>,  <26.736256, 41.302280, 36.156078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675398, 41.434387, 35.965176>,  <26.573969, 41.654568, 35.647003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675398, 41.434387, 35.965176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292122, 0.827486, 0.479512,
		-0.922153, 0.110771, 0.370626,
		0.253571, -0.550451, 0.795428,
		26.751469, 41.269253, 36.203804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203587, 41.862690, 36.357395>,  <26.573969, 41.654568, 35.647003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203587, 41.862690, 36.357395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556961, 41.683784, 36.413242>,  <26.768986, 41.576439, 36.446751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556961, 41.683784, 36.413242>,  <26.203587, 41.862690, 36.357395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556961, 41.683784, 36.413242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376154, 0.854672, 0.357832,
		-0.279371, -0.263606, 0.923290,
		0.883437, -0.447267, 0.139614,
		26.821993, 41.549606, 36.455128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381721, 42.042469, 37.092899>,  <26.203587, 41.862690, 36.357395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381721, 42.042469, 37.092899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706366, 41.987591, 36.865753>,  <26.901152, 41.954662, 36.729465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706366, 41.987591, 36.865753>,  <26.381721, 42.042469, 37.092899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706366, 41.987591, 36.865753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319320, 0.918160, 0.234555,
		0.489208, -0.371697, 0.788997,
		0.811609, -0.137197, -0.567862,
		26.949848, 41.946430, 36.695396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912457, 42.256054, 37.557064>,  <26.381721, 42.042469, 37.092899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912457, 42.256054, 37.557064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067553, 42.255325, 37.188358>,  <27.160610, 42.254887, 36.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067553, 42.255325, 37.188358>,  <26.912457, 42.256054, 37.557064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067553, 42.255325, 37.188358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381225, 0.910783, 0.158559,
		0.839241, -0.412880, 0.353842,
		0.387740, -0.001824, -0.921767,
		27.183874, 42.254780, 36.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508539, 42.608234, 37.588577>,  <26.912457, 42.256054, 37.557064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508539, 42.608234, 37.588577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425428, 42.623280, 37.197598>,  <27.375563, 42.632309, 36.963009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425428, 42.623280, 37.197598>,  <27.508539, 42.608234, 37.588577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425428, 42.623280, 37.197598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090833, 0.995685, 0.019009,
		0.973949, -0.084836, -0.210298,
		-0.207778, 0.037616, -0.977453,
		27.363094, 42.634563, 36.904362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042229, 43.034092, 37.152882>,  <27.508539, 42.608234, 37.588577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042229, 43.034092, 37.152882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668201, 43.024445, 37.011421>,  <27.443785, 43.018654, 36.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668201, 43.024445, 37.011421>,  <28.042229, 43.034092, 37.152882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668201, 43.024445, 37.011421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005462, 0.996583, -0.082414,
		0.354429, -0.078995, -0.931740,
		-0.935067, -0.024121, -0.353649,
		27.387682, 43.017208, 36.905327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951769, 43.539509, 36.627384>,  <28.042229, 43.034092, 37.152882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951769, 43.539509, 36.627384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572483, 43.505177, 36.749710>,  <27.344912, 43.484577, 36.823105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572483, 43.505177, 36.749710>,  <27.951769, 43.539509, 36.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572483, 43.505177, 36.749710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148446, 0.970929, -0.187777,
		-0.280811, -0.223450, -0.933389,
		-0.948214, -0.085827, 0.305818,
		27.288019, 43.479427, 36.841454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584457, 43.953686, 36.217594>,  <27.951769, 43.539509, 36.627384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584457, 43.953686, 36.217594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379532, 43.913311, 36.558731>,  <27.256577, 43.889088, 36.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379532, 43.913311, 36.558731>,  <27.584457, 43.953686, 36.217594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379532, 43.913311, 36.558731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150878, 0.988202, 0.026318,
		-0.845440, -0.115192, -0.521499,
		-0.512315, -0.100932, 0.852846,
		27.225838, 43.883030, 36.814587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310616, 44.005112, 36.125473>,  <27.584457, 43.953686, 36.217594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310616, 44.005112, 36.125473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691772, 44.112358, 36.068752>,  <28.920467, 44.176704, 36.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691772, 44.112358, 36.068752>,  <28.310616, 44.005112, 36.125473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691772, 44.112358, 36.068752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289859, -0.942652, 0.165495,
		-0.089298, -0.198802, -0.975963,
		0.952894, 0.268114, -0.141802,
		28.977640, 44.192791, 36.026211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558279, 43.543633, 35.600967>,  <28.310616, 44.005112, 36.125473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558279, 43.543633, 35.600967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883583, 43.678329, 35.790794>,  <29.078766, 43.759148, 35.904690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883583, 43.678329, 35.790794>,  <28.558279, 43.543633, 35.600967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883583, 43.678329, 35.790794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370145, -0.928647, 0.024627,
		0.449003, 0.155632, -0.879872,
		0.813258, 0.336738, 0.474571,
		29.127560, 43.779350, 35.933167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230547, 43.544750, 35.102009>,  <28.558279, 43.543633, 35.600967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230547, 43.544750, 35.102009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247562, 43.474735, 35.495464>,  <29.257772, 43.432728, 35.731537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247562, 43.474735, 35.495464>,  <29.230547, 43.544750, 35.102009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247562, 43.474735, 35.495464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383149, -0.906400, -0.177862,
		0.922706, 0.384448, 0.028507,
		0.042540, -0.175037, 0.983642,
		29.260324, 43.422226, 35.790558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875319, 43.197559, 35.273308>,  <29.230547, 43.544750, 35.102009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875319, 43.197559, 35.273308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597725, 43.102119, 35.545029>,  <29.431170, 43.044853, 35.708061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597725, 43.102119, 35.545029>,  <29.875319, 43.197559, 35.273308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597725, 43.102119, 35.545029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285599, -0.957316, -0.044484,
		0.660925, 0.163138, 0.732505,
		-0.693982, -0.238603, 0.679306,
		29.389530, 43.030537, 35.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173000, 42.657623, 35.643719>,  <29.875319, 43.197559, 35.273308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173000, 42.657623, 35.643719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780991, 42.638580, 35.720959>,  <29.545784, 42.627155, 35.767303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780991, 42.638580, 35.720959>,  <30.173000, 42.657623, 35.643719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780991, 42.638580, 35.720959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042321, -0.998610, -0.031404,
		0.194324, -0.022604, 0.980677,
		-0.980024, -0.047606, 0.193098,
		29.486984, 42.624298, 35.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116714, 42.265316, 36.256184>,  <30.173000, 42.657623, 35.643719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116714, 42.265316, 36.256184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747391, 42.204781, 36.114994>,  <29.525795, 42.168461, 36.030281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747391, 42.204781, 36.114994>,  <30.116714, 42.265316, 36.256184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747391, 42.204781, 36.114994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170900, -0.984978, -0.024733,
		-0.343931, -0.083160, 0.935305,
		-0.923312, -0.151337, -0.352976,
		29.470398, 42.159378, 36.009102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932352, 41.728539, 36.632561>,  <30.116714, 42.265316, 36.256184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932352, 41.728539, 36.632561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699228, 41.737976, 36.307655>,  <29.559353, 41.743637, 36.112713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699228, 41.737976, 36.307655>,  <29.932352, 41.728539, 36.632561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699228, 41.737976, 36.307655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110073, -0.988074, -0.107678,
		-0.805119, -0.152164, 0.573263,
		-0.582811, 0.023593, -0.812265,
		29.524385, 41.745052, 36.063976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598118, 41.172073, 36.756336>,  <29.932352, 41.728539, 36.632561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598118, 41.172073, 36.756336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502779, 41.240944, 36.374020>,  <29.445576, 41.282269, 36.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502779, 41.240944, 36.374020>,  <29.598118, 41.172073, 36.756336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502779, 41.240944, 36.374020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057397, -0.984936, -0.163117,
		-0.969482, 0.015981, 0.244640,
		-0.238348, 0.172180, -0.955795,
		29.431274, 41.292599, 36.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053694, 40.748482, 36.593758>,  <29.598118, 41.172073, 36.756336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053694, 40.748482, 36.593758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195509, 40.836140, 36.230160>,  <29.280598, 40.888733, 36.012001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195509, 40.836140, 36.230160>,  <29.053694, 40.748482, 36.593758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195509, 40.836140, 36.230160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012789, -0.970922, -0.239056,
		-0.934954, 0.096380, -0.341427,
		0.354539, 0.219140, -0.908999,
		29.301870, 40.901882, 35.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648655, 40.384941, 36.079517>,  <29.053694, 40.748482, 36.593758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648655, 40.384941, 36.079517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000366, 40.466743, 35.907448>,  <29.211393, 40.515827, 35.804207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000366, 40.466743, 35.907448>,  <28.648655, 40.384941, 36.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000366, 40.466743, 35.907448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037283, -0.870812, -0.490201,
		-0.474849, 0.447061, -0.758061,
		0.879278, 0.204508, -0.430171,
		29.264149, 40.528095, 35.778397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511129, 40.084011, 35.429985>,  <28.648655, 40.384941, 36.079517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511129, 40.084011, 35.429985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906330, 40.132008, 35.468884>,  <29.143450, 40.160805, 35.492222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906330, 40.132008, 35.468884>,  <28.511129, 40.084011, 35.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906330, 40.132008, 35.468884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145834, -0.932092, -0.331568,
		0.050861, 0.341771, -0.938406,
		0.988001, 0.119988, 0.097249,
		29.202730, 40.168003, 35.498058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853178, 39.783524, 34.859894>,  <28.511129, 40.084011, 35.429985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853178, 39.783524, 34.859894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126657, 39.799858, 35.151340>,  <29.290745, 39.809658, 35.326210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126657, 39.799858, 35.151340>,  <28.853178, 39.783524, 34.859894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126657, 39.799858, 35.151340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225940, -0.961221, -0.158133,
		0.693905, 0.272740, -0.666415,
		0.683701, 0.040840, 0.728619,
		29.331768, 39.812111, 35.369926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553785, 39.500957, 34.607185>,  <28.853178, 39.783524, 34.859894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553785, 39.500957, 34.607185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568367, 39.481052, 35.006424>,  <29.577116, 39.469109, 35.245968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568367, 39.481052, 35.006424>,  <29.553785, 39.500957, 34.607185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568367, 39.481052, 35.006424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257776, -0.964492, -0.057505,
		0.965517, 0.259381, -0.022330,
		0.036453, -0.049766, 0.998095,
		29.579304, 39.466122, 35.305851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165012, 39.337723, 34.755478>,  <29.553785, 39.500957, 34.607185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165012, 39.337723, 34.755478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939043, 39.227322, 35.066525>,  <29.803461, 39.161083, 35.253151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939043, 39.227322, 35.066525>,  <30.165012, 39.337723, 34.755478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939043, 39.227322, 35.066525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157200, -0.961139, -0.226935,
		0.810030, -0.005960, 0.586358,
		-0.564924, -0.275999, 0.777615,
		29.769566, 39.144524, 35.299809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524275, 38.742878, 34.939114>,  <30.165012, 39.337723, 34.755478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524275, 38.742878, 34.939114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179117, 38.728207, 35.140736>,  <29.972023, 38.719402, 35.261707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179117, 38.728207, 35.140736>,  <30.524275, 38.742878, 34.939114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179117, 38.728207, 35.140736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008725, -0.996133, -0.087418,
		0.505311, -0.079830, 0.859237,
		-0.862893, -0.036677, 0.504054,
		29.920250, 38.717205, 35.291950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549500, 38.215069, 35.292721>,  <30.524275, 38.742878, 34.939114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549500, 38.215069, 35.292721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151989, 38.259270, 35.287170>,  <29.913483, 38.285789, 35.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151989, 38.259270, 35.287170>,  <30.549500, 38.215069, 35.292721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151989, 38.259270, 35.287170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109710, -0.992760, -0.048908,
		-0.019184, -0.047081, 0.998707,
		-0.993778, 0.110506, -0.013880,
		29.853855, 38.292423, 35.283005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305368, 37.683064, 35.659790>,  <30.549500, 38.215069, 35.292721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305368, 37.683064, 35.659790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984472, 37.811451, 35.458439>,  <29.791935, 37.888485, 35.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984472, 37.811451, 35.458439>,  <30.305368, 37.683064, 35.659790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984472, 37.811451, 35.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407570, -0.910568, 0.068944,
		-0.436232, 0.260472, 0.861311,
		-0.802240, 0.320969, -0.503379,
		29.743801, 37.907742, 35.307426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667946, 37.347225, 36.010433>,  <30.305368, 37.683064, 35.659790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667946, 37.347225, 36.010433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551281, 37.447971, 35.641327>,  <29.481281, 37.508419, 35.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551281, 37.447971, 35.641327>,  <29.667946, 37.347225, 36.010433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551281, 37.447971, 35.641327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435261, -0.893991, -0.106433,
		-0.851751, 0.370602, 0.370370,
		-0.291663, 0.251862, -0.922767,
		29.463781, 37.523529, 35.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112417, 36.981041, 35.944736>,  <29.667946, 37.347225, 36.010433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112417, 36.981041, 35.944736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164459, 37.094643, 35.564754>,  <29.195684, 37.162804, 35.336765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164459, 37.094643, 35.564754>,  <29.112417, 36.981041, 35.944736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164459, 37.094643, 35.564754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322911, -0.893728, -0.311415,
		-0.937444, 0.347267, -0.024571,
		0.130104, 0.284000, -0.949956,
		29.203491, 37.179844, 35.279766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525358, 36.683910, 35.657413>,  <29.112417, 36.981041, 35.944736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525358, 36.683910, 35.657413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801716, 36.741451, 35.374016>,  <28.967531, 36.775974, 35.203976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801716, 36.741451, 35.374016>,  <28.525358, 36.683910, 35.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801716, 36.741451, 35.374016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114413, -0.945898, -0.303622,
		-0.713844, 0.290833, -0.637058,
		0.690895, 0.143851, -0.708499,
		29.008984, 36.784607, 35.161465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211456, 36.419891, 35.040459>,  <28.525358, 36.683910, 35.657413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211456, 36.419891, 35.040459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601196, 36.435184, 34.951748>,  <28.835039, 36.444363, 34.898521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601196, 36.435184, 34.951748>,  <28.211456, 36.419891, 35.040459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601196, 36.435184, 34.951748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014838, -0.972402, -0.232840,
		-0.224557, 0.230158, -0.946891,
		0.974348, 0.038236, -0.221775,
		28.893501, 36.446655, 34.885216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319139, 36.192158, 34.352707>,  <28.211456, 36.419891, 35.040459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319139, 36.192158, 34.352707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675339, 36.158676, 34.531593>,  <28.889059, 36.138588, 34.638927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675339, 36.158676, 34.531593>,  <28.319139, 36.192158, 34.352707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675339, 36.158676, 34.531593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089047, -0.931864, -0.351711,
		0.446187, 0.353022, -0.822370,
		0.890499, -0.083700, 0.447221,
		28.942488, 36.133568, 34.665760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626225, 35.681416, 33.945930>,  <28.319139, 36.192158, 34.352707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626225, 35.681416, 33.945930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873201, 35.687771, 34.260513>,  <29.021387, 35.691582, 34.449265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873201, 35.687771, 34.260513>,  <28.626225, 35.681416, 33.945930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873201, 35.687771, 34.260513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360945, -0.894050, -0.265316,
		0.698917, 0.447685, -0.557758,
		0.617442, 0.015886, 0.786456,
		29.058434, 35.692535, 34.496449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360069, 35.672501, 33.631519>,  <28.626225, 35.681416, 33.945930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360069, 35.672501, 33.631519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314234, 35.522797, 33.999607>,  <29.286732, 35.432976, 34.220459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314234, 35.522797, 33.999607>,  <29.360069, 35.672501, 33.631519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314234, 35.522797, 33.999607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315933, -0.891954, -0.323426,
		0.941836, 0.253665, 0.220450,
		-0.114590, -0.374261, 0.920216,
		29.279858, 35.410519, 34.275673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798054, 35.205429, 33.687981>,  <29.360069, 35.672501, 33.631519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798054, 35.205429, 33.687981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591679, 35.079926, 34.006821>,  <29.467854, 35.004623, 34.198124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591679, 35.079926, 34.006821>,  <29.798054, 35.205429, 33.687981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591679, 35.079926, 34.006821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358267, -0.924253, -0.131911,
		0.778109, 0.217516, 0.589264,
		-0.515937, -0.313755, 0.797099,
		29.436897, 34.985798, 34.245949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220154, 34.859592, 34.077957>,  <29.798054, 35.205429, 33.687981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220154, 34.859592, 34.077957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853132, 34.729156, 34.168961>,  <29.632919, 34.650894, 34.223560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853132, 34.729156, 34.168961>,  <30.220154, 34.859592, 34.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853132, 34.729156, 34.168961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337342, -0.941314, 0.011342,
		0.210455, 0.087154, 0.973711,
		-0.917556, -0.326087, 0.227505,
		29.577866, 34.631329, 34.237213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239182, 34.464977, 34.683926>,  <30.220154, 34.859592, 34.077957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239182, 34.464977, 34.683926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933144, 34.356049, 34.450527>,  <29.749521, 34.290691, 34.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933144, 34.356049, 34.450527>,  <30.239182, 34.464977, 34.683926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933144, 34.356049, 34.450527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246452, -0.961014, 0.125355,
		-0.594888, -0.047896, 0.802381,
		-0.765095, -0.272321, -0.583499,
		29.703615, 34.274353, 34.275478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803200, 34.008938, 35.046852>,  <30.239182, 34.464977, 34.683926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803200, 34.008938, 35.046852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749340, 33.954670, 34.654228>,  <29.717024, 33.922108, 34.418652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749340, 33.954670, 34.654228>,  <29.803200, 34.008938, 35.046852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749340, 33.954670, 34.654228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184930, -0.976619, 0.109617,
		-0.973484, -0.166760, 0.156589,
		-0.134648, -0.135669, -0.981562,
		29.708946, 33.913971, 34.359760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225941, 33.586170, 34.963722>,  <29.803200, 34.008938, 35.046852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225941, 33.586170, 34.963722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501032, 33.545361, 34.676216>,  <29.666086, 33.520874, 34.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501032, 33.545361, 34.676216>,  <29.225941, 33.586170, 34.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501032, 33.545361, 34.676216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114543, -0.962426, 0.246204,
		-0.716876, -0.251651, -0.650201,
		0.687728, -0.102022, -0.718764,
		29.707350, 33.514755, 34.460587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179890, 32.923340, 34.881153>,  <29.225941, 33.586170, 34.963722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179890, 32.923340, 34.881153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522976, 33.035980, 34.709095>,  <29.728827, 33.103565, 34.605858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522976, 33.035980, 34.709095>,  <29.179890, 32.923340, 34.881153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522976, 33.035980, 34.709095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319354, -0.947492, 0.016510,
		-0.402914, -0.151531, -0.902607,
		0.857714, 0.281599, -0.430149,
		29.780291, 33.120461, 34.580051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223110, 32.522614, 34.350395>,  <29.179890, 32.923340, 34.881153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223110, 32.522614, 34.350395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589737, 32.657448, 34.436440>,  <29.809713, 32.738350, 34.488068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589737, 32.657448, 34.436440>,  <29.223110, 32.522614, 34.350395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589737, 32.657448, 34.436440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313680, -0.939732, 0.136047,
		0.248008, -0.057220, -0.967067,
		0.916568, 0.337090, 0.215112,
		29.864708, 32.758575, 34.500973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621187, 32.215767, 33.887566>,  <29.223110, 32.522614, 34.350395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621187, 32.215767, 33.887566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777670, 32.288185, 34.248493>,  <29.871559, 32.331638, 34.465050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777670, 32.288185, 34.248493>,  <29.621187, 32.215767, 33.887566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777670, 32.288185, 34.248493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014499, -0.979124, 0.202747,
		0.920188, -0.092399, -0.380417,
		0.391209, 0.181050, 0.902317,
		29.895033, 32.342499, 34.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959677, 31.539776, 33.883160>,  <29.621187, 32.215767, 33.887566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959677, 31.539776, 33.883160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277174, 31.341722, 34.024475>,  <30.467672, 31.222891, 34.109264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277174, 31.341722, 34.024475>,  <29.959677, 31.539776, 33.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277174, 31.341722, 34.024475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204061, 0.330394, 0.921520,
		-0.573001, -0.803543, 0.161210,
		0.793743, -0.495135, 0.353288,
		30.515297, 31.193182, 34.130463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642443, 31.206686, 34.411736>,  <29.959677, 31.539776, 33.883160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642443, 31.206686, 34.411736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038313, 31.237318, 34.460194>,  <30.275835, 31.255697, 34.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038313, 31.237318, 34.460194>,  <29.642443, 31.206686, 34.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038313, 31.237318, 34.460194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139252, 0.313707, 0.939253,
		0.033924, -0.946427, 0.321132,
		0.989676, 0.076581, 0.121149,
		30.335217, 31.260292, 34.496540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786852, 31.074223, 35.170143>,  <29.642443, 31.206686, 34.411736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786852, 31.074223, 35.170143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116638, 31.259350, 35.039883>,  <30.314510, 31.370426, 34.961727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116638, 31.259350, 35.039883>,  <29.786852, 31.074223, 35.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116638, 31.259350, 35.039883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089548, 0.461507, 0.882605,
		0.558781, -0.756840, 0.339052,
		0.824466, 0.462822, -0.325655,
		30.363979, 31.398195, 34.942184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135469, 31.020716, 35.686577>,  <29.786852, 31.074223, 35.170143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135469, 31.020716, 35.686577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302652, 31.315487, 35.474068>,  <30.402962, 31.492350, 35.346561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302652, 31.315487, 35.474068>,  <30.135469, 31.020716, 35.686577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302652, 31.315487, 35.474068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264247, 0.460898, 0.847199,
		0.869187, -0.494479, -0.002097,
		0.417955, 0.736929, -0.531272,
		30.428040, 31.536566, 35.314686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855104, 30.995438, 35.823128>,  <30.135469, 31.020716, 35.686577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855104, 30.995438, 35.823128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726177, 31.356173, 35.708027>,  <30.648821, 31.572613, 35.638966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726177, 31.356173, 35.708027>,  <30.855104, 30.995438, 35.823128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726177, 31.356173, 35.708027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174245, 0.355300, 0.918368,
		0.930457, 0.245867, -0.271660,
		-0.322317, 0.901838, -0.287751,
		30.629482, 31.626724, 35.621700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061693, 31.384346, 36.367867>,  <30.855104, 30.995438, 35.823128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061693, 31.384346, 36.367867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844723, 31.662453, 36.179237>,  <30.714540, 31.829317, 36.066059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844723, 31.662453, 36.179237>,  <31.061693, 31.384346, 36.367867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844723, 31.662453, 36.179237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073245, 0.520053, 0.850988,
		0.836906, 0.496137, -0.231165,
		-0.542424, 0.695265, -0.471575,
		30.681995, 31.871033, 36.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386164, 31.952421, 36.514725>,  <31.061693, 31.384346, 36.367867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386164, 31.952421, 36.514725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002836, 32.032482, 36.433178>,  <30.772839, 32.080521, 36.384251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002836, 32.032482, 36.433178>,  <31.386164, 31.952421, 36.514725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002836, 32.032482, 36.433178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062153, 0.550424, 0.832569,
		0.278854, 0.810538, -0.515042,
		-0.958320, 0.200153, -0.203865,
		30.715340, 32.092529, 36.372017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296383, 32.552700, 36.791122>,  <31.386164, 31.952421, 36.514725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296383, 32.552700, 36.791122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904875, 32.480988, 36.751389>,  <30.669970, 32.437962, 36.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904875, 32.480988, 36.751389>,  <31.296383, 32.552700, 36.791122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904875, 32.480988, 36.751389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180929, 0.528041, 0.829721,
		-0.096299, 0.830079, -0.549268,
		-0.978770, -0.179280, -0.099336,
		30.611244, 32.427204, 36.721588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964626, 33.173393, 36.914814>,  <31.296383, 32.552700, 36.791122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964626, 33.173393, 36.914814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690434, 32.890480, 36.983932>,  <30.525917, 32.720730, 37.025402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690434, 32.890480, 36.983932>,  <30.964626, 33.173393, 36.914814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690434, 32.890480, 36.983932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020116, 0.218840, 0.975553,
		-0.727810, 0.672202, -0.135784,
		-0.685483, -0.707286, 0.172796,
		30.484789, 32.678295, 37.035770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476841, 33.461437, 37.401543>,  <30.964626, 33.173393, 36.914814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476841, 33.461437, 37.401543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453009, 33.064098, 37.440971>,  <30.438709, 32.825695, 37.464626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453009, 33.064098, 37.440971>,  <30.476841, 33.461437, 37.401543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453009, 33.064098, 37.440971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035579, 0.100795, 0.994271,
		-0.997589, 0.055735, -0.041348,
		-0.059583, -0.993345, 0.098569,
		30.435133, 32.766094, 37.470543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977493, 33.285999, 37.900959>,  <30.476841, 33.461437, 37.401543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977493, 33.285999, 37.900959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216429, 32.966240, 37.875206>,  <30.359789, 32.774384, 37.859753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216429, 32.966240, 37.875206>,  <29.977493, 33.285999, 37.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216429, 32.966240, 37.875206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110256, 0.002338, 0.993901,
		-0.794375, -0.600792, 0.089536,
		0.597337, -0.799402, -0.064384,
		30.395630, 32.726421, 37.855892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659056, 32.885391, 38.334164>,  <29.977493, 33.285999, 37.900959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659056, 32.885391, 38.334164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026608, 32.729237, 38.311329>,  <30.247139, 32.635544, 38.297626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026608, 32.729237, 38.311329>,  <29.659056, 32.885391, 38.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026608, 32.729237, 38.311329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061632, -0.000884, 0.998098,
		-0.389692, -0.920652, 0.023248,
		0.918880, -0.390384, -0.057086,
		30.302271, 32.612122, 38.294205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642294, 32.130203, 38.516819>,  <29.659056, 32.885391, 38.334164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642294, 32.130203, 38.516819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016277, 32.236237, 38.611122>,  <30.240667, 32.299858, 38.667706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016277, 32.236237, 38.611122>,  <29.642294, 32.130203, 38.516819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016277, 32.236237, 38.611122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127760, -0.368380, 0.920855,
		0.330956, -0.891081, -0.310552,
		0.934957, 0.265086, 0.235762,
		30.296764, 32.315762, 38.681850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798176, 31.569305, 38.897442>,  <29.642294, 32.130203, 38.516819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798176, 31.569305, 38.897442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080669, 31.840782, 38.978046>,  <30.250166, 32.003670, 39.026409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080669, 31.840782, 38.978046>,  <29.798176, 31.569305, 38.897442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080669, 31.840782, 38.978046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029646, -0.256038, 0.966212,
		0.707356, -0.688348, -0.160702,
		0.706236, 0.678692, 0.201516,
		30.292540, 32.044388, 39.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295090, 31.203644, 39.263058>,  <29.798176, 31.569305, 38.897442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295090, 31.203644, 39.263058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381367, 31.581745, 39.361012>,  <30.433134, 31.808607, 39.419785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381367, 31.581745, 39.361012>,  <30.295090, 31.203644, 39.263058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381367, 31.581745, 39.361012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147984, -0.216250, 0.965058,
		0.965182, -0.244396, 0.093238,
		0.215694, 0.945255, 0.244888,
		30.446075, 31.865322, 39.434479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656214, 31.138813, 39.766804>,  <30.295090, 31.203644, 39.263058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656214, 31.138813, 39.766804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556856, 31.522509, 39.820709>,  <30.497242, 31.752726, 39.853054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556856, 31.522509, 39.820709>,  <30.656214, 31.138813, 39.766804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556856, 31.522509, 39.820709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210234, -0.189194, 0.959170,
		0.945569, 0.209922, 0.248659,
		-0.248396, 0.959238, 0.134763,
		30.482338, 31.810280, 39.861137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029053, 31.385906, 40.382195>,  <30.656214, 31.138813, 39.766804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029053, 31.385906, 40.382195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711660, 31.620335, 40.316582>,  <30.521225, 31.760992, 40.277214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711660, 31.620335, 40.316582>,  <31.029053, 31.385906, 40.382195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711660, 31.620335, 40.316582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343744, -0.209172, 0.915471,
		0.502223, 0.782793, 0.367433,
		-0.793481, 0.586073, -0.164029,
		30.473616, 31.796156, 40.267372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964010, 31.685163, 41.069500>,  <31.029053, 31.385906, 40.382195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964010, 31.685163, 41.069500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625292, 31.790323, 40.884537>,  <30.422060, 31.853420, 40.773560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625292, 31.790323, 40.884537>,  <30.964010, 31.685163, 41.069500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625292, 31.790323, 40.884537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483080, -0.016230, 0.875426,
		0.222645, 0.964686, 0.140746,
		-0.846796, 0.262901, -0.462407,
		30.371254, 31.869194, 40.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620773, 32.275162, 41.364491>,  <30.964010, 31.685163, 41.069500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620773, 32.275162, 41.364491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348242, 32.044411, 41.184265>,  <30.184723, 31.905960, 41.076130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348242, 32.044411, 41.184265>,  <30.620773, 32.275162, 41.364491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348242, 32.044411, 41.184265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500238, -0.082406, 0.861958,
		-0.534371, 0.812665, -0.232430,
		-0.681329, -0.576875, -0.450561,
		30.143843, 31.871347, 41.049095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982393, 32.513245, 41.641552>,  <30.620773, 32.275162, 41.364491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982393, 32.513245, 41.641552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845835, 32.172218, 41.483269>,  <29.763901, 31.967602, 41.388298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845835, 32.172218, 41.483269>,  <29.982393, 32.513245, 41.641552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845835, 32.172218, 41.483269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497001, -0.193586, 0.845881,
		-0.797772, 0.485444, -0.357637,
		-0.341395, -0.852566, -0.395704,
		29.743416, 31.916449, 41.364559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317366, 32.465450, 41.716782>,  <29.982393, 32.513245, 41.641552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317366, 32.465450, 41.716782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430050, 32.083096, 41.683521>,  <29.497660, 31.853682, 41.663567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430050, 32.083096, 41.683521>,  <29.317366, 32.465450, 41.716782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430050, 32.083096, 41.683521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459531, -0.210485, 0.862860,
		-0.842301, -0.204867, -0.498557,
		0.281710, -0.955890, -0.083149,
		29.514563, 31.796329, 41.658577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665358, 32.068913, 41.905006>,  <29.317366, 32.465450, 41.716782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665358, 32.068913, 41.905006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967480, 31.807491, 41.924526>,  <29.148752, 31.650639, 41.936237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967480, 31.807491, 41.924526>,  <28.665358, 32.068913, 41.905006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967480, 31.807491, 41.924526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357672, -0.348668, 0.866315,
		-0.549169, -0.671786, -0.497109,
		0.755305, -0.653555, 0.048801,
		29.194071, 31.611425, 41.939167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378489, 31.474043, 42.247742>,  <28.665358, 32.068913, 41.905006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378489, 31.474043, 42.247742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777664, 31.451796, 42.260548>,  <29.017170, 31.438448, 42.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777664, 31.451796, 42.260548>,  <28.378489, 31.474043, 42.247742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777664, 31.451796, 42.260548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055530, -0.498388, 0.865174,
		-0.032165, -0.865168, -0.500449,
		0.997939, -0.055618, 0.032012,
		29.077045, 31.435110, 42.270149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443825, 30.801020, 42.338230>,  <28.378489, 31.474043, 42.247742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443825, 30.801020, 42.338230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788597, 30.957277, 42.467522>,  <28.995461, 31.051031, 42.545097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788597, 30.957277, 42.467522>,  <28.443825, 30.801020, 42.338230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788597, 30.957277, 42.467522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043056, -0.578797, 0.814334,
		0.505197, -0.715815, -0.482063,
		0.861930, 0.390643, 0.323226,
		29.047176, 31.074471, 42.564491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901871, 30.274244, 42.552769>,  <28.443825, 30.801020, 42.338230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901871, 30.274244, 42.552769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013969, 30.601603, 42.753445>,  <29.081228, 30.798018, 42.873852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013969, 30.601603, 42.753445>,  <28.901871, 30.274244, 42.552769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013969, 30.601603, 42.753445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017954, -0.527009, 0.849670,
		0.959760, -0.229109, -0.162385,
		0.280246, 0.818395, 0.501689,
		29.098043, 30.847120, 42.903950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163588, 29.937368, 43.130146>,  <28.901871, 30.274244, 42.552769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163588, 29.937368, 43.130146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123438, 30.319767, 43.240414>,  <29.099348, 30.549206, 43.306572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123438, 30.319767, 43.240414>,  <29.163588, 29.937368, 43.130146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123438, 30.319767, 43.240414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164961, -0.289221, 0.942942,
		0.981179, 0.049174, 0.186733,
		-0.100376, 0.955998, 0.275666,
		29.093325, 30.606567, 43.323112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504896, 29.934793, 43.708942>,  <29.163588, 29.937368, 43.130146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504896, 29.934793, 43.708942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270889, 30.259203, 43.709396>,  <29.130486, 30.453848, 43.709667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270889, 30.259203, 43.709396>,  <29.504896, 29.934793, 43.708942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270889, 30.259203, 43.709396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202834, -0.147663, 0.968015,
		0.785249, 0.566074, 0.250888,
		-0.585015, 0.811021, 0.001133,
		29.095385, 30.502510, 43.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772816, 30.273117, 44.335938>,  <29.504896, 29.934793, 43.708942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772816, 30.273117, 44.335938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415073, 30.410685, 44.221500>,  <29.200428, 30.493225, 44.152840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415073, 30.410685, 44.221500>,  <29.772816, 30.273117, 44.335938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415073, 30.410685, 44.221500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271927, 0.089861, 0.958113,
		0.355222, 0.934689, 0.013153,
		-0.894356, 0.343919, -0.286088,
		29.146767, 30.513861, 44.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625732, 30.826532, 44.841591>,  <29.772816, 30.273117, 44.335938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625732, 30.826532, 44.841591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262711, 30.719028, 44.712521>,  <29.044897, 30.654526, 44.635078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262711, 30.719028, 44.712521>,  <29.625732, 30.826532, 44.841591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262711, 30.719028, 44.712521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338952, 0.015198, 0.940681,
		-0.247912, 0.963088, -0.104889,
		-0.907552, -0.268759, -0.322672,
		28.990444, 30.638401, 44.615719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096561, 31.280245, 45.222866>,  <29.625732, 30.826532, 44.841591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096561, 31.280245, 45.222866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922287, 30.958393, 45.061497>,  <28.817722, 30.765282, 44.964676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922287, 30.958393, 45.061497>,  <29.096561, 31.280245, 45.222866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922287, 30.958393, 45.061497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555012, -0.112694, 0.824174,
		-0.708618, 0.582984, -0.397480,
		-0.435687, -0.804630, -0.403420,
		28.791580, 30.717005, 44.940472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318918, 31.374352, 45.202766>,  <29.096561, 31.280245, 45.222866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318918, 31.374352, 45.202766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425007, 30.988821, 45.213303>,  <28.488661, 30.757502, 45.219624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425007, 30.988821, 45.213303>,  <28.318918, 31.374352, 45.202766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425007, 30.988821, 45.213303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494677, -0.112574, 0.861755,
		-0.827618, -0.241586, -0.506640,
		0.265223, -0.963827, 0.026339,
		28.504574, 30.699673, 45.221203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749142, 31.111120, 45.498283>,  <28.318918, 31.374352, 45.202766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749142, 31.111120, 45.498283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010637, 30.810875, 45.536667>,  <28.167534, 30.630728, 45.559696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010637, 30.810875, 45.536667>,  <27.749142, 31.111120, 45.498283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010637, 30.810875, 45.536667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493217, -0.326479, 0.806318,
		-0.573902, -0.574451, -0.583646,
		0.653738, -0.750612, 0.095962,
		28.206758, 30.585691, 45.565456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293486, 30.560926, 45.622707>,  <27.749142, 31.111120, 45.498283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293486, 30.560926, 45.622707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655424, 30.436546, 45.739025>,  <27.872587, 30.361917, 45.808815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655424, 30.436546, 45.739025>,  <27.293486, 30.560926, 45.622707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655424, 30.436546, 45.739025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407464, -0.434573, 0.803193,
		-0.123381, -0.845255, -0.519923,
		0.904848, -0.310949, 0.290793,
		27.926878, 30.343262, 45.826263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223909, 29.845943, 45.967415>,  <27.293486, 30.560926, 45.622707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223909, 29.845943, 45.967415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598475, 29.946526, 46.065315>,  <27.823214, 30.006874, 46.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598475, 29.946526, 46.065315>,  <27.223909, 29.845943, 45.967415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598475, 29.946526, 46.065315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110502, -0.450691, 0.885814,
		0.333051, -0.856532, -0.394246,
		0.936411, 0.251456, 0.244752,
		27.879398, 30.021963, 46.138741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627859, 29.135931, 46.275627>,  <27.223909, 29.845943, 45.967415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627859, 29.135931, 46.275627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775213, 29.482367, 46.410789>,  <27.863626, 29.690228, 46.491886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775213, 29.482367, 46.410789>,  <27.627859, 29.135931, 46.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775213, 29.482367, 46.410789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059947, -0.340581, 0.938302,
		0.927738, -0.365915, -0.073547,
		0.368387, 0.866089, 0.337905,
		27.885729, 29.742193, 46.512161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079485, 29.028761, 46.759163>,  <27.627859, 29.135931, 46.275627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079485, 29.028761, 46.759163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948616, 29.392582, 46.861668>,  <27.870094, 29.610874, 46.923168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948616, 29.392582, 46.861668>,  <28.079485, 29.028761, 46.759163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948616, 29.392582, 46.861668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131840, -0.312466, 0.940736,
		0.935723, 0.273998, 0.222146,
		-0.327173, 0.909555, 0.256258,
		27.850464, 29.665449, 46.938545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347023, 29.150043, 47.518738>,  <28.079485, 29.028761, 46.759163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347023, 29.150043, 47.518738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079016, 29.442060, 47.464901>,  <27.918211, 29.617271, 47.432598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079016, 29.442060, 47.464901>,  <28.347023, 29.150043, 47.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079016, 29.442060, 47.464901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223979, -0.025954, 0.974248,
		0.707751, 0.682907, 0.180905,
		-0.670016, 0.730044, -0.134588,
		27.878012, 29.661074, 47.424526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417519, 29.601004, 48.077637>,  <28.347023, 29.150043, 47.518738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417519, 29.601004, 48.077637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041864, 29.646267, 47.947887>,  <27.816471, 29.673426, 47.870037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041864, 29.646267, 47.947887>,  <28.417519, 29.601004, 48.077637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041864, 29.646267, 47.947887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324156, 0.020840, 0.945774,
		0.113784, 0.993358, 0.017110,
		-0.939136, 0.113160, -0.324374,
		27.760124, 29.680216, 47.850574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086885, 30.017031, 48.627407>,  <28.417519, 29.601004, 48.077637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086885, 30.017031, 48.627407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776114, 29.885468, 48.412670>,  <27.589651, 29.806530, 48.283829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776114, 29.885468, 48.412670>,  <28.086885, 30.017031, 48.627407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776114, 29.885468, 48.412670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579498, 0.040277, 0.813978,
		-0.246100, 0.943503, -0.221894,
		-0.776928, -0.328907, -0.536845,
		27.543036, 29.786795, 48.251617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508137, 30.431431, 48.850025>,  <28.086885, 30.017031, 48.627407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508137, 30.431431, 48.850025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384670, 30.087334, 48.687687>,  <27.310591, 29.880877, 48.590286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384670, 30.087334, 48.687687>,  <27.508137, 30.431431, 48.850025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384670, 30.087334, 48.687687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576898, -0.169926, 0.798946,
		-0.756250, 0.480738, -0.443821,
		-0.308667, -0.860242, -0.405843,
		27.292070, 29.829262, 48.565933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724239, 30.302481, 48.737652>,  <27.508137, 30.431431, 48.850025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724239, 30.302481, 48.737652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967793, 30.003382, 48.843582>,  <27.113924, 29.823921, 48.907139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967793, 30.003382, 48.843582>,  <26.724239, 30.302481, 48.737652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967793, 30.003382, 48.843582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532657, -0.138006, 0.835004,
		-0.587826, -0.649481, -0.482323,
		0.608882, -0.747749, 0.264827,
		27.150457, 29.779057, 48.923031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340450, 29.692059, 48.775154>,  <26.724239, 30.302481, 48.737652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340450, 29.692059, 48.775154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663954, 29.619770, 48.999031>,  <26.858055, 29.576397, 49.133358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663954, 29.619770, 48.999031>,  <26.340450, 29.692059, 48.775154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663954, 29.619770, 48.999031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580251, -0.400536, 0.709140,
		0.096019, -0.898282, -0.428800,
		0.808757, -0.180721, 0.559688,
		26.906582, 29.565554, 49.166939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197922, 28.916330, 48.939602>,  <26.340450, 29.692059, 48.775154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197922, 28.916330, 48.939602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390482, 29.155890, 49.195595>,  <26.506018, 29.299625, 49.349190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390482, 29.155890, 49.195595>,  <26.197922, 28.916330, 48.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390482, 29.155890, 49.195595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408197, -0.492955, 0.768356,
		0.775648, -0.631125, 0.007159,
		0.481399, 0.598896, 0.639983,
		26.534903, 29.335558, 49.387589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603447, 28.535791, 49.469971>,  <26.197922, 28.916330, 48.939602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603447, 28.535791, 49.469971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536934, 28.900028, 49.621323>,  <26.497026, 29.118570, 49.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536934, 28.900028, 49.621323>,  <26.603447, 28.535791, 49.469971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536934, 28.900028, 49.621323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340664, -0.413146, 0.844546,
		0.925364, 0.011532, 0.378905,
		-0.166283, 0.910592, 0.378382,
		26.487049, 29.173206, 49.734837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031868, 28.483501, 50.144405>,  <26.603447, 28.535791, 49.469971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031868, 28.483501, 50.144405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692802, 28.695650, 50.149639>,  <26.489363, 28.822939, 50.152779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692802, 28.695650, 50.149639>,  <27.031868, 28.483501, 50.144405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692802, 28.695650, 50.149639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207117, -0.353529, 0.912206,
		0.488436, 0.770533, 0.409523,
		-0.847663, 0.530373, 0.013086,
		26.438503, 28.854763, 50.153564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913523, 27.834087, 50.587193>,  <27.031868, 28.483501, 50.144405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913523, 27.834087, 50.587193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825045, 27.446209, 50.628685>,  <26.771957, 27.213482, 50.653580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825045, 27.446209, 50.628685>,  <26.913523, 27.834087, 50.587193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825045, 27.446209, 50.628685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963980, -0.233512, -0.127339,
		0.147702, 0.071825, 0.986420,
		-0.221195, -0.969697, 0.103728,
		26.758686, 27.155300, 50.659805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118626, 27.431225, 51.153458>,  <26.913523, 27.834087, 50.587193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118626, 27.431225, 51.153458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128935, 27.229177, 50.808392>,  <27.135120, 27.107950, 50.601353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128935, 27.229177, 50.808392>,  <27.118626, 27.431225, 51.153458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128935, 27.229177, 50.808392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989404, -0.110449, 0.094231,
		-0.142878, -0.855954, 0.496919,
		0.025774, -0.505117, -0.862666,
		27.136667, 27.077642, 50.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385126, 26.641834, 51.269756>,  <27.118626, 27.431225, 51.153458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385126, 26.641834, 51.269756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483063, 26.818335, 50.924423>,  <27.541824, 26.924234, 50.717224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483063, 26.818335, 50.924423>,  <27.385126, 26.641834, 51.269756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483063, 26.818335, 50.924423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960409, -0.232444, 0.153571,
		-0.132914, -0.866756, -0.480695,
		0.244843, 0.441252, -0.863335,
		27.556517, 26.950710, 50.665424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881897, 26.252846, 50.868435>,  <27.385126, 26.641834, 51.269756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881897, 26.252846, 50.868435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963209, 26.632837, 50.773594>,  <28.011995, 26.860832, 50.716690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963209, 26.632837, 50.773594>,  <27.881897, 26.252846, 50.868435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963209, 26.632837, 50.773594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967322, -0.157372, 0.198802,
		0.151545, -0.269767, -0.950926,
		0.203279, 0.949979, -0.237103,
		28.024193, 26.917831, 50.702461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289152, 26.194599, 50.261143>,  <27.881897, 26.252846, 50.868435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289152, 26.194599, 50.261143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381424, 26.518122, 50.477520>,  <28.436787, 26.712234, 50.607346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381424, 26.518122, 50.477520>,  <28.289152, 26.194599, 50.261143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381424, 26.518122, 50.477520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930181, -0.346462, 0.121355,
		0.285569, 0.475182, -0.832257,
		0.230680, 0.808805, 0.540944,
		28.450628, 26.760763, 50.639805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522251, 26.248877, 49.955196>,  <28.289152, 26.194599, 50.261143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522251, 26.248877, 49.955196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361015, 26.556101, 49.756157>,  <27.264275, 26.740435, 49.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361015, 26.556101, 49.756157>,  <27.522251, 26.248877, 49.955196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361015, 26.556101, 49.756157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640628, -0.151473, -0.752762,
		-0.653540, -0.622205, -0.430984,
		-0.403090, 0.768061, -0.497596,
		27.240088, 26.786518, 49.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622391, 26.039394, 49.288910>,  <27.522251, 26.248877, 49.955196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622391, 26.039394, 49.288910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556189, 26.432140, 49.251934>,  <27.516466, 26.667788, 49.229748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556189, 26.432140, 49.251934>,  <27.622391, 26.039394, 49.288910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556189, 26.432140, 49.251934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716762, 0.055380, -0.695115,
		-0.677391, -0.181300, -0.712931,
		-0.165507, 0.981867, -0.092435,
		27.506536, 26.726700, 49.224205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653696, 26.151701, 48.514683>,  <27.622391, 26.039394, 49.288910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653696, 26.151701, 48.514683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704004, 26.507467, 48.690464>,  <27.734190, 26.720928, 48.795933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704004, 26.507467, 48.690464>,  <27.653696, 26.151701, 48.514683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704004, 26.507467, 48.690464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634136, 0.268582, -0.725076,
		-0.762924, 0.369867, -0.530231,
		0.125771, 0.889417, 0.439453,
		27.741735, 26.774292, 48.822300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632582, 26.617580, 48.021904>,  <27.653696, 26.151701, 48.514683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632582, 26.617580, 48.021904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837431, 26.803263, 48.310970>,  <27.960340, 26.914673, 48.484409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837431, 26.803263, 48.310970>,  <27.632582, 26.617580, 48.021904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837431, 26.803263, 48.310970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658336, 0.328247, -0.677383,
		-0.551657, 0.822659, -0.137501,
		0.512121, 0.464205, 0.722666,
		27.991068, 26.942524, 48.527771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831638, 27.226822, 47.705811>,  <27.632582, 26.617580, 48.021904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831638, 27.226822, 47.705811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072870, 27.192572, 48.023041>,  <28.217609, 27.172022, 48.213379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072870, 27.192572, 48.023041>,  <27.831638, 27.226822, 47.705811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072870, 27.192572, 48.023041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754627, 0.383459, -0.532444,
		-0.258521, 0.919580, 0.295870,
		0.603079, -0.085624, 0.793072,
		28.253794, 27.166885, 48.260963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139774, 27.889675, 47.737431>,  <27.831638, 27.226822, 47.705811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139774, 27.889675, 47.737431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377697, 27.628534, 47.925041>,  <28.520451, 27.471849, 48.037609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377697, 27.628534, 47.925041>,  <28.139774, 27.889675, 47.737431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377697, 27.628534, 47.925041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788202, 0.359017, -0.499844,
		0.157936, 0.667000, 0.728126,
		0.594806, -0.652854, 0.469029,
		28.556139, 27.432678, 48.065750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764370, 28.264294, 47.662949>,  <28.139774, 27.889675, 47.737431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764370, 28.264294, 47.662949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854393, 27.880262, 47.729404>,  <28.908407, 27.649843, 47.769276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854393, 27.880262, 47.729404>,  <28.764370, 28.264294, 47.662949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854393, 27.880262, 47.729404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841209, 0.105422, -0.530334,
		0.491646, 0.259113, 0.831351,
		0.225059, -0.960076, 0.166138,
		28.921911, 27.592239, 47.779247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422417, 28.235121, 47.970356>,  <28.764370, 28.264294, 47.662949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422417, 28.235121, 47.970356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342146, 27.886072, 47.792252>,  <29.293983, 27.676643, 47.685390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342146, 27.886072, 47.792252>,  <29.422417, 28.235121, 47.970356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342146, 27.886072, 47.792252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739022, 0.163519, -0.653535,
		0.643098, -0.460207, 0.612074,
		-0.200675, -0.872623, -0.445262,
		29.281944, 27.624285, 47.658672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040403, 28.000620, 47.750706>,  <29.422417, 28.235121, 47.970356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040403, 28.000620, 47.750706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783825, 27.778172, 47.539318>,  <29.629877, 27.644703, 47.412487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783825, 27.778172, 47.539318>,  <30.040403, 28.000620, 47.750706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783825, 27.778172, 47.539318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550556, 0.146028, -0.821927,
		0.534262, -0.818172, 0.212507,
		-0.641445, -0.556121, -0.528466,
		29.591391, 27.611336, 47.380779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491055, 27.565762, 47.416687>,  <30.040403, 28.000620, 47.750706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491055, 27.565762, 47.416687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152081, 27.588394, 47.205536>,  <29.948696, 27.601974, 47.078846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152081, 27.588394, 47.205536>,  <30.491055, 27.565762, 47.416687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152081, 27.588394, 47.205536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529622, 0.159063, -0.833186,
		0.036821, -0.985646, -0.164763,
		-0.847434, 0.056584, -0.527877,
		29.897850, 27.605370, 47.047173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616617, 27.217968, 46.847359>,  <30.491055, 27.565762, 47.416687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616617, 27.217968, 46.847359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294783, 27.416651, 46.717175>,  <30.101683, 27.535860, 46.639065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294783, 27.416651, 46.717175>,  <30.616617, 27.217968, 46.847359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294783, 27.416651, 46.717175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378442, 0.006525, -0.925602,
		-0.457629, -0.867894, -0.193225,
		-0.804585, 0.496707, -0.325461,
		30.053408, 27.565662, 46.619537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448391, 26.806787, 46.251003>,  <30.616617, 27.217968, 46.847359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448391, 26.806787, 46.251003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261423, 27.157425, 46.205223>,  <30.149242, 27.367807, 46.177753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261423, 27.157425, 46.205223>,  <30.448391, 26.806787, 46.251003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261423, 27.157425, 46.205223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376572, 0.080302, -0.922901,
		-0.799819, -0.474482, -0.367636,
		-0.467422, 0.876595, -0.114449,
		30.121197, 27.420403, 46.170887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167933, 26.797771, 45.494648>,  <30.448391, 26.806787, 46.251003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167933, 26.797771, 45.494648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110826, 27.181803, 45.590870>,  <30.076563, 27.412222, 45.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110826, 27.181803, 45.590870>,  <30.167933, 26.797771, 45.494648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110826, 27.181803, 45.590870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209843, 0.266884, -0.940606,
		-0.967256, -0.083807, -0.239567,
		-0.142766, 0.960078, 0.240559,
		30.067997, 27.469826, 45.663036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715265, 27.152069, 44.996071>,  <30.167933, 26.797771, 45.494648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715265, 27.152069, 44.996071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943419, 27.421576, 45.183987>,  <30.080311, 27.583281, 45.296738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943419, 27.421576, 45.183987>,  <29.715265, 27.152069, 44.996071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943419, 27.421576, 45.183987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352218, 0.316065, -0.880935,
		-0.742029, 0.667937, -0.057036,
		0.570381, 0.673768, 0.469789,
		30.114532, 27.623707, 45.324924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567728, 27.787161, 44.800827>,  <29.715265, 27.152069, 44.996071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567728, 27.787161, 44.800827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933537, 27.849110, 44.950314>,  <30.153021, 27.886280, 45.040005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933537, 27.849110, 44.950314>,  <29.567728, 27.787161, 44.800827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933537, 27.849110, 44.950314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190873, 0.649324, -0.736170,
		-0.356678, 0.744575, 0.564259,
		0.914521, 0.154874, 0.373719,
		30.207893, 27.895571, 45.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668846, 28.519121, 44.937672>,  <29.567728, 27.787161, 44.800827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668846, 28.519121, 44.937672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037117, 28.363585, 44.924053>,  <30.258080, 28.270262, 44.915882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037117, 28.363585, 44.924053>,  <29.668846, 28.519121, 44.937672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037117, 28.363585, 44.924053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220107, 0.589220, -0.777414,
		0.322352, 0.708252, 0.628067,
		0.920675, -0.388842, -0.034045,
		30.313320, 28.246931, 44.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135321, 29.093910, 44.866524>,  <29.668846, 28.519121, 44.937672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135321, 29.093910, 44.866524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303129, 28.755754, 44.734272>,  <30.403814, 28.552860, 44.654922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303129, 28.755754, 44.734272>,  <30.135321, 29.093910, 44.866524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303129, 28.755754, 44.734272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399774, 0.499075, -0.768834,
		0.814974, 0.190365, 0.547338,
		0.419521, -0.845391, -0.330630,
		30.428986, 28.502138, 44.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460052, 29.377134, 44.391869>,  <30.135321, 29.093910, 44.866524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460052, 29.377134, 44.391869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579525, 29.003036, 44.315861>,  <30.651209, 28.778578, 44.270256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579525, 29.003036, 44.315861>,  <30.460052, 29.377134, 44.391869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579525, 29.003036, 44.315861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381889, 0.299598, -0.874300,
		0.874615, 0.188570, 0.446644,
		0.298680, -0.935245, -0.190020,
		30.669128, 28.722464, 44.258854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163424, 29.382761, 44.139030>,  <30.460052, 29.377134, 44.391869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163424, 29.382761, 44.139030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020582, 29.028404, 44.020588>,  <30.934877, 28.815790, 43.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020582, 29.028404, 44.020588>,  <31.163424, 29.382761, 44.139030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020582, 29.028404, 44.020588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313180, 0.185097, -0.931481,
		0.879998, -0.425368, 0.211345,
		-0.357103, -0.885890, -0.296102,
		30.913452, 28.762638, 43.931759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745560, 28.950043, 43.811554>,  <31.163424, 29.382761, 44.139030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745560, 28.950043, 43.811554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381069, 28.874306, 43.665230>,  <31.162374, 28.828863, 43.577435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381069, 28.874306, 43.665230>,  <31.745560, 28.950043, 43.811554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381069, 28.874306, 43.665230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330774, 0.192899, -0.923785,
		0.245480, -0.962776, -0.113144,
		-0.911224, -0.189345, -0.365814,
		31.107702, 28.817503, 43.555485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915277, 28.531975, 43.244148>,  <31.745560, 28.950043, 43.811554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915277, 28.531975, 43.244148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539808, 28.648602, 43.170517>,  <31.314528, 28.718578, 43.126339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539808, 28.648602, 43.170517>,  <31.915277, 28.531975, 43.244148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539808, 28.648602, 43.170517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196603, 0.013989, -0.980383,
		-0.283274, -0.956448, -0.070455,
		-0.938671, 0.291569, -0.184077,
		31.258207, 28.736073, 43.115295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865360, 28.188950, 42.595776>,  <31.915277, 28.531975, 43.244148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865360, 28.188950, 42.595776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543688, 28.426296, 42.609673>,  <31.350685, 28.568705, 42.618011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543688, 28.426296, 42.609673>,  <31.865360, 28.188950, 42.595776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543688, 28.426296, 42.609673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004531, 0.052329, -0.998620,
		-0.594368, -0.803228, -0.039393,
		-0.804180, 0.593369, 0.034742,
		31.302433, 28.604307, 42.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387144, 27.947338, 42.134441>,  <31.865360, 28.188950, 42.595776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387144, 27.947338, 42.134441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283798, 28.330675, 42.183155>,  <31.221790, 28.560677, 42.212383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283798, 28.330675, 42.183155>,  <31.387144, 27.947338, 42.134441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283798, 28.330675, 42.183155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024745, 0.132586, -0.990863,
		-0.965730, -0.252992, -0.057970,
		-0.258366, 0.958341, 0.121782,
		31.206289, 28.618177, 42.219688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714642, 28.121553, 41.744343>,  <31.387144, 27.947338, 42.134441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714642, 28.121553, 41.744343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883190, 28.481243, 41.791409>,  <30.984320, 28.697056, 41.819649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883190, 28.481243, 41.791409>,  <30.714642, 28.121553, 41.744343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883190, 28.481243, 41.791409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135617, 0.190769, -0.972222,
		-0.896691, 0.393708, 0.202334,
		0.421371, 0.899222, 0.117667,
		31.009602, 28.751009, 41.826710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259758, 28.550558, 41.338078>,  <30.714642, 28.121553, 41.744343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259758, 28.550558, 41.338078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619013, 28.718594, 41.390045>,  <30.834566, 28.819414, 41.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619013, 28.718594, 41.390045>,  <30.259758, 28.550558, 41.338078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619013, 28.718594, 41.390045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041155, 0.374471, -0.926325,
		-0.437789, 0.826618, 0.353614,
		0.898135, 0.420088, 0.129920,
		30.888453, 28.844620, 41.429020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202351, 29.292936, 41.112579>,  <30.259758, 28.550558, 41.338078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202351, 29.292936, 41.112579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592222, 29.204391, 41.099937>,  <30.826145, 29.151264, 41.092350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592222, 29.204391, 41.099937>,  <30.202351, 29.292936, 41.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592222, 29.204391, 41.099937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037022, 0.299159, -0.953485,
		0.220522, 0.928172, 0.299779,
		0.974679, -0.221363, -0.031609,
		30.884626, 29.137983, 41.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341852, 29.826965, 40.709591>,  <30.202351, 29.292936, 41.112579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341852, 29.826965, 40.709591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628843, 29.548546, 40.720528>,  <30.801037, 29.381495, 40.727089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628843, 29.548546, 40.720528>,  <30.341852, 29.826965, 40.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628843, 29.548546, 40.720528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225532, 0.194983, -0.954525,
		0.659063, 0.691014, 0.296876,
		0.717476, -0.696046, 0.027339,
		30.844086, 29.339731, 40.728729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651384, 29.970644, 40.059776>,  <30.341852, 29.826965, 40.709591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651384, 29.970644, 40.059776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840687, 29.626019, 40.133247>,  <30.954268, 29.419243, 40.177330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840687, 29.626019, 40.133247>,  <30.651384, 29.970644, 40.059776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840687, 29.626019, 40.133247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073015, -0.169428, -0.982834,
		0.877895, 0.478542, -0.017276,
		0.473255, -0.861564, 0.183680,
		30.982664, 29.367550, 40.188351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395847, 29.990288, 39.868275>,  <30.651384, 29.970644, 40.059776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395847, 29.990288, 39.868275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263084, 29.614218, 39.837524>,  <31.183428, 29.388577, 39.819073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263084, 29.614218, 39.837524>,  <31.395847, 29.990288, 39.868275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263084, 29.614218, 39.837524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431930, -0.079016, -0.898439,
		0.838615, -0.331403, 0.432315,
		-0.331906, -0.940174, -0.076879,
		31.163513, 29.332165, 39.814461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937494, 29.672787, 39.455647>,  <31.395847, 29.990288, 39.868275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937494, 29.672787, 39.455647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644983, 29.401670, 39.425098>,  <31.469477, 29.239000, 39.406769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644983, 29.401670, 39.425098>,  <31.937494, 29.672787, 39.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644983, 29.401670, 39.425098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302443, -0.221868, -0.926986,
		0.611360, -0.700981, 0.367240,
		-0.731278, -0.677791, -0.076366,
		31.425600, 29.198334, 39.402187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195312, 29.212030, 38.984211>,  <31.937494, 29.672787, 39.455647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195312, 29.212030, 38.984211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818499, 29.077829, 38.984211>,  <31.592409, 28.997309, 38.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818499, 29.077829, 38.984211>,  <32.195312, 29.212030, 38.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818499, 29.077829, 38.984211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101545, -0.285126, -0.953096,
		0.319767, -0.897854, 0.302668,
		-0.942039, -0.335503, 0.000001,
		31.535887, 28.977179, 38.984211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173836, 28.506924, 38.631947>,  <32.195312, 29.212030, 38.984211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173836, 28.506924, 38.631947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802456, 28.654249, 38.612637>,  <31.579628, 28.742645, 38.601051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802456, 28.654249, 38.612637>,  <32.173836, 28.506924, 38.631947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802456, 28.654249, 38.612637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046284, -0.243651, -0.968758,
		-0.368572, -0.897205, 0.243264,
		-0.928446, 0.368316, -0.048277,
		31.523922, 28.764744, 38.598152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703451, 28.001921, 38.286896>,  <32.173836, 28.506924, 38.631947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703451, 28.001921, 38.286896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549355, 28.370289, 38.263260>,  <31.456896, 28.591311, 38.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549355, 28.370289, 38.263260>,  <31.703451, 28.001921, 38.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549355, 28.370289, 38.263260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291382, -0.182146, -0.939106,
		-0.875606, -0.344565, 0.338511,
		-0.385241, 0.920923, -0.059088,
		31.433783, 28.646566, 38.245533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254547, 27.960567, 37.771767>,  <31.703451, 28.001921, 38.286896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254547, 27.960567, 37.771767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243338, 28.358843, 37.807140>,  <31.236612, 28.597809, 37.828365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243338, 28.358843, 37.807140>,  <31.254547, 27.960567, 37.771767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243338, 28.358843, 37.807140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213610, 0.080456, -0.973600,
		-0.976517, -0.046174, 0.210435,
		-0.028024, 0.995688, 0.088430,
		31.234930, 28.657549, 37.833668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681618, 28.205288, 37.323029>,  <31.254547, 27.960567, 37.771767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681618, 28.205288, 37.323029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942499, 28.502171, 37.384689>,  <31.099028, 28.680300, 37.421684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942499, 28.502171, 37.384689>,  <30.681618, 28.205288, 37.323029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942499, 28.502171, 37.384689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058311, 0.153627, -0.986407,
		-0.755799, 0.652325, 0.056917,
		0.652202, 0.742207, 0.154149,
		31.138159, 28.724833, 37.430935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447157, 28.794491, 36.776508>,  <30.681618, 28.205288, 37.323029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447157, 28.794491, 36.776508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805719, 28.911007, 36.910137>,  <31.020857, 28.980917, 36.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805719, 28.911007, 36.910137>,  <30.447157, 28.794491, 36.776508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805719, 28.911007, 36.910137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329232, 0.067045, -0.941866,
		-0.296753, 0.954283, -0.035802,
		0.896406, 0.291289, 0.334076,
		31.074642, 28.998394, 37.010361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523659, 29.354324, 36.414249>,  <30.447157, 28.794491, 36.776508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523659, 29.354324, 36.414249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883791, 29.215422, 36.519180>,  <31.099871, 29.132080, 36.582138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883791, 29.215422, 36.519180>,  <30.523659, 29.354324, 36.414249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883791, 29.215422, 36.519180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365852, 0.277470, -0.888348,
		0.235699, 0.895780, 0.376860,
		0.900332, -0.347257, 0.262323,
		31.153891, 29.111244, 36.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958857, 29.962896, 36.326920>,  <30.523659, 29.354324, 36.414249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958857, 29.962896, 36.326920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134386, 29.604053, 36.306385>,  <31.239704, 29.388748, 36.294064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134386, 29.604053, 36.306385>,  <30.958857, 29.962896, 36.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134386, 29.604053, 36.306385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294263, 0.197448, -0.935106,
		0.849026, 0.395239, 0.350630,
		0.438822, -0.897107, -0.051334,
		31.266033, 29.334921, 36.290985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620132, 30.025461, 35.930244>,  <30.958857, 29.962896, 36.326920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620132, 30.025461, 35.930244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608727, 29.625624, 35.929737>,  <31.601883, 29.385721, 35.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608727, 29.625624, 35.929737>,  <31.620132, 30.025461, 35.930244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608727, 29.625624, 35.929737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333594, -0.008324, -0.942680,
		0.942286, -0.027302, 0.333695,
		-0.028515, -0.999593, -0.001264,
		31.600172, 29.325747, 35.929359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256401, 29.739576, 35.561584>,  <31.620132, 30.025461, 35.930244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256401, 29.739576, 35.561584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992243, 29.440348, 35.535435>,  <31.833748, 29.260811, 35.519745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992243, 29.440348, 35.535435>,  <32.256401, 29.739576, 35.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992243, 29.440348, 35.535435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304162, -0.186874, -0.934111,
		0.686563, -0.636765, 0.350944,
		-0.660392, -0.748070, -0.065379,
		31.794125, 29.215927, 35.515820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650497, 29.136816, 35.403282>,  <32.256401, 29.739576, 35.561584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650497, 29.136816, 35.403282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272125, 29.060402, 35.298420>,  <32.045101, 29.014553, 35.235504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272125, 29.060402, 35.298420>,  <32.650497, 29.136816, 35.403282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272125, 29.060402, 35.298420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288790, -0.127954, -0.948803,
		0.147713, -0.973207, 0.176205,
		-0.945929, -0.191037, -0.262152,
		31.988346, 29.003090, 35.219776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233261, 28.725460, 35.767593>,  <32.650497, 29.136816, 35.403282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233261, 28.725460, 35.767593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630505, 28.732031, 35.813999>,  <33.868851, 28.735973, 35.841843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630505, 28.732031, 35.813999>,  <33.233261, 28.725460, 35.767593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630505, 28.732031, 35.813999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105211, -0.310697, 0.944668,
		0.051564, -0.950367, -0.306828,
		0.993112, 0.016429, 0.116010,
		33.928440, 28.736959, 35.848801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457062, 28.121489, 36.046219>,  <33.233261, 28.725460, 35.767593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457062, 28.121489, 36.046219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761780, 28.352407, 36.163792>,  <33.944611, 28.490959, 36.234337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761780, 28.352407, 36.163792>,  <33.457062, 28.121489, 36.046219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761780, 28.352407, 36.163792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032456, -0.419146, 0.907339,
		0.647005, -0.700746, -0.300566,
		0.761795, 0.577298, 0.293933,
		33.990318, 28.525597, 36.251972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957642, 27.698732, 36.473209>,  <33.457062, 28.121489, 36.046219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957642, 27.698732, 36.473209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107738, 28.059765, 36.557625>,  <34.197796, 28.276384, 36.608273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107738, 28.059765, 36.557625>,  <33.957642, 27.698732, 36.473209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107738, 28.059765, 36.557625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093156, -0.263242, 0.960222,
		0.922233, -0.340658, -0.182861,
		0.375244, 0.902583, 0.211036,
		34.220310, 28.330540, 36.620937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625290, 27.511801, 36.888538>,  <33.957642, 27.698732, 36.473209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625290, 27.511801, 36.888538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490685, 27.880995, 36.963223>,  <34.409920, 28.102510, 37.008034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490685, 27.880995, 36.963223>,  <34.625290, 27.511801, 36.888538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490685, 27.880995, 36.963223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035869, -0.185567, 0.981977,
		0.940995, 0.337146, 0.029340,
		-0.336514, 0.922983, 0.186710,
		34.389732, 28.157890, 37.019238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083229, 27.771435, 37.585812>,  <34.625290, 27.511801, 36.888538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083229, 27.771435, 37.585812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742645, 27.978653, 37.553223>,  <34.538296, 28.102983, 37.533669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742645, 27.978653, 37.553223>,  <35.083229, 27.771435, 37.585812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742645, 27.978653, 37.553223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140402, -0.075505, 0.987212,
		0.505269, 0.852014, 0.137024,
		-0.851464, 0.518045, -0.081474,
		34.487206, 28.134068, 37.528782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168137, 28.206667, 38.173214>,  <35.083229, 27.771435, 37.585812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168137, 28.206667, 38.173214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789158, 28.271589, 38.062946>,  <34.561771, 28.310543, 37.996784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789158, 28.271589, 38.062946>,  <35.168137, 28.206667, 38.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789158, 28.271589, 38.062946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303698, -0.185553, 0.934525,
		0.100529, 0.969137, 0.225094,
		-0.947450, 0.162307, -0.275671,
		34.504921, 28.320282, 37.980244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934219, 28.784145, 38.555176>,  <35.168137, 28.206667, 38.173214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934219, 28.784145, 38.555176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603882, 28.582737, 38.453625>,  <34.405678, 28.461893, 38.392696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603882, 28.582737, 38.453625>,  <34.934219, 28.784145, 38.555176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603882, 28.582737, 38.453625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216397, -0.132760, 0.967237,
		-0.520727, 0.853723, 0.000679,
		-0.825843, -0.503519, -0.253875,
		34.356129, 28.431681, 38.377460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404510, 28.969818, 39.040524>,  <34.934219, 28.784145, 38.555176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404510, 28.969818, 39.040524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208801, 28.665363, 38.870213>,  <34.091377, 28.482691, 38.768024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208801, 28.665363, 38.870213>,  <34.404510, 28.969818, 39.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208801, 28.665363, 38.870213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424637, -0.218520, 0.878597,
		-0.761771, 0.610674, -0.216290,
		-0.489273, -0.761135, -0.425777,
		34.062019, 28.437023, 38.742477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666702, 29.149776, 39.153706>,  <34.404510, 28.969818, 39.040524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666702, 29.149776, 39.153706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785191, 28.768080, 39.137321>,  <33.856285, 28.539062, 39.127491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785191, 28.768080, 39.137321>,  <33.666702, 29.149776, 39.153706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785191, 28.768080, 39.137321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350726, -0.148569, 0.924618,
		-0.888393, -0.259527, -0.378686,
		0.296224, -0.954239, -0.040964,
		33.874058, 28.481808, 39.125031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120972, 28.741848, 39.468937>,  <33.666702, 29.149776, 39.153706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120972, 28.741848, 39.468937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451157, 28.516077, 39.471390>,  <33.649265, 28.380613, 39.472862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451157, 28.516077, 39.471390>,  <33.120972, 28.741848, 39.468937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451157, 28.516077, 39.471390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239517, -0.340409, 0.909260,
		-0.511127, -0.752024, -0.416184,
		0.825458, -0.564430, 0.006131,
		33.698795, 28.346748, 39.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936085, 28.052391, 39.778851>,  <33.120972, 28.741848, 39.468937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936085, 28.052391, 39.778851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335922, 28.058626, 39.788353>,  <33.575825, 28.062366, 39.794056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335922, 28.058626, 39.788353>,  <32.936085, 28.052391, 39.778851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335922, 28.058626, 39.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014907, -0.424216, 0.905439,
		0.024192, -0.905427, -0.423812,
		0.999596, 0.015586, 0.023760,
		33.635799, 28.063301, 39.795483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099842, 27.462595, 40.149220>,  <32.936085, 28.052391, 39.778851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099842, 27.462595, 40.149220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458927, 27.637449, 40.171207>,  <33.674377, 27.742361, 40.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458927, 27.637449, 40.171207>,  <33.099842, 27.462595, 40.149220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458927, 27.637449, 40.171207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077972, -0.280423, 0.956704,
		0.433623, -0.854562, -0.285824,
		0.897715, 0.437135, 0.054966,
		33.728241, 27.768589, 40.187698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693897, 26.908703, 40.310944>,  <33.099842, 27.462595, 40.149220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693897, 26.908703, 40.310944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803947, 27.277220, 40.420868>,  <33.869976, 27.498331, 40.486824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803947, 27.277220, 40.420868>,  <33.693897, 26.908703, 40.310944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803947, 27.277220, 40.420868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007878, -0.287994, 0.957600,
		0.961376, -0.261296, -0.086493,
		0.275127, 0.921295, 0.274812,
		33.886486, 27.553608, 40.503311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104828, 26.681849, 40.893162>,  <33.693897, 26.908703, 40.310944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104828, 26.681849, 40.893162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062458, 27.078918, 40.916393>,  <34.037037, 27.317162, 40.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062458, 27.078918, 40.916393>,  <34.104828, 26.681849, 40.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062458, 27.078918, 40.916393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095521, -0.068299, 0.993081,
		0.989775, 0.099648, 0.102056,
		-0.105929, 0.992676, 0.058083,
		34.030678, 27.376720, 40.933819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589146, 26.895279, 41.342651>,  <34.104828, 26.681849, 40.893162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589146, 26.895279, 41.342651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302952, 27.174728, 41.341225>,  <34.131237, 27.342398, 41.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302952, 27.174728, 41.341225>,  <34.589146, 26.895279, 41.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302952, 27.174728, 41.341225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101575, -0.098972, 0.989892,
		0.691207, 0.708613, 0.141775,
		-0.715482, 0.698622, -0.003567,
		34.088306, 27.384315, 41.340153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689194, 27.397211, 41.943085>,  <34.589146, 26.895279, 41.342651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689194, 27.397211, 41.943085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305874, 27.466911, 41.852482>,  <34.075882, 27.508732, 41.798119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305874, 27.466911, 41.852482>,  <34.689194, 27.397211, 41.943085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305874, 27.466911, 41.852482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208989, 0.113301, 0.971332,
		0.194921, 0.978161, -0.072159,
		-0.958295, 0.174252, -0.226510,
		34.018387, 27.519188, 41.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499947, 27.958473, 42.438248>,  <34.689194, 27.397211, 41.943085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499947, 27.958473, 42.438248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161682, 27.771564, 42.335087>,  <33.958721, 27.659420, 42.273190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161682, 27.771564, 42.335087>,  <34.499947, 27.958473, 42.438248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161682, 27.771564, 42.335087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308509, 0.033659, 0.950626,
		-0.435519, 0.883473, -0.172621,
		-0.845663, -0.467271, -0.257900,
		33.907982, 27.631384, 42.257717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994411, 28.365826, 42.721798>,  <34.499947, 27.958473, 42.438248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994411, 28.365826, 42.721798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828434, 28.008104, 42.654808>,  <33.728848, 27.793472, 42.614616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828434, 28.008104, 42.654808>,  <33.994411, 28.365826, 42.721798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828434, 28.008104, 42.654808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299031, -0.039793, 0.953413,
		-0.859304, 0.445691, -0.250912,
		-0.414943, -0.894302, -0.167470,
		33.703953, 27.739813, 42.604568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383469, 28.411047, 43.006489>,  <33.994411, 28.365826, 42.721798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383469, 28.411047, 43.006489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450600, 28.018545, 42.968594>,  <33.490879, 27.783045, 42.945854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450600, 28.018545, 42.968594>,  <33.383469, 28.411047, 43.006489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450600, 28.018545, 42.968594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153769, -0.120983, 0.980672,
		-0.973750, -0.150013, -0.171191,
		0.167825, -0.981254, -0.094740,
		33.500946, 27.724169, 42.940170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804630, 28.115845, 43.262810>,  <33.383469, 28.411047, 43.006489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804630, 28.115845, 43.262810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085190, 27.830894, 43.272285>,  <33.253525, 27.659924, 43.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085190, 27.830894, 43.272285>,  <32.804630, 28.115845, 43.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085190, 27.830894, 43.272285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271233, -0.236019, 0.933128,
		-0.659146, -0.660920, -0.358763,
		0.701398, -0.712376, 0.023693,
		33.295609, 27.617182, 43.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559528, 27.557377, 43.616344>,  <32.804630, 28.115845, 43.262810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559528, 27.557377, 43.616344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953533, 27.505102, 43.661377>,  <33.189938, 27.473738, 43.688396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953533, 27.505102, 43.661377>,  <32.559528, 27.557377, 43.616344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953533, 27.505102, 43.661377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123712, -0.080403, 0.989056,
		-0.120203, -0.988158, -0.095365,
		0.985011, -0.130685, 0.112582,
		33.249035, 27.465897, 43.695152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605011, 26.938824, 44.060272>,  <32.559528, 27.557377, 43.616344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605011, 26.938824, 44.060272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945988, 27.144064, 44.100422>,  <33.150574, 27.267208, 44.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945988, 27.144064, 44.100422>,  <32.605011, 26.938824, 44.060272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945988, 27.144064, 44.100422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121469, 0.007629, 0.992566,
		0.508519, -0.858296, 0.068829,
		0.852440, 0.513099, 0.100377,
		33.201721, 27.297993, 44.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934906, 26.579659, 44.582767>,  <32.605011, 26.938824, 44.060272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934906, 26.579659, 44.582767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126167, 26.930397, 44.562721>,  <33.240925, 27.140841, 44.550694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126167, 26.930397, 44.562721>,  <32.934906, 26.579659, 44.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126167, 26.930397, 44.562721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106779, 0.114679, 0.987647,
		0.871763, -0.466892, 0.148463,
		0.478150, 0.876847, -0.050119,
		33.269611, 27.193451, 44.547684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316120, 26.535295, 45.112755>,  <32.934906, 26.579659, 44.582767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316120, 26.535295, 45.112755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311119, 26.927818, 45.035938>,  <33.308117, 27.163332, 44.989849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311119, 26.927818, 45.035938>,  <33.316120, 26.535295, 45.112755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311119, 26.927818, 45.035938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164197, 0.187434, 0.968456,
		0.986348, 0.043644, 0.158784,
		-0.012506, 0.981307, -0.192042,
		33.307365, 27.222210, 44.978325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666302, 26.902426, 45.724796>,  <33.316120, 26.535295, 45.112755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666302, 26.902426, 45.724796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484150, 27.193123, 45.519089>,  <33.374859, 27.367542, 45.395664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484150, 27.193123, 45.519089>,  <33.666302, 26.902426, 45.724796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484150, 27.193123, 45.519089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290735, 0.424578, 0.857442,
		0.841487, 0.539979, 0.017945,
		-0.455381, 0.726744, -0.514267,
		33.347534, 27.411146, 45.364807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860550, 27.470942, 46.079311>,  <33.666302, 26.902426, 45.724796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860550, 27.470942, 46.079311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532993, 27.589058, 45.882450>,  <33.336460, 27.659927, 45.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532993, 27.589058, 45.882450>,  <33.860550, 27.470942, 46.079311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532993, 27.589058, 45.882450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370594, 0.382736, 0.846270,
		0.438262, 0.875394, -0.203986,
		-0.818893, 0.295292, -0.492155,
		33.287327, 27.677645, 45.734802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783112, 28.129141, 46.236210>,  <33.860550, 27.470942, 46.079311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783112, 28.129141, 46.236210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423191, 28.010210, 46.108490>,  <33.207237, 27.938850, 46.031860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423191, 28.010210, 46.108490>,  <33.783112, 28.129141, 46.236210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423191, 28.010210, 46.108490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426971, 0.449580, 0.784585,
		-0.089730, 0.842302, -0.531484,
		-0.899802, -0.297329, -0.319298,
		33.153252, 27.921011, 46.012699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396999, 28.692972, 46.245396>,  <33.783112, 28.129141, 46.236210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396999, 28.692972, 46.245396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139641, 28.387783, 46.270412>,  <32.985226, 28.204670, 46.285423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139641, 28.387783, 46.270412>,  <33.396999, 28.692972, 46.245396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139641, 28.387783, 46.270412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365069, 0.377613, 0.850960,
		-0.672875, 0.524675, -0.521493,
		-0.643400, -0.762971, 0.062544,
		32.946621, 28.158892, 46.289177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759026, 28.937057, 46.495266>,  <33.396999, 28.692972, 46.245396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759026, 28.937057, 46.495266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737125, 28.545656, 46.574802>,  <32.723988, 28.310816, 46.622524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737125, 28.545656, 46.574802>,  <32.759026, 28.937057, 46.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737125, 28.545656, 46.574802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311635, 0.205939, 0.927617,
		-0.948623, -0.011182, -0.316210,
		-0.054748, -0.978501, 0.198843,
		32.720699, 28.252106, 46.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150349, 28.962126, 46.857067>,  <32.759026, 28.937057, 46.495266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150349, 28.962126, 46.857067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314022, 28.604490, 46.929916>,  <32.412228, 28.389908, 46.973625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314022, 28.604490, 46.929916>,  <32.150349, 28.962126, 46.857067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314022, 28.604490, 46.929916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364773, 0.022670, 0.930820,
		-0.836367, -0.447312, -0.316864,
		0.409184, -0.894091, 0.182128,
		32.436779, 28.336264, 46.984554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634686, 28.601583, 47.118626>,  <32.150349, 28.962126, 46.857067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634686, 28.601583, 47.118626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958820, 28.410486, 47.254341>,  <32.153301, 28.295828, 47.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958820, 28.410486, 47.254341>,  <31.634686, 28.601583, 47.118626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958820, 28.410486, 47.254341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463784, -0.169033, 0.869673,
		-0.358130, -0.862084, -0.358543,
		0.810338, -0.477743, 0.339286,
		32.201923, 28.267164, 47.356129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289467, 28.150894, 47.458149>,  <31.634686, 28.601583, 47.118626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289467, 28.150894, 47.458149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659119, 28.130793, 47.609653>,  <31.880909, 28.118731, 47.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659119, 28.130793, 47.609653>,  <31.289467, 28.150894, 47.458149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659119, 28.130793, 47.609653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368898, -0.375494, 0.850246,
		0.099494, -0.925461, -0.365544,
		0.924130, -0.050255, 0.378760,
		31.936357, 28.115717, 47.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296869, 27.558548, 47.737747>,  <31.289467, 28.150894, 47.458149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296869, 27.558548, 47.737747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600830, 27.745777, 47.918171>,  <31.783207, 27.858114, 48.026424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600830, 27.745777, 47.918171>,  <31.296869, 27.558548, 47.737747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600830, 27.745777, 47.918171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358631, -0.276852, 0.891480,
		0.542157, -0.839201, -0.042514,
		0.759901, 0.468075, 0.451061,
		31.828800, 27.886200, 48.053490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524656, 27.123621, 48.225170>,  <31.296869, 27.558548, 47.737747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524656, 27.123621, 48.225170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690107, 27.461679, 48.360603>,  <31.789377, 27.664515, 48.441864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690107, 27.461679, 48.360603>,  <31.524656, 27.123621, 48.225170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690107, 27.461679, 48.360603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344001, -0.199249, 0.917585,
		0.842957, -0.496011, 0.208317,
		0.413626, 0.845147, 0.338586,
		31.814196, 27.715223, 48.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846777, 26.946394, 48.896549>,  <31.524656, 27.123621, 48.225170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846777, 26.946394, 48.896549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778166, 27.340242, 48.883293>,  <31.737000, 27.576551, 48.875340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778166, 27.340242, 48.883293>,  <31.846777, 26.946394, 48.896549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778166, 27.340242, 48.883293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292677, -0.018810, 0.956026,
		0.940701, 0.173685, 0.291403,
		-0.171529, 0.984621, -0.033139,
		31.726707, 27.635630, 48.873352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196251, 27.159714, 49.428471>,  <31.846777, 26.946394, 48.896549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196251, 27.159714, 49.428471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916634, 27.441019, 49.376678>,  <31.748863, 27.609802, 49.345604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916634, 27.441019, 49.376678>,  <32.196251, 27.159714, 49.428471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916634, 27.441019, 49.376678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203494, -0.022050, 0.978828,
		0.685518, 0.710589, 0.158523,
		-0.699039, 0.703262, -0.129485,
		31.706923, 27.651999, 49.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400444, 27.624069, 49.946281>,  <32.196251, 27.159714, 49.428471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400444, 27.624069, 49.946281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027969, 27.695679, 49.819260>,  <31.804483, 27.738644, 49.743046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027969, 27.695679, 49.819260>,  <32.400444, 27.624069, 49.946281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027969, 27.695679, 49.819260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330882, -0.049509, 0.942373,
		0.152985, 0.982598, 0.105338,
		-0.931189, 0.179023, -0.317550,
		31.748613, 27.749386, 49.723995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043995, 28.185139, 50.248737>,  <32.400444, 27.624069, 49.946281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043995, 28.185139, 50.248737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787178, 27.887959, 50.173054>,  <31.633087, 27.709650, 50.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787178, 27.887959, 50.173054>,  <32.043995, 28.185139, 50.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787178, 27.887959, 50.173054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309604, 0.025480, 0.950524,
		-0.701372, 0.668860, -0.246380,
		-0.642045, -0.742951, -0.189211,
		31.594564, 27.665073, 50.116291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289021, 28.804785, 49.896198>,  <32.043995, 28.185139, 50.248737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289021, 28.804785, 49.896198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338158, 29.169159, 50.053734>,  <32.367641, 29.387783, 50.148254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338158, 29.169159, 50.053734>,  <32.289021, 28.804785, 49.896198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338158, 29.169159, 50.053734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244647, 0.356798, -0.901578,
		-0.961799, 0.207105, -0.179026,
		0.122845, 0.910935, 0.393836,
		32.375011, 29.442440, 50.171886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970167, 29.333569, 49.389652>,  <32.289021, 28.804785, 49.896198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970167, 29.333569, 49.389652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243950, 29.526625, 49.608223>,  <32.408218, 29.642458, 49.739365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243950, 29.526625, 49.608223>,  <31.970167, 29.333569, 49.389652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243950, 29.526625, 49.608223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294187, 0.502929, -0.812722,
		-0.667064, 0.717023, 0.202246,
		0.684456, 0.482639, 0.546425,
		32.449287, 29.671417, 49.772152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763588, 30.031187, 49.277214>,  <31.970167, 29.333569, 49.389652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763588, 30.031187, 49.277214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140991, 30.007870, 49.407684>,  <32.367435, 29.993879, 49.485966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140991, 30.007870, 49.407684>,  <31.763588, 30.031187, 49.277214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140991, 30.007870, 49.407684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303437, 0.547431, -0.779901,
		-0.133094, 0.834818, 0.534196,
		0.943511, -0.058294, 0.326174,
		32.424046, 29.990381, 49.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051846, 30.665268, 48.995728>,  <31.763588, 30.031187, 49.277214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051846, 30.665268, 48.995728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370071, 30.440691, 49.086823>,  <32.561005, 30.305944, 49.141479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370071, 30.440691, 49.086823>,  <32.051846, 30.665268, 48.995728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370071, 30.440691, 49.086823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510242, 0.418173, -0.751521,
		0.326702, 0.714083, 0.619154,
		0.795562, -0.561442, 0.227737,
		32.608742, 30.272259, 49.155144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592335, 31.087803, 48.906101>,  <32.051846, 30.665268, 48.995728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592335, 31.087803, 48.906101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727570, 30.713110, 48.869812>,  <32.808712, 30.488295, 48.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727570, 30.713110, 48.869812>,  <32.592335, 31.087803, 48.906101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727570, 30.713110, 48.869812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577172, 0.282521, -0.766195,
		0.743350, 0.206679, 0.636172,
		0.338089, -0.936731, -0.090723,
		32.828995, 30.432091, 48.842594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312107, 31.238117, 48.879673>,  <32.592335, 31.087803, 48.906101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312107, 31.238117, 48.879673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244373, 30.880476, 48.713825>,  <33.203732, 30.665892, 48.614319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244373, 30.880476, 48.713825>,  <33.312107, 31.238117, 48.879673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244373, 30.880476, 48.713825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619284, 0.230736, -0.750499,
		0.766690, -0.383851, 0.514631,
		-0.169335, -0.894103, -0.414615,
		33.193573, 30.612246, 48.589439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984089, 31.020857, 48.590412>,  <33.312107, 31.238117, 48.879673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984089, 31.020857, 48.590412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711380, 30.782707, 48.420368>,  <33.547756, 30.639818, 48.318340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711380, 30.782707, 48.420368>,  <33.984089, 31.020857, 48.590412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711380, 30.782707, 48.420368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539288, -0.016359, -0.841962,
		0.494328, -0.803282, 0.332231,
		-0.681768, -0.595374, -0.425114,
		33.506851, 30.604095, 48.292835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383755, 30.415394, 48.176411>,  <33.984089, 31.020857, 48.590412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383755, 30.415394, 48.176411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012920, 30.449717, 48.030453>,  <33.790421, 30.470310, 47.942879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012920, 30.449717, 48.030453>,  <34.383755, 30.415394, 48.176411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012920, 30.449717, 48.030453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373957, 0.144491, -0.916121,
		-0.025885, -0.985779, -0.166044,
		-0.927085, 0.085807, -0.364899,
		33.734795, 30.475458, 47.920982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390038, 30.014524, 47.644341>,  <34.383755, 30.415394, 48.176411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390038, 30.014524, 47.644341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069347, 30.233204, 47.547718>,  <33.876934, 30.364412, 47.489746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069347, 30.233204, 47.547718>,  <34.390038, 30.014524, 47.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069347, 30.233204, 47.547718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296757, 0.013290, -0.954861,
		-0.518811, -0.837224, -0.172891,
		-0.801730, 0.546699, -0.241557,
		33.828827, 30.397213, 47.475250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140076, 29.739428, 47.066212>,  <34.390038, 30.014524, 47.644341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140076, 29.739428, 47.066212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952824, 30.090973, 47.029438>,  <33.840473, 30.301901, 47.007374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952824, 30.090973, 47.029438>,  <34.140076, 29.739428, 47.066212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952824, 30.090973, 47.029438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228874, 0.020101, -0.973248,
		-0.853506, -0.476647, -0.210559,
		-0.468128, 0.878865, -0.091936,
		33.812386, 30.354633, 47.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532673, 29.726595, 46.642311>,  <34.140076, 29.739428, 47.066212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532673, 29.726595, 46.642311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646832, 30.109846, 46.633038>,  <33.715328, 30.339798, 46.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646832, 30.109846, 46.633038>,  <33.532673, 29.726595, 46.642311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646832, 30.109846, 46.633038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105481, -0.055447, -0.992874,
		-0.952587, 0.280917, -0.116888,
		0.285397, 0.958129, -0.023186,
		33.732452, 30.397285, 46.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461773, 29.878677, 46.045483>,  <33.532673, 29.726595, 46.642311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461773, 29.878677, 46.045483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669369, 30.213125, 46.116543>,  <33.793926, 30.413794, 46.159180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669369, 30.213125, 46.116543>,  <33.461773, 29.878677, 46.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669369, 30.213125, 46.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063031, 0.169835, -0.983455,
		-0.852456, 0.521597, 0.035440,
		0.518986, 0.836118, 0.177654,
		33.825066, 30.463961, 46.169838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173206, 30.445229, 45.674450>,  <33.461773, 29.878677, 46.045483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173206, 30.445229, 45.674450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564796, 30.498554, 45.736198>,  <33.799751, 30.530550, 45.773247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564796, 30.498554, 45.736198>,  <33.173206, 30.445229, 45.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564796, 30.498554, 45.736198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149859, 0.043286, -0.987759,
		-0.138364, 0.990128, 0.022397,
		0.978978, 0.133314, 0.154369,
		33.858490, 30.538548, 45.782509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294849, 30.944016, 45.310112>,  <33.173206, 30.445229, 45.674450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294849, 30.944016, 45.310112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663628, 30.795185, 45.353161>,  <33.884895, 30.705887, 45.378990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663628, 30.795185, 45.353161>,  <33.294849, 30.944016, 45.310112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663628, 30.795185, 45.353161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184688, 0.178048, -0.966535,
		0.340460, 0.910966, 0.232867,
		0.921942, -0.372074, 0.107626,
		33.940208, 30.683563, 45.385448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822540, 31.404366, 44.944004>,  <33.294849, 30.944016, 45.310112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822540, 31.404366, 44.944004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980949, 31.038166, 44.972366>,  <34.075996, 30.818447, 44.989384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980949, 31.038166, 44.972366>,  <33.822540, 31.404366, 44.944004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980949, 31.038166, 44.972366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191232, 0.006701, -0.981522,
		0.898107, 0.402266, 0.177726,
		0.396023, -0.915499, 0.070908,
		34.099758, 30.763517, 44.993637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377094, 31.437351, 44.482525>,  <33.822540, 31.404366, 44.944004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377094, 31.437351, 44.482525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349068, 31.043324, 44.545429>,  <34.332253, 30.806908, 44.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349068, 31.043324, 44.545429>,  <34.377094, 31.437351, 44.482525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349068, 31.043324, 44.545429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046913, -0.160730, -0.985883,
		0.996438, -0.061704, 0.057475,
		-0.070071, -0.985068, 0.157263,
		34.328045, 30.747803, 44.592609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832062, 31.194340, 43.978085>,  <34.377094, 31.437351, 44.482525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832062, 31.194340, 43.978085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668011, 30.845312, 44.084236>,  <34.569580, 30.635897, 44.147926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668011, 30.845312, 44.084236>,  <34.832062, 31.194340, 43.978085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668011, 30.845312, 44.084236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269619, -0.393964, -0.878691,
		0.871265, -0.288824, 0.396836,
		-0.410126, -0.872567, 0.265375,
		34.544971, 30.583542, 44.163849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287098, 30.742865, 43.987709>,  <34.832062, 31.194340, 43.978085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287098, 30.742865, 43.987709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936604, 30.560452, 43.925434>,  <34.726307, 30.451004, 43.888069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936604, 30.560452, 43.925434>,  <35.287098, 30.742865, 43.987709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936604, 30.560452, 43.925434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334284, -0.342562, -0.878012,
		0.347068, -0.821394, 0.452610,
		-0.876241, -0.456031, -0.155687,
		34.673733, 30.423643, 43.878727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474770, 30.124741, 43.703838>,  <35.287098, 30.742865, 43.987709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474770, 30.124741, 43.703838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095352, 30.202093, 43.603546>,  <34.867702, 30.248505, 43.543369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095352, 30.202093, 43.603546>,  <35.474770, 30.124741, 43.703838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095352, 30.202093, 43.603546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158646, -0.395053, -0.904856,
		-0.274038, -0.898073, 0.344046,
		-0.948544, 0.193383, -0.250735,
		34.810787, 30.260109, 43.528324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467590, 29.696074, 43.268970>,  <35.474770, 30.124741, 43.703838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467590, 29.696074, 43.268970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116962, 29.862089, 43.171501>,  <34.906586, 29.961699, 43.113018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116962, 29.862089, 43.171501>,  <35.467590, 29.696074, 43.268970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116962, 29.862089, 43.171501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073627, -0.384699, -0.920101,
		-0.475618, -0.824469, 0.306655,
		-0.876565, 0.415039, -0.243673,
		34.853992, 29.986601, 43.098400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023842, 29.266596, 42.833553>,  <35.467590, 29.696074, 43.268970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023842, 29.266596, 42.833553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901436, 29.640257, 42.760105>,  <34.827991, 29.864454, 42.716038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901436, 29.640257, 42.760105>,  <35.023842, 29.266596, 42.833553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901436, 29.640257, 42.760105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045266, -0.206928, -0.977308,
		-0.950951, -0.290756, 0.105608,
		-0.306012, 0.934153, -0.183617,
		34.809631, 29.920504, 42.705021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298687, 29.288025, 42.424633>,  <35.023842, 29.266596, 42.833553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298687, 29.288025, 42.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470436, 29.644308, 42.364933>,  <34.573486, 29.858078, 42.329113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470436, 29.644308, 42.364933>,  <34.298687, 29.288025, 42.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470436, 29.644308, 42.364933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064225, -0.134731, -0.988799,
		-0.900841, 0.434149, -0.000644,
		0.429373, 0.890709, -0.149254,
		34.599247, 29.911520, 42.320156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910748, 29.635538, 41.884480>,  <34.298687, 29.288025, 42.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910748, 29.635538, 41.884480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249836, 29.847565, 41.876583>,  <34.453289, 29.974781, 41.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249836, 29.847565, 41.876583>,  <33.910748, 29.635538, 41.884480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249836, 29.847565, 41.876583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084968, 0.098969, -0.991456,
		-0.523586, 0.842159, 0.128938,
		0.847725, 0.530069, -0.019738,
		34.504154, 30.006586, 41.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768349, 29.991880, 41.329437>,  <33.910748, 29.635538, 41.884480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768349, 29.991880, 41.329437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160854, 30.035219, 41.393173>,  <34.396358, 30.061222, 41.431416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160854, 30.035219, 41.393173>,  <33.768349, 29.991880, 41.329437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160854, 30.035219, 41.393173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159816, 0.004346, -0.987137,
		-0.107648, 0.994103, -0.013052,
		0.981260, 0.108349, 0.159341,
		34.455231, 30.067724, 41.440975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040249, 30.675938, 41.039272>,  <33.768349, 29.991880, 41.329437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040249, 30.675938, 41.039272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352707, 30.428185, 41.070721>,  <34.540180, 30.279533, 41.089592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352707, 30.428185, 41.070721>,  <34.040249, 30.675938, 41.039272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352707, 30.428185, 41.070721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272298, 0.224644, -0.935622,
		0.561846, 0.752263, 0.344136,
		0.781142, -0.619383, 0.078624,
		34.587051, 30.242369, 41.094307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577610, 30.967081, 40.657921>,  <34.040249, 30.675938, 41.039272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577610, 30.967081, 40.657921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727184, 30.599400, 40.707291>,  <34.816929, 30.378790, 40.736912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727184, 30.599400, 40.707291>,  <34.577610, 30.967081, 40.657921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727184, 30.599400, 40.707291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464772, 0.070561, -0.882614,
		0.802596, 0.387403, 0.453606,
		0.373935, -0.919206, 0.123422,
		34.839363, 30.323637, 40.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288990, 30.973539, 40.484451>,  <34.577610, 30.967081, 40.657921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288990, 30.973539, 40.484451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152138, 30.601023, 40.434418>,  <35.070026, 30.377512, 40.404396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152138, 30.601023, 40.434418>,  <35.288990, 30.973539, 40.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152138, 30.601023, 40.434418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416245, -0.030857, -0.908729,
		0.842431, -0.362967, 0.398202,
		-0.342126, -0.931291, -0.125088,
		35.049500, 30.321636, 40.396893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782860, 30.626755, 40.296833>,  <35.288990, 30.973539, 40.484451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782860, 30.626755, 40.296833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492744, 30.385132, 40.164730>,  <35.318676, 30.240158, 40.085468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492744, 30.385132, 40.164730>,  <35.782860, 30.626755, 40.296833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492744, 30.385132, 40.164730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513735, -0.155541, -0.843732,
		0.458295, -0.781614, 0.423138,
		-0.725288, -0.604058, -0.330259,
		35.275158, 30.203915, 40.065651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096710, 29.962534, 40.149986>,  <35.782860, 30.626755, 40.296833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096710, 29.962534, 40.149986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764679, 29.987120, 39.928288>,  <35.565460, 30.001871, 39.795269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764679, 29.987120, 39.928288>,  <36.096710, 29.962534, 40.149986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764679, 29.987120, 39.928288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544306, -0.126764, -0.829254,
		-0.121215, -0.990028, 0.071778,
		-0.830083, 0.061449, -0.554244,
		35.515656, 30.005560, 39.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096977, 29.475004, 39.681770>,  <36.096710, 29.962534, 40.149986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096977, 29.475004, 39.681770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861057, 29.759640, 39.529049>,  <35.719505, 29.930420, 39.437416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861057, 29.759640, 39.529049>,  <36.096977, 29.475004, 39.681770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861057, 29.759640, 39.529049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431530, -0.121913, -0.893823,
		-0.682581, -0.691939, -0.235167,
		-0.589801, 0.711588, -0.381808,
		35.684116, 29.973116, 39.414505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134239, 29.263508, 38.990517>,  <36.096977, 29.475004, 39.681770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134239, 29.263508, 38.990517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973080, 29.628880, 39.013577>,  <35.876385, 29.848103, 39.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973080, 29.628880, 39.013577>,  <36.134239, 29.263508, 38.990517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973080, 29.628880, 39.013577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291743, 0.187875, -0.937864,
		-0.867501, -0.361046, -0.342181,
		-0.402899, 0.913427, 0.057649,
		35.852211, 29.902908, 39.030872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769123, 29.389187, 38.363293>,  <36.134239, 29.263508, 38.990517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769123, 29.389187, 38.363293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858421, 29.751850, 38.506474>,  <35.911999, 29.969448, 38.592381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858421, 29.751850, 38.506474>,  <35.769123, 29.389187, 38.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858421, 29.751850, 38.506474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235849, 0.306067, -0.922333,
		-0.945800, 0.290327, -0.145508,
		0.223243, 0.906660, 0.357952,
		35.925396, 30.023848, 38.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609184, 29.894754, 37.771149>,  <35.769123, 29.389187, 38.363293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609184, 29.894754, 37.771149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825523, 30.097265, 38.039822>,  <35.955326, 30.218773, 38.201027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825523, 30.097265, 38.039822>,  <35.609184, 29.894754, 37.771149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825523, 30.097265, 38.039822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502106, 0.446335, -0.740726,
		-0.674810, 0.737880, -0.012805,
		0.540852, 0.506279, 0.671685,
		35.987778, 30.249149, 38.241325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678684, 30.567488, 37.536617>,  <35.609184, 29.894754, 37.771149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678684, 30.567488, 37.536617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986305, 30.538498, 37.790642>,  <36.170879, 30.521103, 37.943058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986305, 30.538498, 37.790642>,  <35.678684, 30.567488, 37.536617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986305, 30.538498, 37.790642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602382, 0.414455, -0.682175,
		-0.213764, 0.907179, 0.362395,
		0.769052, -0.072476, 0.635064,
		36.217022, 30.516756, 37.981159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970661, 31.221510, 37.520077>,  <35.678684, 30.567488, 37.536617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970661, 31.221510, 37.520077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258133, 30.992477, 37.677887>,  <36.430618, 30.855059, 37.772572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258133, 30.992477, 37.677887>,  <35.970661, 31.221510, 37.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258133, 30.992477, 37.677887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637664, 0.316465, -0.702307,
		0.277276, 0.756307, 0.592552,
		0.718682, -0.572582, 0.394521,
		36.473736, 30.820704, 37.796242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522091, 31.667654, 37.695171>,  <35.970661, 31.221510, 37.520077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522091, 31.667654, 37.695171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675152, 31.301321, 37.646473>,  <36.766991, 31.081520, 37.617252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675152, 31.301321, 37.646473>,  <36.522091, 31.667654, 37.695171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675152, 31.301321, 37.646473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667884, 0.365260, -0.648472,
		0.638363, 0.166827, 0.751440,
		0.382654, -0.915835, -0.121747,
		36.789948, 31.026571, 37.609947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233032, 31.724285, 37.707363>,  <36.522091, 31.667654, 37.695171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233032, 31.724285, 37.707363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188950, 31.370800, 37.525414>,  <37.162498, 31.158709, 37.416245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188950, 31.370800, 37.525414>,  <37.233032, 31.724285, 37.707363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188950, 31.370800, 37.525414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739929, 0.232612, -0.631186,
		0.663596, -0.406132, 0.628249,
		-0.110207, -0.883713, -0.454870,
		37.155888, 31.105686, 37.388954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931820, 31.273069, 37.680897>,  <37.233032, 31.724285, 37.707363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931820, 31.273069, 37.680897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685345, 31.174917, 37.381538>,  <37.537460, 31.116026, 37.201923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685345, 31.174917, 37.381538>,  <37.931820, 31.273069, 37.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685345, 31.174917, 37.381538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644303, 0.389453, -0.658179,
		0.452971, -0.887758, -0.081877,
		-0.616191, -0.245382, -0.748396,
		37.500488, 31.101303, 37.157021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393814, 31.441162, 37.162022>,  <37.931820, 31.273069, 37.680897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393814, 31.441162, 37.162022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066998, 31.342039, 36.953777>,  <37.870907, 31.282564, 36.828831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066998, 31.342039, 36.953777>,  <38.393814, 31.441162, 37.162022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066998, 31.342039, 36.953777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336337, 0.528551, -0.779431,
		0.468320, -0.811926, -0.348499,
		-0.817040, -0.247810, -0.520612,
		37.821884, 31.267696, 36.797596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544434, 31.155291, 36.531509>,  <38.393814, 31.441162, 37.162022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544434, 31.155291, 36.531509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183556, 31.316692, 36.470539>,  <37.967030, 31.413534, 36.433956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183556, 31.316692, 36.470539>,  <38.544434, 31.155291, 36.531509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183556, 31.316692, 36.470539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313222, 0.369923, -0.874671,
		-0.296549, -0.836864, -0.460128,
		-0.902192, 0.403505, -0.152424,
		37.912899, 31.437744, 36.424812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495884, 31.055635, 35.839256>,  <38.544434, 31.155291, 36.531509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495884, 31.055635, 35.839256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244732, 31.341772, 35.961933>,  <38.094040, 31.513454, 36.035542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244732, 31.341772, 35.961933>,  <38.495884, 31.055635, 35.839256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244732, 31.341772, 35.961933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145643, 0.495075, -0.856556,
		-0.764565, -0.493143, -0.415030,
		-0.627876, 0.715340, 0.306694,
		38.056370, 31.556374, 36.053940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805542, 31.737055, 35.788536>,  <38.495884, 31.055635, 35.839256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805542, 31.737055, 35.788536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052174, 31.969755, 35.576347>,  <39.200153, 32.109375, 35.449036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052174, 31.969755, 35.576347>,  <38.805542, 31.737055, 35.788536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052174, 31.969755, 35.576347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668711, -0.742594, -0.037129,
		-0.415524, -0.331839, -0.846890,
		0.616575, 0.581753, -0.530471,
		39.237144, 32.144279, 35.417206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058289, 31.294809, 35.344204>,  <38.805542, 31.737055, 35.788536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058289, 31.294809, 35.344204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324738, 31.591648, 35.374069>,  <39.484608, 31.769751, 35.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324738, 31.591648, 35.374069>,  <39.058289, 31.294809, 35.344204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324738, 31.591648, 35.374069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745067, -0.657534, -0.111910,
		-0.033957, 0.130172, -0.990910,
		0.666124, 0.742095, 0.074659,
		39.524574, 31.814276, 35.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447681, 31.200478, 34.685863>,  <39.058289, 31.294809, 35.344204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447681, 31.200478, 34.685863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636517, 31.371229, 34.994385>,  <39.749817, 31.473680, 35.179497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636517, 31.371229, 34.994385>,  <39.447681, 31.200478, 34.685863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636517, 31.371229, 34.994385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639059, -0.768401, 0.034123,
		0.607235, 0.476798, -0.635554,
		0.472090, 0.426877, 0.771302,
		39.778145, 31.499292, 35.225777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259304, 31.060753, 34.636349>,  <39.447681, 31.200478, 34.685863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259304, 31.060753, 34.636349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137409, 31.135197, 35.009979>,  <40.064274, 31.179863, 35.234158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137409, 31.135197, 35.009979>,  <40.259304, 31.060753, 34.636349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137409, 31.135197, 35.009979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682271, -0.641644, 0.350427,
		0.664563, 0.744081, 0.068554,
		-0.304734, 0.186108, 0.934078,
		40.045990, 31.191029, 35.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663193, 31.467941, 34.957867>,  <40.259304, 31.060753, 34.636349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663193, 31.467941, 34.957867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028980, 31.463093, 35.119656>,  <41.248451, 31.460184, 35.216728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028980, 31.463093, 35.119656>,  <40.663193, 31.467941, 34.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028980, 31.463093, 35.119656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404658, 0.027671, -0.914050,
		-0.000113, 0.999543, 0.030209,
		0.914468, -0.012121, 0.404476,
		41.303322, 31.459455, 35.240997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104702, 32.055996, 34.659039>,  <40.663193, 31.467941, 34.957867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104702, 32.055996, 34.659039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352306, 31.792576, 34.830215>,  <41.500870, 31.634525, 34.932922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352306, 31.792576, 34.830215>,  <41.104702, 32.055996, 34.659039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352306, 31.792576, 34.830215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624176, 0.081790, -0.776991,
		0.476683, 0.748082, 0.461678,
		0.619013, -0.658547, 0.427947,
		41.538010, 31.595013, 34.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717270, 32.270409, 34.362812>,  <41.104702, 32.055996, 34.659039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717270, 32.270409, 34.362812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771336, 32.180965, 34.748917>,  <41.803776, 32.127300, 34.980579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771336, 32.180965, 34.748917>,  <41.717270, 32.270409, 34.362812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771336, 32.180965, 34.748917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963140, -0.199027, -0.180971,
		0.232580, 0.954143, 0.188463,
		0.135162, -0.223607, 0.965262,
		41.811886, 32.113884, 35.038494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280441, 31.959768, 34.742783>,  <41.717270, 32.270409, 34.362812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280441, 31.959768, 34.742783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634743, 32.113720, 34.639004>,  <42.847324, 32.206093, 34.576736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634743, 32.113720, 34.639004>,  <42.280441, 31.959768, 34.742783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634743, 32.113720, 34.639004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059179, 0.648042, 0.759302,
		0.460375, -0.657198, 0.596780,
		0.885750, 0.384880, -0.259450,
		42.900467, 32.229183, 34.561169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896305, 31.917448, 35.268303>,  <42.280441, 31.959768, 34.742783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896305, 31.917448, 35.268303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964024, 32.231453, 35.029945>,  <43.004654, 32.419857, 34.886929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964024, 32.231453, 35.029945>,  <42.896305, 31.917448, 35.268303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964024, 32.231453, 35.029945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121165, 0.616616, 0.777885,
		0.978089, -0.059489, 0.199505,
		0.169293, 0.785013, -0.595897,
		43.014812, 32.466957, 34.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324043, 32.347652, 35.636902>,  <42.896305, 31.917448, 35.268303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324043, 32.347652, 35.636902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154198, 32.579159, 35.358410>,  <43.052292, 32.718063, 35.191315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154198, 32.579159, 35.358410>,  <43.324043, 32.347652, 35.636902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154198, 32.579159, 35.358410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005840, 0.770731, 0.637134,
		0.905357, 0.266469, -0.330642,
		-0.424612, 0.578764, -0.696230,
		43.026814, 32.752789, 35.149540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687237, 32.980354, 35.726757>,  <43.324043, 32.347652, 35.636902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687237, 32.980354, 35.726757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362217, 33.073734, 35.513115>,  <43.167206, 33.129761, 35.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362217, 33.073734, 35.513115>,  <43.687237, 32.980354, 35.726757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362217, 33.073734, 35.513115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268839, 0.662924, 0.698754,
		0.517192, 0.711360, -0.475898,
		-0.812550, 0.233450, -0.534101,
		43.118450, 33.143768, 35.352886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597294, 33.736370, 35.703640>,  <43.687237, 32.980354, 35.726757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597294, 33.736370, 35.703640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229588, 33.589432, 35.647057>,  <43.008965, 33.501270, 35.613106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229588, 33.589432, 35.647057>,  <43.597294, 33.736370, 35.703640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229588, 33.589432, 35.647057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334292, 0.538787, 0.773277,
		-0.207842, 0.758135, -0.618088,
		-0.919266, -0.367341, -0.141456,
		42.953808, 33.479229, 35.604618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163876, 34.358051, 35.719791>,  <43.597294, 33.736370, 35.703640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163876, 34.358051, 35.719791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887390, 34.077415, 35.789062>,  <42.721497, 33.909035, 35.830624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887390, 34.077415, 35.789062>,  <43.163876, 34.358051, 35.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887390, 34.077415, 35.789062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342246, 0.528886, 0.776626,
		-0.636464, 0.477548, -0.605691,
		-0.691217, -0.701590, 0.173178,
		42.680023, 33.866940, 35.841015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527802, 34.675514, 36.002087>,  <43.163876, 34.358051, 35.719791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527802, 34.675514, 36.002087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458076, 34.295197, 36.104538>,  <42.416241, 34.067005, 36.166008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458076, 34.295197, 36.104538>,  <42.527802, 34.675514, 36.002087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458076, 34.295197, 36.104538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370881, 0.304352, 0.877392,
		-0.912174, 0.057946, -0.405685,
		-0.174312, -0.950795, 0.256131,
		42.405785, 34.009956, 36.181377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744915, 34.527611, 36.194565>,  <42.527802, 34.675514, 36.002087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744915, 34.527611, 36.194565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015915, 34.292500, 36.371433>,  <42.178513, 34.151432, 36.477554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015915, 34.292500, 36.371433>,  <41.744915, 34.527611, 36.194565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015915, 34.292500, 36.371433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301829, 0.326046, 0.895876,
		-0.670744, -0.740413, 0.043487,
		0.677496, -0.587778, 0.442171,
		42.219166, 34.116165, 36.504086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405251, 34.326347, 36.746540>,  <41.744915, 34.527611, 36.194565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405251, 34.326347, 36.746540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778854, 34.229061, 36.851208>,  <42.003017, 34.170689, 36.914009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778854, 34.229061, 36.851208>,  <41.405251, 34.326347, 36.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778854, 34.229061, 36.851208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192759, 0.273582, 0.942336,
		-0.300775, -0.930592, 0.208647,
		0.934012, -0.243213, 0.261666,
		42.059059, 34.156097, 36.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368046, 33.937485, 37.495968>,  <41.405251, 34.326347, 36.746540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368046, 33.937485, 37.495968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735775, 34.085548, 37.442558>,  <41.956413, 34.174389, 37.410511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735775, 34.085548, 37.442558>,  <41.368046, 33.937485, 37.495968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735775, 34.085548, 37.442558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044796, 0.435554, 0.899047,
		0.390946, -0.820534, 0.416996,
		0.919323, 0.370158, -0.133522,
		42.011570, 34.196598, 37.402500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631390, 33.903118, 38.097908>,  <41.368046, 33.937485, 37.495968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631390, 33.903118, 38.097908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900166, 34.157993, 37.946918>,  <42.061432, 34.310917, 37.856323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900166, 34.157993, 37.946918>,  <41.631390, 33.903118, 38.097908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900166, 34.157993, 37.946918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037639, 0.479649, 0.876653,
		0.739645, -0.603269, 0.298315,
		0.671944, 0.637184, -0.377476,
		42.101749, 34.349148, 37.833675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169701, 33.988110, 38.722969>,  <41.631390, 33.903118, 38.097908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169701, 33.988110, 38.722969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204182, 34.295242, 38.469040>,  <42.224869, 34.479523, 38.316681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204182, 34.295242, 38.469040>,  <42.169701, 33.988110, 38.722969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204182, 34.295242, 38.469040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065122, 0.631494, 0.772642,
		0.994147, -0.107946, 0.004435,
		0.086204, 0.767830, -0.634827,
		42.230042, 34.525593, 38.278591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735298, 34.558548, 38.955994>,  <42.169701, 33.988110, 38.722969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735298, 34.558548, 38.955994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489967, 34.751781, 38.706047>,  <42.342770, 34.867722, 38.556080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489967, 34.751781, 38.706047>,  <42.735298, 34.558548, 38.955994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489967, 34.751781, 38.706047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042526, 0.810189, 0.584624,
		0.788681, 0.331995, -0.517457,
		-0.613330, 0.483088, -0.624862,
		42.305969, 34.896709, 38.518589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054981, 35.197765, 38.693546>,  <42.735298, 34.558548, 38.955994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054981, 35.197765, 38.693546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665577, 35.266666, 38.633400>,  <42.431934, 35.308006, 38.597313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665577, 35.266666, 38.633400>,  <43.054981, 35.197765, 38.693546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665577, 35.266666, 38.633400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066576, 0.842670, 0.534299,
		0.218747, 0.510133, -0.831814,
		-0.973508, 0.172255, -0.150368,
		42.373524, 35.318344, 38.588291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926006, 35.979866, 38.612957>,  <43.054981, 35.197765, 38.693546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926006, 35.979866, 38.612957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576324, 35.826691, 38.732368>,  <42.366516, 35.734787, 38.804016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576324, 35.826691, 38.732368>,  <42.926006, 35.979866, 38.612957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576324, 35.826691, 38.732368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061484, 0.697182, 0.714253,
		-0.481642, 0.606051, -0.633027,
		-0.874209, -0.382935, 0.298529,
		42.314060, 35.711811, 38.821926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509193, 36.521061, 38.691872>,  <42.926006, 35.979866, 38.612957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509193, 36.521061, 38.691872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342041, 36.245319, 38.928574>,  <42.241749, 36.079876, 39.070595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342041, 36.245319, 38.928574>,  <42.509193, 36.521061, 38.691872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342041, 36.245319, 38.928574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060295, 0.670958, 0.739040,
		-0.906501, 0.273148, -0.321942,
		-0.417877, -0.689352, 0.591754,
		42.216679, 36.038513, 39.106098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936111, 36.814152, 38.957928>,  <42.509193, 36.521061, 38.691872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936111, 36.814152, 38.957928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904358, 36.507355, 39.212620>,  <41.885307, 36.323277, 39.365437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904358, 36.507355, 39.212620>,  <41.936111, 36.814152, 38.957928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904358, 36.507355, 39.212620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243708, 0.634294, 0.733674,
		-0.966594, -0.096935, -0.237273,
		-0.079382, -0.766991, 0.636729,
		41.880543, 36.277256, 39.403637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266029, 36.869602, 39.282825>,  <41.936111, 36.814152, 38.957928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266029, 36.869602, 39.282825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507484, 36.647182, 39.511364>,  <41.652355, 36.513729, 39.648487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507484, 36.647182, 39.511364>,  <41.266029, 36.869602, 39.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507484, 36.647182, 39.511364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242613, 0.554531, 0.796011,
		-0.759451, -0.619114, 0.199828,
		0.603633, -0.556050, 0.571345,
		41.688576, 36.480366, 39.682766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812595, 36.643265, 39.853939>,  <41.266029, 36.869602, 39.282825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812595, 36.643265, 39.853939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188709, 36.612415, 39.986553>,  <41.414379, 36.593906, 40.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188709, 36.612415, 39.986553>,  <40.812595, 36.643265, 39.853939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188709, 36.612415, 39.986553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236428, 0.552720, 0.799126,
		-0.244876, -0.829791, 0.501481,
		0.940286, -0.077123, 0.331533,
		41.470795, 36.589279, 40.086014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832745, 36.500065, 40.590366>,  <40.812595, 36.643265, 39.853939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832745, 36.500065, 40.590366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167267, 36.698196, 40.496357>,  <41.367981, 36.817078, 40.439949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167267, 36.698196, 40.496357>,  <40.832745, 36.500065, 40.590366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167267, 36.698196, 40.496357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216564, 0.692265, 0.688381,
		0.503677, -0.524800, 0.686218,
		0.836307, 0.495332, -0.235025,
		41.418159, 36.846794, 40.425850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958897, 36.798862, 41.234829>,  <40.832745, 36.500065, 40.590366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958897, 36.798862, 41.234829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214287, 37.027493, 41.028664>,  <41.367519, 37.164669, 40.904964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214287, 37.027493, 41.028664>,  <40.958897, 36.798862, 41.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214287, 37.027493, 41.028664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190317, 0.531635, 0.825314,
		0.745742, -0.625034, 0.230655,
		0.638474, 0.571574, -0.515417,
		41.405830, 37.198963, 40.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440029, 36.998001, 41.787495>,  <40.958897, 36.798862, 41.234829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440029, 36.998001, 41.787495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499847, 37.211361, 41.454479>,  <41.535740, 37.339378, 41.254669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499847, 37.211361, 41.454479>,  <41.440029, 36.998001, 41.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499847, 37.211361, 41.454479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068008, 0.834461, 0.546854,
		0.986413, -0.138400, 0.088517,
		0.149548, 0.533404, -0.832536,
		41.544712, 37.371384, 41.204720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002953, 37.398735, 41.869583>,  <41.440029, 36.998001, 41.787495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002953, 37.398735, 41.869583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752567, 37.566235, 41.606426>,  <41.602337, 37.666737, 41.448532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752567, 37.566235, 41.606426>,  <42.002953, 37.398735, 41.869583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752567, 37.566235, 41.606426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071688, 0.870934, 0.486144,
		0.776554, 0.257144, -0.575188,
		-0.625959, 0.418751, -0.657893,
		41.564781, 37.691860, 41.409058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325432, 37.841267, 41.292187>,  <42.002953, 37.398735, 41.869583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325432, 37.841267, 41.292187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962570, 37.966568, 41.404568>,  <41.744854, 38.041748, 41.471996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962570, 37.966568, 41.404568>,  <42.325432, 37.841267, 41.292187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962570, 37.966568, 41.404568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398902, 0.852742, 0.337207,
		-0.133949, 0.417973, -0.898530,
		-0.907157, 0.313257, 0.280954,
		41.690422, 38.060547, 41.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170280, 38.334389, 40.825691>,  <42.325432, 37.841267, 41.292187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170280, 38.334389, 40.825691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094479, 38.328178, 41.218395>,  <42.048996, 38.324451, 41.454018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094479, 38.328178, 41.218395>,  <42.170280, 38.334389, 40.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094479, 38.328178, 41.218395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407078, 0.908652, 0.092943,
		-0.893519, 0.417265, -0.165874,
		-0.189504, -0.015522, 0.981757,
		42.037628, 38.323521, 41.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346405, 39.008263, 40.913517>,  <42.170280, 38.334389, 40.825691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346405, 39.008263, 40.913517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277515, 38.876934, 41.285011>,  <42.236183, 38.798138, 41.507908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277515, 38.876934, 41.285011>,  <42.346405, 39.008263, 40.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277515, 38.876934, 41.285011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524633, 0.767408, 0.368572,
		-0.833727, 0.550720, 0.040084,
		-0.172219, -0.328318, 0.928735,
		42.225849, 38.778439, 41.563633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023846, 39.695126, 40.886497>,  <42.346405, 39.008263, 40.913517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023846, 39.695126, 40.886497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331234, 39.933834, 40.794132>,  <42.515667, 40.077061, 40.738712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331234, 39.933834, 40.794132>,  <42.023846, 39.695126, 40.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331234, 39.933834, 40.794132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031094, -0.395263, -0.918041,
		-0.639134, 0.698304, -0.322302,
		0.768466, 0.596773, -0.230913,
		42.561775, 40.112865, 40.724857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856911, 40.056595, 40.307072>,  <42.023846, 39.695126, 40.886497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856911, 40.056595, 40.307072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256725, 40.046131, 40.300804>,  <42.496613, 40.039852, 40.297043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256725, 40.046131, 40.300804>,  <41.856911, 40.056595, 40.307072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256725, 40.046131, 40.300804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023526, -0.334750, -0.942013,
		0.019402, 0.941944, -0.335210,
		0.999535, -0.026163, -0.015665,
		42.556587, 40.038280, 40.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046009, 40.424347, 39.745903>,  <41.856911, 40.056595, 40.307072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046009, 40.424347, 39.745903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302441, 40.129829, 39.832512>,  <42.456299, 39.953117, 39.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302441, 40.129829, 39.832512>,  <42.046009, 40.424347, 39.745903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302441, 40.129829, 39.832512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014382, -0.270544, -0.962600,
		0.767338, 0.620219, -0.162852,
		0.641081, -0.736298, 0.216519,
		42.494766, 39.908939, 39.897469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414455, 40.277733, 39.118313>,  <42.046009, 40.424347, 39.745903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414455, 40.277733, 39.118313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539330, 39.964741, 39.333820>,  <42.614254, 39.776947, 39.463123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539330, 39.964741, 39.333820>,  <42.414455, 40.277733, 39.118313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539330, 39.964741, 39.333820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367817, -0.423326, -0.827953,
		0.875928, 0.456643, 0.155652,
		0.312187, -0.782478, 0.538764,
		42.632984, 39.729996, 39.495449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220703, 40.117851, 38.982540>,  <42.414455, 40.277733, 39.118313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220703, 40.117851, 38.982540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990738, 39.812622, 39.100662>,  <42.852760, 39.629486, 39.171535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990738, 39.812622, 39.100662>,  <43.220703, 40.117851, 38.982540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990738, 39.812622, 39.100662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361030, -0.560454, -0.745351,
		0.734258, -0.321897, 0.597702,
		-0.574911, -0.763068, 0.295303,
		42.818264, 39.583702, 39.189255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661045, 39.567749, 38.975185>,  <43.220703, 40.117851, 38.982540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661045, 39.567749, 38.975185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305290, 39.385799, 38.956936>,  <43.091839, 39.276630, 38.945984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305290, 39.385799, 38.956936>,  <43.661045, 39.567749, 38.975185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305290, 39.385799, 38.956936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391551, -0.706435, -0.589608,
		0.235966, -0.542254, 0.806400,
		-0.889386, -0.454874, -0.045626,
		43.038475, 39.249336, 38.943249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846172, 38.837872, 39.141590>,  <43.661045, 39.567749, 38.975185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846172, 38.837872, 39.141590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489368, 38.836689, 38.960789>,  <43.275284, 38.835979, 38.852306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489368, 38.836689, 38.960789>,  <43.846172, 38.837872, 39.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489368, 38.836689, 38.960789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277942, -0.792175, -0.543330,
		-0.356459, -0.610287, 0.707451,
		-0.892012, -0.002956, -0.452003,
		43.221764, 38.835804, 38.825188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665710, 38.115005, 39.025505>,  <43.846172, 38.837872, 39.141590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665710, 38.115005, 39.025505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442860, 38.339478, 38.780659>,  <43.309151, 38.474163, 38.633751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442860, 38.339478, 38.780659>,  <43.665710, 38.115005, 39.025505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442860, 38.339478, 38.780659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140883, -0.790294, -0.596312,
		-0.818396, -0.245979, 0.519348,
		-0.557118, 0.561186, -0.612119,
		43.275723, 38.507832, 38.597023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086208, 37.611813, 38.798817>,  <43.665710, 38.115005, 39.025505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086208, 37.611813, 38.798817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135754, 37.918945, 38.547390>,  <43.165482, 38.103226, 38.396534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135754, 37.918945, 38.547390>,  <43.086208, 37.611813, 38.798817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135754, 37.918945, 38.547390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043339, -0.628653, -0.776478,
		-0.991353, 0.123419, -0.044590,
		0.123863, 0.767830, -0.628565,
		43.172913, 38.149296, 38.358822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655830, 37.452984, 38.235966>,  <43.086208, 37.611813, 38.798817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655830, 37.452984, 38.235966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931030, 37.712574, 38.106052>,  <43.096149, 37.868328, 38.028107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931030, 37.712574, 38.106052>,  <42.655830, 37.452984, 38.235966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931030, 37.712574, 38.106052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149107, -0.564399, -0.811924,
		-0.710228, 0.510176, -0.485074,
		0.687999, 0.648979, -0.324781,
		43.137428, 37.907269, 38.008617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388531, 37.638359, 37.603912>,  <42.655830, 37.452984, 38.235966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388531, 37.638359, 37.603912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778965, 37.724655, 37.614620>,  <43.013226, 37.776432, 37.621044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778965, 37.724655, 37.614620>,  <42.388531, 37.638359, 37.603912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778965, 37.724655, 37.614620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127381, -0.467793, -0.874611,
		-0.176166, 0.857103, -0.484086,
		0.976084, 0.215740, 0.026769,
		43.071789, 37.789375, 37.622650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569664, 37.728180, 36.927383>,  <42.388531, 37.638359, 37.603912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569664, 37.728180, 36.927383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922863, 37.683651, 37.109779>,  <43.134781, 37.656933, 37.219215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922863, 37.683651, 37.109779>,  <42.569664, 37.728180, 36.927383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922863, 37.683651, 37.109779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344298, -0.506666, -0.790410,
		0.319027, 0.854925, -0.409055,
		0.882995, -0.111325, 0.455989,
		43.187763, 37.650253, 37.246574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071514, 38.030151, 36.490433>,  <42.569664, 37.728180, 36.927383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071514, 38.030151, 36.490433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250641, 37.760990, 36.725945>,  <43.358116, 37.599491, 36.867252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250641, 37.760990, 36.725945>,  <43.071514, 38.030151, 36.490433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250641, 37.760990, 36.725945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272056, -0.524730, -0.806625,
		0.851733, 0.521399, -0.051913,
		0.447813, -0.672906, 0.588779,
		43.384983, 37.559120, 36.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700256, 37.992737, 36.199062>,  <43.071514, 38.030151, 36.490433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700256, 37.992737, 36.199062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728859, 37.659542, 36.418526>,  <43.746021, 37.459625, 36.550205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728859, 37.659542, 36.418526>,  <43.700256, 37.992737, 36.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728859, 37.659542, 36.418526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371221, -0.488327, -0.789767,
		0.925787, 0.260148, 0.274301,
		0.071508, -0.832982, 0.548659,
		43.750313, 37.409649, 36.583122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352497, 37.650249, 36.047779>,  <43.700256, 37.992737, 36.199062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352497, 37.650249, 36.047779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125076, 37.361153, 36.204952>,  <43.988625, 37.187695, 36.299255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125076, 37.361153, 36.204952>,  <44.352497, 37.650249, 36.047779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125076, 37.361153, 36.204952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430760, -0.668478, -0.606286,
		0.700855, -0.175443, 0.691391,
		-0.568549, -0.722742, 0.392933,
		43.954514, 37.144329, 36.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817562, 37.139969, 36.212448>,  <44.352497, 37.650249, 36.047779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817562, 37.139969, 36.212448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455364, 36.972412, 36.185276>,  <44.238045, 36.871876, 36.168972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455364, 36.972412, 36.185276>,  <44.817562, 37.139969, 36.212448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455364, 36.972412, 36.185276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377868, -0.723021, -0.578322,
		0.193139, -0.549334, 0.812976,
		-0.905491, -0.418894, -0.067932,
		44.183716, 36.846745, 36.164898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878750, 36.335178, 36.365128>,  <44.817562, 37.139969, 36.212448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878750, 36.335178, 36.365128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520855, 36.377548, 36.191586>,  <44.306118, 36.402969, 36.087460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520855, 36.377548, 36.191586>,  <44.878750, 36.335178, 36.365128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520855, 36.377548, 36.191586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080432, -0.917361, -0.389846,
		-0.439295, -0.383704, 0.812275,
		-0.894735, 0.105924, -0.433854,
		44.252434, 36.409325, 36.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495098, 35.738480, 36.523552>,  <44.878750, 36.335178, 36.365128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495098, 35.738480, 36.523552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352211, 35.891109, 36.182541>,  <44.266479, 35.982685, 35.977936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352211, 35.891109, 36.182541>,  <44.495098, 35.738480, 36.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352211, 35.891109, 36.182541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205935, -0.858110, -0.470360,
		-0.911036, -0.343585, 0.227953,
		-0.357217, 0.381571, -0.852525,
		44.245045, 36.005581, 35.926785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139935, 35.213486, 36.146523>,  <44.495098, 35.738480, 36.523552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139935, 35.213486, 36.146523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184189, 35.472099, 35.844593>,  <44.210743, 35.627266, 35.663437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184189, 35.472099, 35.844593>,  <44.139935, 35.213486, 36.146523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184189, 35.472099, 35.844593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168548, -0.760687, -0.626854,
		-0.979465, -0.057871, -0.193132,
		0.110636, 0.646534, -0.754820,
		44.217381, 35.666058, 35.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717777, 34.939747, 35.621723>,  <44.139935, 35.213486, 36.146523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717777, 34.939747, 35.621723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985058, 35.174831, 35.439247>,  <44.145424, 35.315884, 35.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985058, 35.174831, 35.439247>,  <43.717777, 34.939747, 35.621723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985058, 35.174831, 35.439247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282615, -0.767716, -0.575102,
		-0.688216, 0.255357, -0.679082,
		0.668198, 0.587713, -0.456186,
		44.185516, 35.351147, 35.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645390, 34.792850, 34.879826>,  <43.717777, 34.939747, 35.621723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645390, 34.792850, 34.879826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995010, 34.982349, 34.922901>,  <44.204784, 35.096046, 34.948746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995010, 34.982349, 34.922901>,  <43.645390, 34.792850, 34.879826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995010, 34.982349, 34.922901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430387, -0.652220, -0.624000,
		-0.225380, 0.591757, -0.773969,
		0.874054, 0.473743, 0.107687,
		44.257225, 35.124474, 34.955208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894123, 34.805805, 34.258564>,  <43.645390, 34.792850, 34.879826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894123, 34.805805, 34.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205490, 34.855072, 34.504784>,  <44.392311, 34.884632, 34.652515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205490, 34.855072, 34.504784>,  <43.894123, 34.805805, 34.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205490, 34.855072, 34.504784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486625, -0.737847, -0.467737,
		0.396569, 0.663634, -0.634289,
		0.778415, 0.123170, 0.615548,
		44.439014, 34.892025, 34.689449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465153, 34.972332, 33.906471>,  <43.894123, 34.805805, 34.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465153, 34.972332, 33.906471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610317, 34.834972, 34.252968>,  <44.697418, 34.752556, 34.460865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610317, 34.834972, 34.252968>,  <44.465153, 34.972332, 33.906471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610317, 34.834972, 34.252968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642140, -0.581477, -0.499541,
		0.675240, 0.737537, 0.009485,
		0.362915, -0.343401, 0.866238,
		44.719193, 34.731953, 34.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193920, 34.857624, 33.761700>,  <44.465153, 34.972332, 33.906471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193920, 34.857624, 33.761700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119068, 34.658401, 34.100384>,  <45.074158, 34.538868, 34.303596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119068, 34.658401, 34.100384>,  <45.193920, 34.857624, 33.761700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119068, 34.658401, 34.100384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711601, -0.662934, -0.232686,
		0.677206, 0.558980, 0.478471,
		-0.187128, -0.498057, 0.846713,
		45.062931, 34.508984, 34.354397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846302, 34.664639, 34.039040>,  <45.193920, 34.857624, 33.761700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846302, 34.664639, 34.039040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552326, 34.419472, 34.155113>,  <45.375942, 34.272373, 34.224758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552326, 34.419472, 34.155113>,  <45.846302, 34.664639, 34.039040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552326, 34.419472, 34.155113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589776, -0.788908, -0.172593,
		0.334713, 0.044299, 0.941278,
		-0.734936, -0.612912, 0.290185,
		45.331844, 34.235600, 34.242168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536842, 34.977337, 33.838604>,  <45.846302, 34.664639, 34.039040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536842, 34.977337, 33.838604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501171, 34.794270, 34.192459>,  <46.479771, 34.684429, 34.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501171, 34.794270, 34.192459>,  <46.536842, 34.977337, 33.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501171, 34.794270, 34.192459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980095, -0.198489, -0.003890,
		0.177372, 0.866686, 0.466257,
		-0.089176, -0.457666, 0.884641,
		46.474419, 34.656971, 34.457851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856228, 35.332790, 34.363338>,  <46.536842, 34.977337, 33.838604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856228, 35.332790, 34.363338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877491, 34.934265, 34.390259>,  <46.890247, 34.695148, 34.406410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877491, 34.934265, 34.390259>,  <46.856228, 35.332790, 34.363338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877491, 34.934265, 34.390259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982672, 0.040206, -0.180938,
		0.177566, 0.075753, 0.981189,
		0.053156, -0.996316, 0.067301,
		46.893436, 34.635372, 34.410450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219219, 35.196331, 35.037220>,  <46.856228, 35.332790, 34.363338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219219, 35.196331, 35.037220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264751, 34.900051, 34.772373>,  <47.292072, 34.722282, 34.613464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264751, 34.900051, 34.772373>,  <47.219219, 35.196331, 35.037220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264751, 34.900051, 34.772373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993324, 0.097399, 0.061815,
		0.018704, -0.664736, 0.746845,
		0.113832, -0.740702, -0.662119,
		47.298901, 34.677841, 34.573738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784286, 34.887775, 35.414104>,  <47.219219, 35.196331, 35.037220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784286, 34.887775, 35.414104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758698, 34.897060, 35.015030>,  <47.743343, 34.902630, 34.775585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758698, 34.897060, 35.015030>,  <47.784286, 34.887775, 35.414104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758698, 34.897060, 35.015030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960324, 0.273366, -0.055215,
		0.271451, -0.961630, -0.039774,
		-0.063970, 0.023207, -0.997682,
		47.739506, 34.904022, 34.715725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.400885, 34.277729, 43.596283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.088800, 34.118317, 43.403435>,  <30.901550, 34.022671, 43.287724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.088800, 34.118317, 43.403435>,  <31.400885, 34.277729, 43.596283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088800, 34.118317, 43.403435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409823, 0.256613, -0.875326,
		0.472560, -0.880526, -0.036888,
		-0.780213, -0.398527, -0.482125,
		30.854736, 33.998760, 43.258797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725481, 34.017166, 42.963387>,  <31.400885, 34.277729, 43.596283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725481, 34.017166, 42.963387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.333460, 34.010715, 42.884155>,  <31.098248, 34.006844, 42.836617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.333460, 34.010715, 42.884155>,  <31.725481, 34.017166, 42.963387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333460, 34.010715, 42.884155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198452, -0.026570, -0.979750,
		0.010543, -0.999517, 0.029241,
		-0.980054, -0.016133, -0.198076,
		31.039444, 34.005878, 42.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597099, 33.458797, 42.602787>,  <31.725481, 34.017166, 42.963387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597099, 33.458797, 42.602787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.300489, 33.710564, 42.509857>,  <31.122522, 33.861622, 42.454098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.300489, 33.710564, 42.509857>,  <31.597099, 33.458797, 42.602787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300489, 33.710564, 42.509857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254527, -0.056482, -0.965415,
		-0.620770, -0.775013, -0.118320,
		-0.741526, 0.629416, -0.232324,
		31.078032, 33.899387, 42.440159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259628, 33.091145, 42.137115>,  <31.597099, 33.458797, 42.602787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259628, 33.091145, 42.137115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.163668, 33.474945, 42.078049>,  <31.106092, 33.705227, 42.042606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.163668, 33.474945, 42.078049>,  <31.259628, 33.091145, 42.137115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163668, 33.474945, 42.078049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181108, -0.105206, -0.977820,
		-0.953755, -0.261322, -0.148535,
		-0.239899, 0.959501, -0.147669,
		31.091698, 33.762794, 42.033749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875050, 33.068790, 41.454281>,  <31.259628, 33.091145, 42.137115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875050, 33.068790, 41.454281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.990805, 33.450161, 41.488304>,  <31.060257, 33.678982, 41.508717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.990805, 33.450161, 41.488304>,  <30.875050, 33.068790, 41.454281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990805, 33.450161, 41.488304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084431, 0.063091, -0.994430,
		-0.953481, 0.294956, -0.062241,
		0.289387, 0.953426, 0.085059,
		31.077621, 33.736187, 41.513821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683746, 33.308346, 40.863651>,  <30.875050, 33.068790, 41.454281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683746, 33.308346, 40.863651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930565, 33.595089, 40.993492>,  <31.078655, 33.767136, 41.071396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.930565, 33.595089, 40.993492>,  <30.683746, 33.308346, 40.863651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930565, 33.595089, 40.993492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143705, 0.302910, -0.942122,
		-0.773695, 0.627979, 0.083893,
		0.617045, 0.716860, 0.324603,
		31.115679, 33.810146, 41.090874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525736, 33.899242, 40.338051>,  <30.683746, 33.308346, 40.863651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525736, 33.899242, 40.338051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.884474, 33.929546, 40.512375>,  <31.099716, 33.947727, 40.616970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.884474, 33.929546, 40.512375>,  <30.525736, 33.899242, 40.338051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884474, 33.929546, 40.512375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420482, 0.159910, -0.893098,
		-0.137347, 0.984221, 0.111561,
		0.896845, 0.075755, 0.435810,
		31.153528, 33.952274, 40.643116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794579, 34.564667, 40.110260>,  <30.525736, 33.899242, 40.338051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794579, 34.564667, 40.110260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119083, 34.372875, 40.244099>,  <31.313787, 34.257801, 40.324402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119083, 34.372875, 40.244099>,  <30.794579, 34.564667, 40.110260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119083, 34.372875, 40.244099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473887, 0.204026, -0.856624,
		0.342466, 0.853507, 0.392737,
		0.811263, -0.479477, 0.334594,
		31.362463, 34.229031, 40.344479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426199, 34.939152, 39.910473>,  <30.794579, 34.564667, 40.110260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426199, 34.939152, 39.910473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.580462, 34.576042, 39.976463>,  <31.673019, 34.358177, 40.016056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.580462, 34.576042, 39.976463>,  <31.426199, 34.939152, 39.910473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580462, 34.576042, 39.976463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477637, 0.043448, -0.877482,
		0.789387, 0.417206, 0.450342,
		0.385657, -0.907773, 0.164976,
		31.696159, 34.303711, 40.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078167, 35.056355, 39.765759>,  <31.426199, 34.939152, 39.910473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078167, 35.056355, 39.765759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067055, 34.656574, 39.758621>,  <32.060387, 34.416706, 39.754337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.067055, 34.656574, 39.758621>,  <32.078167, 35.056355, 39.765759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067055, 34.656574, 39.758621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653711, -0.004658, -0.756729,
		0.756234, -0.032690, 0.653485,
		-0.027781, -0.999455, -0.017847,
		32.058720, 34.356739, 39.753265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719044, 34.887383, 39.719719>,  <32.078167, 35.056355, 39.765759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719044, 34.887383, 39.719719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.507793, 34.572140, 39.593243>,  <32.381042, 34.382996, 39.517357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.507793, 34.572140, 39.593243>,  <32.719044, 34.887383, 39.719719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507793, 34.572140, 39.593243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562842, -0.046065, -0.825280,
		0.635841, -0.613816, 0.467906,
		-0.528125, -0.788104, -0.316191,
		32.349358, 34.335709, 39.498386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187973, 34.362289, 39.610344>,  <32.719044, 34.887383, 39.719719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187973, 34.362289, 39.610344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.868507, 34.263035, 39.391045>,  <32.676830, 34.203484, 39.259464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.868507, 34.263035, 39.391045>,  <33.187973, 34.362289, 39.610344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868507, 34.263035, 39.391045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588496, -0.131659, -0.797709,
		0.125759, -0.959737, 0.251177,
		-0.798660, -0.248136, -0.548244,
		32.628910, 34.188595, 39.226570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418617, 33.884655, 39.176918>,  <33.187973, 34.362289, 39.610344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418617, 33.884655, 39.176918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082863, 33.977295, 38.980232>,  <32.881409, 34.032879, 38.862221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082863, 33.977295, 38.980232>,  <33.418617, 33.884655, 39.176918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082863, 33.977295, 38.980232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473561, -0.132400, -0.870753,
		-0.266766, -0.963760, 0.001461,
		-0.839391, 0.231596, -0.491719,
		32.831047, 34.046772, 38.832718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338062, 33.369106, 38.688335>,  <33.418617, 33.884655, 39.176918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338062, 33.369106, 38.688335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112358, 33.668472, 38.548916>,  <32.976936, 33.848091, 38.465263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112358, 33.668472, 38.548916>,  <33.338062, 33.369106, 38.688335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112358, 33.668472, 38.548916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489426, -0.036766, -0.871269,
		-0.664885, -0.662213, -0.345548,
		-0.564261, 0.748414, -0.348549,
		32.943081, 33.892998, 38.444351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014072, 33.200729, 38.009991>,  <33.338062, 33.369106, 38.688335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014072, 33.200729, 38.009991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022469, 33.599529, 38.039783>,  <33.027508, 33.838810, 38.057659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022469, 33.599529, 38.039783>,  <33.014072, 33.200729, 38.009991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022469, 33.599529, 38.039783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249992, 0.066900, -0.965934,
		-0.968020, 0.038895, -0.247838,
		0.020990, 0.997001, 0.074484,
		33.028767, 33.898628, 38.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622028, 33.382801, 37.430534>,  <33.014072, 33.200729, 38.009991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622028, 33.382801, 37.430534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856972, 33.683384, 37.550743>,  <32.997940, 33.863735, 37.622868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856972, 33.683384, 37.550743>,  <32.622028, 33.382801, 37.430534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856972, 33.683384, 37.550743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351052, 0.098011, -0.931212,
		-0.729224, 0.652457, -0.206234,
		0.587363, 0.751461, 0.300518,
		33.033180, 33.908821, 37.640900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479656, 33.934162, 36.928158>,  <32.622028, 33.382801, 37.430534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479656, 33.934162, 36.928158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820328, 34.026112, 37.116543>,  <33.024731, 34.081280, 37.229576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820328, 34.026112, 37.116543>,  <32.479656, 33.934162, 36.928158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820328, 34.026112, 37.116543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433845, 0.194868, -0.879662,
		-0.293986, 0.953512, 0.066235,
		0.851675, 0.229872, 0.470965,
		33.075829, 34.095074, 37.257832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783272, 34.367222, 36.504509>,  <32.479656, 33.934162, 36.928158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783272, 34.367222, 36.504509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077557, 34.256527, 36.751778>,  <33.254128, 34.190109, 36.900139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.077557, 34.256527, 36.751778>,  <32.783272, 34.367222, 36.504509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077557, 34.256527, 36.751778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637822, -0.023931, -0.769812,
		0.227827, 0.960649, 0.158901,
		0.735716, -0.276734, 0.618175,
		33.298271, 34.173508, 36.937229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430534, 34.718147, 36.214664>,  <32.783272, 34.367222, 36.504509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430534, 34.718147, 36.214664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541607, 34.414841, 36.450607>,  <33.608250, 34.232857, 36.592171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541607, 34.414841, 36.450607>,  <33.430534, 34.718147, 36.214664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541607, 34.414841, 36.450607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818282, -0.134988, -0.558743,
		0.503298, 0.637818, 0.582991,
		0.277679, -0.758265, 0.589854,
		33.624912, 34.187363, 36.627563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123455, 34.798042, 36.367859>,  <33.430534, 34.718147, 36.214664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123455, 34.798042, 36.367859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059792, 34.407959, 36.429367>,  <34.021595, 34.173908, 36.466274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.059792, 34.407959, 36.429367>,  <34.123455, 34.798042, 36.367859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059792, 34.407959, 36.429367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719197, -0.221233, -0.658643,
		0.676332, 0.005767, 0.736575,
		-0.159156, -0.975204, 0.153775,
		34.012043, 34.115398, 36.475498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834312, 34.474937, 36.194820>,  <34.123455, 34.798042, 36.367859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834312, 34.474937, 36.194820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578827, 34.167492, 36.209084>,  <34.425533, 33.983025, 36.217640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578827, 34.167492, 36.209084>,  <34.834312, 34.474937, 36.194820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578827, 34.167492, 36.209084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544759, -0.484445, -0.684508,
		0.543397, -0.417783, 0.728133,
		-0.638716, -0.768616, 0.035655,
		34.387211, 33.936909, 36.219780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231609, 33.833519, 36.460255>,  <34.834312, 34.474937, 36.194820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231609, 33.833519, 36.460255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915985, 33.803658, 36.216351>,  <34.726608, 33.785740, 36.070007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915985, 33.803658, 36.216351>,  <35.231609, 33.833519, 36.460255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915985, 33.803658, 36.216351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577716, -0.427649, -0.695241,
		-0.208863, -0.900857, 0.380569,
		-0.789063, -0.074651, -0.609759,
		34.679268, 33.781261, 36.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762936, 33.246418, 36.477448>,  <35.231609, 33.833519, 36.460255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762936, 33.246418, 36.477448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118572, 33.192863, 36.652531>,  <36.331955, 33.160728, 36.757580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118572, 33.192863, 36.652531>,  <35.762936, 33.246418, 36.477448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118572, 33.192863, 36.652531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451763, -0.102738, 0.886203,
		-0.073677, -0.985657, -0.151826,
		0.889091, -0.133882, 0.437714,
		36.385300, 33.152695, 36.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609367, 32.821571, 36.916267>,  <35.762936, 33.246418, 36.477448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609367, 32.821571, 36.916267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937992, 33.001347, 37.056580>,  <36.135166, 33.109211, 37.140766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937992, 33.001347, 37.056580>,  <35.609367, 32.821571, 36.916267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937992, 33.001347, 37.056580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403437, 0.023555, 0.914704,
		0.402842, -0.893000, 0.200673,
		0.821558, 0.449440, 0.350781,
		36.184460, 33.136177, 37.161812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815853, 32.439732, 37.614067>,  <35.609367, 32.821571, 36.916267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815853, 32.439732, 37.614067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982754, 32.803181, 37.621044>,  <36.082893, 33.021252, 37.625229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982754, 32.803181, 37.621044>,  <35.815853, 32.439732, 37.614067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982754, 32.803181, 37.621044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358278, 0.146827, 0.921997,
		0.835187, -0.390954, 0.386804,
		0.417252, 0.908623, 0.017443,
		36.107929, 33.075768, 37.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018024, 32.552158, 38.279045>,  <35.815853, 32.439732, 37.614067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018024, 32.552158, 38.279045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082390, 32.919964, 38.135605>,  <36.121010, 33.140648, 38.049541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082390, 32.919964, 38.135605>,  <36.018024, 32.552158, 38.279045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082390, 32.919964, 38.135605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187164, 0.385176, 0.903664,
		0.969059, -0.078298, 0.234082,
		0.160918, 0.919515, -0.358604,
		36.130665, 33.195820, 38.028023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357899, 32.879032, 38.772911>,  <36.018024, 32.552158, 38.279045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357899, 32.879032, 38.772911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193058, 33.187847, 38.579361>,  <36.094154, 33.373135, 38.463230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193058, 33.187847, 38.579361>,  <36.357899, 32.879032, 38.772911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193058, 33.187847, 38.579361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231675, 0.424822, 0.875130,
		0.881191, 0.472745, 0.003791,
		-0.412103, 0.772035, -0.483873,
		36.069427, 33.419456, 38.434200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560680, 33.461876, 39.106209>,  <36.357899, 32.879032, 38.772911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560680, 33.461876, 39.106209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228085, 33.574368, 38.914570>,  <36.028526, 33.641861, 38.799587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228085, 33.574368, 38.914570>,  <36.560680, 33.461876, 39.106209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228085, 33.574368, 38.914570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395372, 0.306262, 0.865959,
		0.390257, 0.909459, -0.143466,
		-0.831492, 0.281224, -0.479096,
		35.978638, 33.658733, 38.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480179, 34.160698, 39.312469>,  <36.560680, 33.461876, 39.106209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480179, 34.160698, 39.312469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124622, 34.041988, 39.172874>,  <35.911289, 33.970760, 39.089119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124622, 34.041988, 39.172874>,  <36.480179, 34.160698, 39.312469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124622, 34.041988, 39.172874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443085, 0.363440, 0.819504,
		-0.116375, 0.883083, -0.454557,
		-0.888894, -0.296777, -0.348986,
		35.857956, 33.952957, 39.068180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938873, 34.650776, 39.593220>,  <36.480179, 34.160698, 39.312469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938873, 34.650776, 39.593220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724957, 34.322342, 39.513393>,  <35.596607, 34.125282, 39.465496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724957, 34.322342, 39.513393>,  <35.938873, 34.650776, 39.593220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724957, 34.322342, 39.513393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570037, 0.176227, 0.802498,
		-0.623746, 0.542928, -0.562290,
		-0.534789, -0.821081, -0.199568,
		35.564518, 34.076019, 39.453522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224766, 34.800785, 39.723831>,  <35.938873, 34.650776, 39.593220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224766, 34.800785, 39.723831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232746, 34.401325, 39.743046>,  <35.237534, 34.161652, 39.754574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232746, 34.401325, 39.743046>,  <35.224766, 34.800785, 39.723831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232746, 34.401325, 39.743046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658356, 0.023034, 0.752355,
		-0.752443, -0.046632, -0.657005,
		0.019950, -0.998647, 0.048032,
		35.238731, 34.101730, 39.757454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570957, 34.565128, 39.990505>,  <35.224766, 34.800785, 39.723831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570957, 34.565128, 39.990505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776237, 34.227852, 40.054577>,  <34.899406, 34.025486, 40.093021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776237, 34.227852, 40.054577>,  <34.570957, 34.565128, 39.990505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776237, 34.227852, 40.054577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433856, -0.093832, 0.896083,
		-0.740536, -0.529367, -0.413977,
		0.513200, -0.843188, 0.160183,
		34.930199, 33.974895, 40.102631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052750, 34.043434, 40.230690>,  <34.570957, 34.565128, 39.990505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052750, 34.043434, 40.230690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419132, 33.951206, 40.362061>,  <34.638962, 33.895870, 40.440884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419132, 33.951206, 40.362061>,  <34.052750, 34.043434, 40.230690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419132, 33.951206, 40.362061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378299, -0.223133, 0.898388,
		-0.133855, -0.947128, -0.291603,
		0.915955, -0.230567, 0.328430,
		34.693920, 33.882038, 40.460590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948212, 33.375622, 40.619034>,  <34.052750, 34.043434, 40.230690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948212, 33.375622, 40.619034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268379, 33.582226, 40.740719>,  <34.460480, 33.706188, 40.813728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268379, 33.582226, 40.740719>,  <33.948212, 33.375622, 40.619034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268379, 33.582226, 40.740719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332664, -0.039423, 0.942221,
		0.498660, -0.855373, 0.140270,
		0.800420, 0.516511, 0.304211,
		34.508507, 33.737179, 40.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233181, 33.071194, 41.205666>,  <33.948212, 33.375622, 40.619034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233181, 33.071194, 41.205666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416321, 33.424511, 41.246010>,  <34.526203, 33.636501, 41.270214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416321, 33.424511, 41.246010>,  <34.233181, 33.071194, 41.205666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416321, 33.424511, 41.246010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060601, -0.082174, 0.994774,
		0.886964, -0.461565, 0.015906,
		0.457846, 0.883292, 0.100857,
		34.553673, 33.689499, 41.276268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600975, 32.974289, 41.834846>,  <34.233181, 33.071194, 41.205666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600975, 32.974289, 41.834846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538971, 33.363708, 41.767696>,  <34.501766, 33.597359, 41.727406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538971, 33.363708, 41.767696>,  <34.600975, 32.974289, 41.834846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538971, 33.363708, 41.767696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309483, 0.113522, 0.944104,
		0.938185, 0.198304, 0.283698,
		-0.155014, 0.973544, -0.167877,
		34.492466, 33.655773, 41.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875187, 33.376839, 42.450275>,  <34.600975, 32.974289, 41.834846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875187, 33.376839, 42.450275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633350, 33.633919, 42.262058>,  <34.488247, 33.788166, 42.149128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633350, 33.633919, 42.262058>,  <34.875187, 33.376839, 42.450275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633350, 33.633919, 42.262058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255451, 0.403082, 0.878788,
		0.754462, 0.651508, -0.079522,
		-0.604592, 0.642699, -0.470539,
		34.451973, 33.826729, 42.120895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877930, 33.995770, 42.821022>,  <34.875187, 33.376839, 42.450275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877930, 33.995770, 42.821022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550510, 34.048672, 42.597420>,  <34.354057, 34.080414, 42.463261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550510, 34.048672, 42.597420>,  <34.877930, 33.995770, 42.821022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550510, 34.048672, 42.597420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548110, 0.111397, 0.828955,
		0.171909, 0.984936, -0.018691,
		-0.818549, 0.132260, -0.559003,
		34.304947, 34.088348, 42.429718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664169, 34.710693, 43.018269>,  <34.877930, 33.995770, 42.821022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664169, 34.710693, 43.018269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354687, 34.504463, 42.870991>,  <34.168999, 34.380726, 42.782623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.354687, 34.504463, 42.870991>,  <34.664169, 34.710693, 43.018269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354687, 34.504463, 42.870991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564266, 0.296523, 0.770505,
		-0.288075, 0.803901, -0.520342,
		-0.773703, -0.515575, -0.368193,
		34.122578, 34.349792, 42.760532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992760, 35.098507, 43.190128>,  <34.664169, 34.710693, 43.018269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992760, 35.098507, 43.190128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863792, 34.727985, 43.112141>,  <33.786411, 34.505672, 43.065350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863792, 34.727985, 43.112141>,  <33.992760, 35.098507, 43.190128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863792, 34.727985, 43.112141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512761, -0.002228, 0.858529,
		-0.795691, 0.376775, -0.474253,
		-0.322416, -0.926302, -0.194969,
		33.767067, 34.450096, 43.053650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.156891, 35.216648, 43.256367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273788, 34.835430, 43.288105>,  <33.343925, 34.606697, 43.307148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273788, 34.835430, 43.288105>,  <33.156891, 35.216648, 43.256367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273788, 34.835430, 43.288105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604469, -0.119782, 0.787572,
		-0.741089, -0.278125, -0.611092,
		0.292241, -0.953047, 0.079349,
		33.361462, 34.549515, 43.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566444, 34.760704, 43.337116>,  <33.156891, 35.216648, 43.256367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566444, 34.760704, 43.337116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864304, 34.526283, 43.464890>,  <33.043018, 34.385632, 43.541553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864304, 34.526283, 43.464890>,  <32.566444, 34.760704, 43.337116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864304, 34.526283, 43.464890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572491, -0.314755, 0.757089,
		-0.343163, -0.746630, -0.569898,
		0.744643, -0.586066, 0.319427,
		33.087700, 34.350468, 43.560719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269733, 34.126827, 43.454571>,  <32.566444, 34.760704, 43.337116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269733, 34.126827, 43.454571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601212, 34.135075, 43.678299>,  <32.800098, 34.140022, 43.812534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.601212, 34.135075, 43.678299>,  <32.269733, 34.126827, 43.454571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601212, 34.135075, 43.678299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475088, -0.502401, 0.722416,
		0.295894, -0.864389, -0.406545,
		0.828697, 0.020614, 0.559318,
		32.849819, 34.141258, 43.846096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321995, 33.561741, 43.760803>,  <32.269733, 34.126827, 43.454571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321995, 33.561741, 43.760803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.593735, 33.740189, 43.993855>,  <32.756779, 33.847260, 44.133686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.593735, 33.740189, 43.993855>,  <32.321995, 33.561741, 43.760803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593735, 33.740189, 43.993855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394455, -0.447502, 0.802587,
		0.618781, -0.775059, -0.128035,
		0.679349, 0.446122, 0.582632,
		32.797539, 33.874023, 44.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521862, 32.991734, 44.209126>,  <32.321995, 33.561741, 43.760803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521862, 32.991734, 44.209126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633358, 33.338505, 44.374405>,  <32.700256, 33.546570, 44.473572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633358, 33.338505, 44.374405>,  <32.521862, 32.991734, 44.209126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633358, 33.338505, 44.374405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328483, -0.318234, 0.889284,
		0.902442, -0.383608, 0.196068,
		0.278741, 0.866933, 0.413196,
		32.716980, 33.598583, 44.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842537, 32.805668, 44.773079>,  <32.521862, 32.991734, 44.209126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842537, 32.805668, 44.773079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718361, 33.178417, 44.848160>,  <32.643856, 33.402069, 44.893208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718361, 33.178417, 44.848160>,  <32.842537, 32.805668, 44.773079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718361, 33.178417, 44.848160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513908, -0.330638, 0.791566,
		0.799703, 0.149275, 0.581543,
		-0.310441, 0.931877, 0.187698,
		32.625229, 33.457981, 44.904469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100586, 32.904976, 45.369057>,  <32.842537, 32.805668, 44.773079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100586, 32.904976, 45.369057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816429, 33.185902, 45.350731>,  <32.645935, 33.354458, 45.339737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.816429, 33.185902, 45.350731>,  <33.100586, 32.904976, 45.369057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816429, 33.185902, 45.350731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282281, -0.224688, 0.932649,
		0.644722, 0.675475, 0.357866,
		-0.710389, 0.702317, -0.045812,
		32.603313, 33.396595, 45.336987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211472, 33.253178, 45.981129>,  <33.100586, 32.904976, 45.369057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211472, 33.253178, 45.981129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838993, 33.351192, 45.873184>,  <32.615505, 33.410000, 45.808418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838993, 33.351192, 45.873184>,  <33.211472, 33.253178, 45.981129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838993, 33.351192, 45.873184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323094, -0.212101, 0.922292,
		0.168759, 0.946028, 0.276678,
		-0.931199, 0.245038, -0.269862,
		32.559635, 33.424706, 45.792225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002178, 33.683620, 46.477375>,  <33.211472, 33.253178, 45.981129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002178, 33.683620, 46.477375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670078, 33.542976, 46.304379>,  <32.470818, 33.458591, 46.200581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670078, 33.542976, 46.304379>,  <33.002178, 33.683620, 46.477375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670078, 33.542976, 46.304379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417492, -0.121809, 0.900479,
		-0.369299, 0.928188, -0.045661,
		-0.830252, -0.351609, -0.432495,
		32.421001, 33.437492, 46.174629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389263, 34.079124, 46.722534>,  <33.002178, 33.683620, 46.477375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389263, 34.079124, 46.722534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256947, 33.726669, 46.587379>,  <32.177555, 33.515194, 46.506287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256947, 33.726669, 46.587379>,  <32.389263, 34.079124, 46.722534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256947, 33.726669, 46.587379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371038, -0.207776, 0.905074,
		-0.867703, 0.424760, -0.258206,
		-0.330791, -0.881140, -0.337890,
		32.157711, 33.462326, 46.486012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805464, 34.117161, 47.040028>,  <32.389263, 34.079124, 46.722534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805464, 34.117161, 47.040028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867075, 33.740238, 46.921143>,  <31.904041, 33.514084, 46.849812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867075, 33.740238, 46.921143>,  <31.805464, 34.117161, 47.040028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867075, 33.740238, 46.921143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544957, -0.331929, 0.769964,
		-0.824195, 0.043369, -0.564643,
		0.154029, -0.942307, -0.297208,
		31.913284, 33.457546, 46.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256048, 33.794865, 47.268055>,  <31.805464, 34.117161, 47.040028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256048, 33.794865, 47.268055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.470675, 33.470554, 47.174469>,  <31.599451, 33.275967, 47.118317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.470675, 33.470554, 47.174469>,  <31.256048, 33.794865, 47.268055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470675, 33.470554, 47.174469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374219, -0.477120, 0.795183,
		-0.756344, -0.339115, -0.559415,
		0.536566, -0.810776, -0.233964,
		31.631645, 33.227322, 47.104279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831860, 33.172512, 47.262657>,  <31.256048, 33.794865, 47.268055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831860, 33.172512, 47.262657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202139, 33.044857, 47.343880>,  <31.424307, 32.968266, 47.392612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202139, 33.044857, 47.343880>,  <30.831860, 33.172512, 47.262657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202139, 33.044857, 47.343880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331999, -0.428256, 0.840460,
		-0.181261, -0.845428, -0.502390,
		0.925700, -0.319136, 0.203055,
		31.479849, 32.949116, 47.404797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706369, 32.518879, 47.412125>,  <30.831860, 33.172512, 47.262657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706369, 32.518879, 47.412125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066835, 32.594692, 47.568062>,  <31.283115, 32.640179, 47.661625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066835, 32.594692, 47.568062>,  <30.706369, 32.518879, 47.412125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066835, 32.594692, 47.568062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279672, -0.432894, 0.856964,
		0.331182, -0.881295, -0.337103,
		0.901167, 0.189532, 0.389840,
		31.337185, 32.651550, 47.685013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940216, 31.878302, 47.720997>,  <30.706369, 32.518879, 47.412125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940216, 31.878302, 47.720997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175503, 32.155502, 47.887730>,  <31.316675, 32.321823, 47.987770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175503, 32.155502, 47.887730>,  <30.940216, 31.878302, 47.720997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175503, 32.155502, 47.887730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104806, -0.445761, 0.888995,
		0.801883, -0.566609, -0.189574,
		0.588218, 0.693002, 0.416832,
		31.351969, 32.363403, 48.012779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377794, 31.491413, 48.027954>,  <30.940216, 31.878302, 47.720997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377794, 31.491413, 48.027954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398010, 31.844933, 48.214008>,  <31.410139, 32.057045, 48.325642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398010, 31.844933, 48.214008>,  <31.377794, 31.491413, 48.027954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398010, 31.844933, 48.214008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118091, -0.457171, 0.881504,
		0.991716, -0.099478, 0.081263,
		0.050539, 0.883798, 0.465131,
		31.413172, 32.110073, 48.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760159, 31.398432, 48.632896>,  <31.377794, 31.491413, 48.027954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760159, 31.398432, 48.632896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541241, 31.723694, 48.712139>,  <31.409891, 31.918852, 48.759686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.541241, 31.723694, 48.712139>,  <31.760159, 31.398432, 48.632896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541241, 31.723694, 48.712139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161004, -0.334577, 0.928513,
		0.821309, 0.476272, 0.314033,
		-0.547292, 0.813157, 0.198109,
		31.377052, 31.967640, 48.771572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982840, 31.667690, 49.316635>,  <31.760159, 31.398432, 48.632896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982840, 31.667690, 49.316635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624954, 31.839697, 49.268345>,  <31.410223, 31.942902, 49.239368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624954, 31.839697, 49.268345>,  <31.982840, 31.667690, 49.316635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624954, 31.839697, 49.268345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323690, -0.438025, 0.838665,
		0.307757, 0.789443, 0.531098,
		-0.894712, 0.430017, -0.120730,
		31.356541, 31.968702, 49.232124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876442, 32.095970, 49.894283>,  <31.982840, 31.667690, 49.316635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876442, 32.095970, 49.894283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519901, 32.002560, 49.738869>,  <31.305977, 31.946514, 49.645618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519901, 32.002560, 49.738869>,  <31.876442, 32.095970, 49.894283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519901, 32.002560, 49.738869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313790, -0.300713, 0.900615,
		-0.327155, 0.924682, 0.194762,
		-0.891350, -0.233527, -0.388536,
		31.252497, 31.932501, 49.622307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325741, 32.401215, 50.296253>,  <31.876442, 32.095970, 49.894283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325741, 32.401215, 50.296253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131941, 32.116344, 50.093056>,  <31.015661, 31.945421, 49.971138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131941, 32.116344, 50.093056>,  <31.325741, 32.401215, 50.296253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131941, 32.116344, 50.093056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512419, -0.239606, 0.824630,
		-0.709003, 0.659842, -0.248844,
		-0.484501, -0.712178, -0.507997,
		30.986591, 31.902691, 49.940655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516294, 32.376907, 50.496536>,  <31.325741, 32.401215, 50.296253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516294, 32.376907, 50.496536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585581, 32.019035, 50.331829>,  <30.627153, 31.804314, 50.233006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585581, 32.019035, 50.331829>,  <30.516294, 32.376907, 50.496536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585581, 32.019035, 50.331829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322640, -0.446561, 0.834557,
		-0.930537, -0.011708, -0.366010,
		0.173217, -0.894676, -0.411765,
		30.637547, 31.750633, 50.208302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028999, 31.918596, 50.801346>,  <30.516294, 32.376907, 50.496536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028999, 31.918596, 50.801346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249727, 31.645220, 50.610180>,  <30.382164, 31.481194, 50.495480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249727, 31.645220, 50.610180>,  <30.028999, 31.918596, 50.801346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249727, 31.645220, 50.610180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436440, -0.724986, 0.532837,
		-0.710639, -0.085455, -0.698347,
		0.551825, -0.683442, -0.477908,
		30.415274, 31.440187, 50.466805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578693, 32.351887, 51.236446>,  <30.028999, 31.918596, 50.801346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578693, 32.351887, 51.236446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569765, 32.659344, 51.492161>,  <29.564409, 32.843819, 51.645588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569765, 32.659344, 51.492161>,  <29.578693, 32.351887, 51.236446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569765, 32.659344, 51.492161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287939, -0.607408, 0.740369,
		0.957389, 0.200599, -0.207766,
		-0.022319, 0.768645, 0.639286,
		29.563070, 32.889938, 51.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789377, 32.300110, 51.156681>,  <29.578693, 32.351887, 51.236446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789377, 32.300110, 51.156681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489922, 32.046925, 51.077789>,  <28.310249, 31.895014, 51.030457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489922, 32.046925, 51.077789>,  <28.789377, 32.300110, 51.156681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489922, 32.046925, 51.077789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281777, -0.034496, -0.958860,
		0.600119, -0.773413, 0.204179,
		-0.748638, -0.632963, -0.197228,
		28.265329, 31.857035, 51.018620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009653, 31.718580, 50.698639>,  <28.789377, 32.300110, 51.156681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009653, 31.718580, 50.698639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621014, 31.792480, 50.639496>,  <28.387831, 31.836821, 50.604012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621014, 31.792480, 50.639496>,  <29.009653, 31.718580, 50.698639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621014, 31.792480, 50.639496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134654, -0.082145, -0.987482,
		-0.194587, -0.979346, 0.054934,
		-0.971599, 0.184754, -0.147857,
		28.329535, 31.847906, 50.595139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839716, 31.363050, 50.099777>,  <29.009653, 31.718580, 50.698639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839716, 31.363050, 50.099777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568853, 31.656738, 50.119316>,  <28.406336, 31.832951, 50.131039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568853, 31.656738, 50.119316>,  <28.839716, 31.363050, 50.099777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568853, 31.656738, 50.119316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175530, 0.225640, -0.958267,
		-0.714598, -0.640321, -0.281671,
		-0.677155, 0.734217, 0.048847,
		28.365707, 31.877003, 50.133968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384975, 31.226994, 49.528824>,  <28.839716, 31.363050, 50.099777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384975, 31.226994, 49.528824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315287, 31.615316, 49.594772>,  <28.273474, 31.848310, 49.634342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.315287, 31.615316, 49.594772>,  <28.384975, 31.226994, 49.528824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315287, 31.615316, 49.594772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293417, 0.108640, -0.949792,
		-0.939975, -0.213851, 0.265923,
		-0.174224, 0.970806, 0.164866,
		28.263020, 31.906559, 49.644234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930677, 31.310163, 49.057247>,  <28.384975, 31.226994, 49.528824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930677, 31.310163, 49.057247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024096, 31.685463, 49.159344>,  <28.080147, 31.910643, 49.220600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024096, 31.685463, 49.159344>,  <27.930677, 31.310163, 49.057247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024096, 31.685463, 49.159344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069743, 0.245656, -0.966845,
		-0.969842, 0.243601, -0.008065,
		0.233543, 0.938249, 0.255237,
		28.094158, 31.966938, 49.235916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386196, 31.814617, 48.775135>,  <27.930677, 31.310163, 49.057247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386196, 31.814617, 48.775135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.745852, 31.984781, 48.816261>,  <27.961645, 32.086880, 48.840939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.745852, 31.984781, 48.816261>,  <27.386196, 31.814617, 48.775135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745852, 31.984781, 48.816261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025131, 0.184358, -0.982538,
		-0.436938, 0.886023, 0.155073,
		0.899140, 0.425411, 0.102820,
		28.015594, 32.112404, 48.847107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529608, 31.953384, 48.144127>,  <27.386196, 31.814617, 48.775135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529608, 31.953384, 48.144127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.870804, 32.100620, 48.292141>,  <28.075521, 32.188961, 48.380947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.870804, 32.100620, 48.292141>,  <27.529608, 31.953384, 48.144127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870804, 32.100620, 48.292141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378204, 0.052669, -0.924223,
		-0.359685, 0.928298, -0.094286,
		0.852988, 0.368088, 0.370031,
		28.126699, 32.211048, 48.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614923, 32.536419, 47.784737>,  <27.529608, 31.953384, 48.144127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614923, 32.536419, 47.784737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977896, 32.438591, 47.921413>,  <28.195679, 32.379894, 48.003418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977896, 32.438591, 47.921413>,  <27.614923, 32.536419, 47.784737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977896, 32.438591, 47.921413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388053, 0.175817, -0.904711,
		0.161190, 0.953559, 0.254448,
		0.907432, -0.244570, 0.341692,
		28.250126, 32.365219, 48.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128721, 32.979679, 47.480923>,  <27.614923, 32.536419, 47.784737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128721, 32.979679, 47.480923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337303, 32.652836, 47.579243>,  <28.462452, 32.456730, 47.638237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337303, 32.652836, 47.579243>,  <28.128721, 32.979679, 47.480923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337303, 32.652836, 47.579243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476246, 0.039679, -0.878416,
		0.708008, 0.575117, 0.409836,
		0.521454, -0.817108, 0.245804,
		28.493740, 32.407703, 47.652985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792713, 33.213020, 47.462166>,  <28.128721, 32.979679, 47.480923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792713, 33.213020, 47.462166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.807405, 32.817265, 47.405930>,  <28.816221, 32.579811, 47.372189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.807405, 32.817265, 47.405930>,  <28.792713, 33.213020, 47.462166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807405, 32.817265, 47.405930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644668, 0.130958, -0.753162,
		0.763579, -0.062969, 0.642636,
		0.036733, -0.989386, -0.140591,
		28.818426, 32.520451, 47.363750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484926, 32.999107, 47.586628>,  <28.792713, 33.213020, 47.462166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484926, 32.999107, 47.586628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.312403, 32.715996, 47.362835>,  <29.208889, 32.546127, 47.228558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.312403, 32.715996, 47.362835>,  <29.484926, 32.999107, 47.586628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312403, 32.715996, 47.362835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530708, 0.302456, -0.791750,
		0.729604, -0.638410, 0.245173,
		-0.431307, -0.707780, -0.559483,
		29.183010, 32.503662, 47.194988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994011, 32.816353, 47.062141>,  <29.484926, 32.999107, 47.586628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994011, 32.816353, 47.062141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663158, 32.663971, 46.896866>,  <29.464647, 32.572540, 46.797699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663158, 32.663971, 46.896866>,  <29.994011, 32.816353, 47.062141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663158, 32.663971, 46.896866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439560, 0.019616, -0.897999,
		0.350201, -0.924386, 0.151227,
		-0.827131, -0.380954, -0.413193,
		29.415018, 32.549686, 46.772907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225824, 32.397419, 46.460098>,  <29.994011, 32.816353, 47.062141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225824, 32.397419, 46.460098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836575, 32.429340, 46.373695>,  <29.603024, 32.448494, 46.321854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.836575, 32.429340, 46.373695>,  <30.225824, 32.397419, 46.460098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836575, 32.429340, 46.373695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224512, 0.120273, -0.967021,
		-0.051191, -0.989528, -0.134957,
		-0.973126, 0.079802, -0.216004,
		29.544638, 32.453281, 46.308895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028072, 31.896797, 45.841412>,  <30.225824, 32.397419, 46.460098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028072, 31.896797, 45.841412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754522, 32.187550, 45.866592>,  <29.590393, 32.362000, 45.881702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754522, 32.187550, 45.866592>,  <30.028072, 31.896797, 45.841412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754522, 32.187550, 45.866592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139403, 0.214877, -0.966641,
		-0.716159, -0.652284, -0.248277,
		-0.683873, 0.726880, 0.062956,
		29.549360, 32.405613, 45.885479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648920, 31.899889, 45.158070>,  <30.028072, 31.896797, 45.841412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648920, 31.899889, 45.158070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599268, 32.257778, 45.329678>,  <29.569477, 32.472511, 45.432644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599268, 32.257778, 45.329678>,  <29.648920, 31.899889, 45.158070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599268, 32.257778, 45.329678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084121, 0.440301, -0.893901,
		-0.988694, -0.074872, -0.129920,
		-0.124132, 0.894723, 0.429025,
		29.562029, 32.526196, 45.458385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213497, 32.186226, 44.775562>,  <29.648920, 31.899889, 45.158070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213497, 32.186226, 44.775562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415665, 32.477039, 44.961456>,  <29.536964, 32.651527, 45.072994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415665, 32.477039, 44.961456>,  <29.213497, 32.186226, 44.775562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415665, 32.477039, 44.961456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307691, 0.351332, -0.884247,
		-0.806150, 0.589910, -0.046130,
		0.505419, 0.727029, 0.464737,
		29.567291, 32.695148, 45.100876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157372, 32.794846, 44.302586>,  <29.213497, 32.186226, 44.775562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157372, 32.794846, 44.302586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433895, 32.941246, 44.551788>,  <29.599810, 33.029087, 44.701309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433895, 32.941246, 44.551788>,  <29.157372, 32.794846, 44.302586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433895, 32.941246, 44.551788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351971, 0.582431, -0.732728,
		-0.631038, 0.725821, 0.273816,
		0.691308, 0.366004, 0.623004,
		29.641287, 33.051048, 44.738689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107082, 33.556465, 44.249142>,  <29.157372, 32.794846, 44.302586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107082, 33.556465, 44.249142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473948, 33.437428, 44.355156>,  <29.694067, 33.366005, 44.418766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473948, 33.437428, 44.355156>,  <29.107082, 33.556465, 44.249142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473948, 33.437428, 44.355156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389913, 0.532742, -0.751102,
		0.082329, 0.792225, 0.604649,
		0.917164, -0.297598, 0.265039,
		29.749096, 33.348148, 44.434669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471493, 34.181446, 44.151730>,  <29.107082, 33.556465, 44.249142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471493, 34.181446, 44.151730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740917, 33.885811, 44.154987>,  <29.902573, 33.708431, 44.156944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740917, 33.885811, 44.154987>,  <29.471493, 34.181446, 44.151730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740917, 33.885811, 44.154987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555279, 0.498712, -0.665546,
		0.487832, 0.452811, 0.746312,
		0.673561, -0.739087, 0.008148,
		29.942986, 33.664085, 44.157433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139856, 34.514587, 44.205322>,  <29.471493, 34.181446, 44.151730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139856, 34.514587, 44.205322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186111, 34.151054, 44.044998>,  <30.213863, 33.932934, 43.948803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186111, 34.151054, 44.044998>,  <30.139856, 34.514587, 44.205322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186111, 34.151054, 44.044998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545129, 0.395385, -0.739259,
		0.830338, -0.133008, 0.541153,
		0.115636, -0.908834, -0.400810,
		30.220802, 33.878403, 43.924755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798267, 34.577316, 43.962116>,  <30.139856, 34.514587, 44.205322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798267, 34.577316, 43.962116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677338, 34.254658, 43.758972>,  <30.604780, 34.061062, 43.637085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677338, 34.254658, 43.758972>,  <30.798267, 34.577316, 43.962116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677338, 34.254658, 43.758972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510220, 0.313093, -0.801030,
		0.805156, -0.501289, 0.316912,
		-0.302324, -0.806649, -0.507856,
		30.586639, 34.012665, 43.606617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.620972, 37.132198, 40.498081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.260300, 36.961823, 40.527851>,  <42.043896, 36.859596, 40.545715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.260300, 36.961823, 40.527851>,  <42.620972, 37.132198, 40.498081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260300, 36.961823, 40.527851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330314, -0.789605, -0.517124,
		0.279035, -0.441696, 0.852669,
		-0.901683, -0.425944, 0.074429,
		41.989796, 36.834038, 40.550179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617939, 36.374996, 40.634266>,  <42.620972, 37.132198, 40.498081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617939, 36.374996, 40.634266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273014, 36.452244, 40.447025>,  <42.066059, 36.498592, 40.334679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273014, 36.452244, 40.447025>,  <42.617939, 36.374996, 40.634266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273014, 36.452244, 40.447025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190609, -0.732641, -0.653380,
		-0.469129, -0.652644, 0.594957,
		-0.862314, 0.193115, -0.468103,
		42.014320, 36.510178, 40.306595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449532, 35.731133, 40.476456>,  <42.617939, 36.374996, 40.634266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449532, 35.731133, 40.476456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233318, 35.968178, 40.237579>,  <42.103592, 36.110405, 40.094254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233318, 35.968178, 40.237579>,  <42.449532, 35.731133, 40.476456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233318, 35.968178, 40.237579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035111, -0.725092, -0.687757,
		-0.840593, -0.350785, 0.412740,
		-0.540529, 0.592615, -0.597190,
		42.071159, 36.145962, 40.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973259, 35.219273, 40.133972>,  <42.449532, 35.731133, 40.476456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973259, 35.219273, 40.133972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961704, 35.550091, 39.909412>,  <41.954769, 35.748581, 39.774677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961704, 35.550091, 39.909412>,  <41.973259, 35.219273, 40.133972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961704, 35.550091, 39.909412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051248, -0.562119, -0.825467,
		-0.998268, 0.004924, 0.058623,
		-0.028889, 0.827042, -0.561398,
		41.953037, 35.798203, 39.740993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416485, 35.194279, 39.794136>,  <41.973259, 35.219273, 40.133972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416485, 35.194279, 39.794136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656364, 35.435009, 39.583172>,  <41.800293, 35.579449, 39.456593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.656364, 35.435009, 39.583172>,  <41.416485, 35.194279, 39.794136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656364, 35.435009, 39.583172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072050, -0.615792, -0.784607,
		-0.796974, 0.508530, -0.325929,
		0.599701, 0.601828, -0.527410,
		41.836273, 35.615559, 39.424950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116154, 35.195248, 39.168816>,  <41.416485, 35.194279, 39.794136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116154, 35.195248, 39.168816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500435, 35.291801, 39.113983>,  <41.731003, 35.349731, 39.081081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500435, 35.291801, 39.113983>,  <41.116154, 35.195248, 39.168816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500435, 35.291801, 39.113983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023833, -0.563733, -0.825613,
		-0.276568, 0.789898, -0.547331,
		0.960699, 0.241383, -0.137084,
		41.788643, 35.364216, 39.072857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114010, 35.336464, 38.357235>,  <41.116154, 35.195248, 39.168816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114010, 35.336464, 38.357235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504478, 35.336666, 38.444035>,  <41.738758, 35.336788, 38.496113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504478, 35.336666, 38.444035>,  <41.114010, 35.336464, 38.357235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504478, 35.336666, 38.444035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186465, -0.513449, -0.837616,
		0.110993, 0.858120, -0.501309,
		0.976172, 0.000507, 0.216999,
		41.797329, 35.336819, 38.509132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459896, 35.478519, 37.718506>,  <41.114010, 35.336464, 38.357235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459896, 35.478519, 37.718506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732887, 35.295490, 37.946487>,  <41.896683, 35.185673, 38.083279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.732887, 35.295490, 37.946487>,  <41.459896, 35.478519, 37.718506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732887, 35.295490, 37.946487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162601, -0.665204, -0.728741,
		0.712589, 0.590027, -0.379587,
		0.682479, -0.457572, 0.569956,
		41.937630, 35.158218, 38.117474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168488, 35.492508, 37.367588>,  <41.459896, 35.478519, 37.718506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168488, 35.492508, 37.367588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197720, 35.207214, 37.646431>,  <42.215260, 35.036037, 37.813736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197720, 35.207214, 37.646431>,  <42.168488, 35.492508, 37.367588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197720, 35.207214, 37.646431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500396, -0.578407, -0.644243,
		0.862707, 0.395908, 0.314631,
		0.073077, -0.713234, 0.697106,
		42.219643, 34.993244, 37.855564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858253, 35.152462, 37.282238>,  <42.168488, 35.492508, 37.367588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858253, 35.152462, 37.282238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627548, 34.882030, 37.465656>,  <42.489124, 34.719772, 37.575706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627548, 34.882030, 37.465656>,  <42.858253, 35.152462, 37.282238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627548, 34.882030, 37.465656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156380, -0.642308, -0.750324,
		0.801806, -0.361050, 0.476183,
		-0.576760, -0.676080, 0.458545,
		42.454521, 34.679207, 37.603218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222923, 34.638443, 37.206413>,  <42.858253, 35.152462, 37.282238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222923, 34.638443, 37.206413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851662, 34.504635, 37.271690>,  <42.628906, 34.424351, 37.310856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851662, 34.504635, 37.271690>,  <43.222923, 34.638443, 37.206413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851662, 34.504635, 37.271690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125620, -0.694262, -0.708675,
		0.350364, -0.637258, 0.686402,
		-0.928152, -0.334520, 0.163192,
		42.573215, 34.404278, 37.320648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250690, 33.834061, 37.202396>,  <43.222923, 34.638443, 37.206413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250690, 33.834061, 37.202396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.867722, 33.917614, 37.122696>,  <42.637939, 33.967747, 37.074875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.867722, 33.917614, 37.122696>,  <43.250690, 33.834061, 37.202396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867722, 33.917614, 37.122696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036982, -0.595785, -0.802292,
		-0.286301, -0.775504, 0.562695,
		-0.957426, 0.208887, -0.199254,
		42.580494, 33.980282, 37.062920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993019, 33.236317, 37.145947>,  <43.250690, 33.834061, 37.202396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993019, 33.236317, 37.145947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768486, 33.496223, 36.940926>,  <42.633766, 33.652168, 36.817913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768486, 33.496223, 36.940926>,  <42.993019, 33.236317, 37.145947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768486, 33.496223, 36.940926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071058, -0.579209, -0.812076,
		-0.824534, -0.492266, 0.278958,
		-0.561332, 0.649763, -0.512557,
		42.600086, 33.691151, 36.787159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396000, 32.865265, 36.716499>,  <42.993019, 33.236317, 37.145947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396000, 32.865265, 36.716499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410545, 33.218769, 36.529892>,  <42.419273, 33.430874, 36.417927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410545, 33.218769, 36.529892>,  <42.396000, 32.865265, 36.716499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410545, 33.218769, 36.529892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085540, -0.467869, -0.879648,
		-0.995671, -0.007922, -0.092609,
		0.036360, 0.883762, -0.466521,
		42.421452, 33.483898, 36.389935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910442, 32.878281, 36.128624>,  <42.396000, 32.865265, 36.716499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910442, 32.878281, 36.128624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.155910, 33.180290, 36.036240>,  <42.303192, 33.361496, 35.980808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.155910, 33.180290, 36.036240>,  <41.910442, 32.878281, 36.128624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155910, 33.180290, 36.036240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091694, -0.358684, -0.928945,
		-0.784220, 0.548889, -0.289345,
		0.613670, 0.755028, -0.230957,
		42.340012, 33.406799, 35.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746864, 33.116905, 35.455128>,  <41.910442, 32.878281, 36.128624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746864, 33.116905, 35.455128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123405, 33.242599, 35.504299>,  <42.349331, 33.318016, 35.533802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123405, 33.242599, 35.504299>,  <41.746864, 33.116905, 35.455128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123405, 33.242599, 35.504299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244141, -0.382821, -0.890979,
		-0.232914, 0.868738, -0.437087,
		0.941353, 0.314232, 0.122930,
		42.405811, 33.336868, 35.541180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005478, 33.389809, 34.689709>,  <41.746864, 33.116905, 35.455128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005478, 33.389809, 34.689709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.330265, 33.297390, 34.904118>,  <42.525139, 33.241940, 35.032764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.330265, 33.297390, 34.904118>,  <42.005478, 33.389809, 34.689709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330265, 33.297390, 34.904118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418993, -0.408648, -0.810834,
		0.406385, 0.882964, -0.235004,
		0.811971, -0.231045, 0.536024,
		42.573856, 33.228077, 35.064926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594608, 33.616009, 34.277752>,  <42.005478, 33.389809, 34.689709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594608, 33.616009, 34.277752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730274, 33.344318, 34.538094>,  <42.811672, 33.181305, 34.694298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730274, 33.344318, 34.538094>,  <42.594608, 33.616009, 34.277752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730274, 33.344318, 34.538094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488342, -0.464221, -0.738933,
		0.804046, 0.568461, 0.174248,
		0.339165, -0.679228, 0.650858,
		42.832024, 33.140549, 34.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224449, 33.347626, 33.929222>,  <42.594608, 33.616009, 34.277752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224449, 33.347626, 33.929222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158894, 33.080448, 34.219601>,  <43.119560, 32.920143, 34.393826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.158894, 33.080448, 34.219601>,  <43.224449, 33.347626, 33.929222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158894, 33.080448, 34.219601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470797, -0.699638, -0.537454,
		0.866886, 0.253691, 0.429126,
		-0.163885, -0.667943, 0.725943,
		43.109730, 32.880066, 34.437386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800774, 32.986557, 34.089882>,  <43.224449, 33.347626, 33.929222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800774, 32.986557, 34.089882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500046, 32.741684, 34.187870>,  <43.319611, 32.594761, 34.246662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500046, 32.741684, 34.187870>,  <43.800774, 32.986557, 34.089882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500046, 32.741684, 34.187870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489284, -0.766995, -0.415113,
		0.442012, -0.192230, 0.876169,
		-0.751815, -0.612181, 0.244966,
		43.274502, 32.558029, 34.261360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325294, 33.488148, 34.058723>,  <43.800774, 32.986557, 34.089882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325294, 33.488148, 34.058723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710426, 33.540707, 34.153114>,  <44.941505, 33.572243, 34.209751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710426, 33.540707, 34.153114>,  <44.325294, 33.488148, 34.058723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710426, 33.540707, 34.153114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264856, 0.630608, 0.729510,
		-0.052952, -0.764897, 0.641973,
		0.962833, 0.131402, 0.235979,
		44.999275, 33.580128, 34.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528740, 33.397007, 34.801498>,  <44.325294, 33.488148, 34.058723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528740, 33.397007, 34.801498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767258, 33.655357, 34.610802>,  <44.910366, 33.810368, 34.496384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767258, 33.655357, 34.610802>,  <44.528740, 33.397007, 34.801498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767258, 33.655357, 34.610802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207837, 0.697829, 0.685447,
		0.775398, -0.309641, 0.550345,
		0.596290, 0.645877, -0.476741,
		44.946144, 33.849121, 34.467781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913849, 33.714230, 35.380550>,  <44.528740, 33.397007, 34.801498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913849, 33.714230, 35.380550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946377, 33.952896, 35.061207>,  <44.965893, 34.096096, 34.869602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946377, 33.952896, 35.061207>,  <44.913849, 33.714230, 35.380550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946377, 33.952896, 35.061207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285790, 0.781331, 0.554838,
		0.954836, 0.183044, 0.234059,
		0.081318, 0.596671, -0.798355,
		44.970772, 34.131897, 34.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323483, 34.334484, 35.552582>,  <44.913849, 33.714230, 35.380550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323483, 34.334484, 35.552582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106285, 34.452259, 35.238014>,  <44.975967, 34.522923, 35.049274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106285, 34.452259, 35.238014>,  <45.323483, 34.334484, 35.552582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106285, 34.452259, 35.238014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318913, 0.794040, 0.517489,
		0.776820, 0.531796, -0.337261,
		-0.542997, 0.294438, -0.786422,
		44.943386, 34.540592, 35.002087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476124, 35.067463, 35.560230>,  <45.323483, 34.334484, 35.552582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476124, 35.067463, 35.560230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182396, 35.014187, 35.293987>,  <45.006157, 34.982220, 35.134243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182396, 35.014187, 35.293987>,  <45.476124, 35.067463, 35.560230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182396, 35.014187, 35.293987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340453, 0.920578, 0.191386,
		0.587251, 0.367146, -0.721346,
		-0.734322, -0.133193, -0.665606,
		44.962101, 34.974228, 35.094307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505516, 35.620399, 35.089863>,  <45.476124, 35.067463, 35.560230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505516, 35.620399, 35.089863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136509, 35.471733, 35.048244>,  <44.915104, 35.382534, 35.023273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136509, 35.471733, 35.048244>,  <45.505516, 35.620399, 35.089863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136509, 35.471733, 35.048244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384967, 0.866869, 0.316761,
		-0.027533, 0.332273, -0.942781,
		-0.922519, -0.371661, -0.104046,
		44.859753, 35.360233, 35.017029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016880, 36.155773, 34.787937>,  <45.505516, 35.620399, 35.089863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016880, 36.155773, 34.787937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754265, 35.898647, 34.945793>,  <44.596695, 35.744373, 35.040508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754265, 35.898647, 34.945793>,  <45.016880, 36.155773, 34.787937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754265, 35.898647, 34.945793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557327, 0.765962, 0.320451,
		-0.508271, -0.009554, -0.861144,
		-0.656543, -0.642815, 0.394641,
		44.557301, 35.705803, 35.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293934, 36.362930, 34.565434>,  <45.016880, 36.155773, 34.787937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293934, 36.362930, 34.565434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283188, 36.152077, 34.905174>,  <44.276741, 36.025562, 35.109020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283188, 36.152077, 34.905174>,  <44.293934, 36.362930, 34.565434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283188, 36.152077, 34.905174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562240, 0.710501, 0.423173,
		-0.826538, -0.466171, -0.315467,
		-0.026869, -0.527136, 0.849356,
		44.275127, 35.993935, 35.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686718, 36.568378, 34.896374>,  <44.293934, 36.362930, 34.565434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686718, 36.568378, 34.896374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870255, 36.408016, 35.213547>,  <43.980377, 36.311798, 35.403851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870255, 36.408016, 35.213547>,  <43.686718, 36.568378, 34.896374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870255, 36.408016, 35.213547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441100, 0.671907, 0.594955,
		-0.771298, -0.622751, 0.131458,
		0.458836, -0.400902, 0.792936,
		44.007904, 36.287746, 35.451427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210587, 36.603394, 35.360832>,  <43.686718, 36.568378, 34.896374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210587, 36.603394, 35.360832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529778, 36.526447, 35.589298>,  <43.721291, 36.480282, 35.726379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529778, 36.526447, 35.589298>,  <43.210587, 36.603394, 35.360832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529778, 36.526447, 35.589298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406914, 0.527121, 0.746033,
		-0.444582, -0.827732, 0.342356,
		0.797978, -0.192363, 0.571164,
		43.769173, 36.468739, 35.760647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048172, 36.308922, 36.050030>,  <43.210587, 36.603394, 35.360832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048172, 36.308922, 36.050030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404583, 36.489452, 36.069557>,  <43.618427, 36.597771, 36.081272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404583, 36.489452, 36.069557>,  <43.048172, 36.308922, 36.050030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404583, 36.489452, 36.069557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, 0.457367, 0.844726,
		0.358916, -0.766240, 0.532969,
		0.891025, 0.451321, 0.048817,
		43.671890, 36.624847, 36.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138493, 36.246925, 36.766884>,  <43.048172, 36.308922, 36.050030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138493, 36.246925, 36.766884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395199, 36.513512, 36.615116>,  <43.549225, 36.673462, 36.524055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395199, 36.513512, 36.615116>,  <43.138493, 36.246925, 36.766884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395199, 36.513512, 36.615116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096387, 0.560923, 0.822238,
		0.760818, -0.491114, 0.424221,
		0.641768, 0.666462, -0.379423,
		43.587730, 36.713451, 36.501289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547165, 36.312801, 37.337826>,  <43.138493, 36.246925, 36.766884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547165, 36.312801, 37.337826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.611370, 36.643917, 37.122787>,  <43.649895, 36.842587, 36.993767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.611370, 36.643917, 37.122787>,  <43.547165, 36.312801, 37.337826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611370, 36.643917, 37.122787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073782, 0.553194, 0.829779,
		0.984272, -0.093526, 0.149870,
		0.160513, 0.827786, -0.537593,
		43.659523, 36.892254, 36.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984486, 36.698189, 37.691563>,  <43.547165, 36.312801, 37.337826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984486, 36.698189, 37.691563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824207, 36.964424, 37.439713>,  <43.728039, 37.124165, 37.288601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824207, 36.964424, 37.439713>,  <43.984486, 36.698189, 37.691563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824207, 36.964424, 37.439713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075362, 0.660937, 0.746648,
		0.913106, 0.346630, -0.214675,
		-0.400697, 0.665590, -0.629628,
		43.703999, 37.164101, 37.250824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333321, 37.285473, 37.796944>,  <43.984486, 36.698189, 37.691563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333321, 37.285473, 37.796944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976086, 37.390343, 37.650707>,  <43.761745, 37.453266, 37.562965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976086, 37.390343, 37.650707>,  <44.333321, 37.285473, 37.796944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976086, 37.390343, 37.650707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118680, 0.646548, 0.753585,
		0.433942, 0.716407, -0.546310,
		-0.893089, 0.262176, -0.365588,
		43.708160, 37.468994, 37.541031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305977, 38.042721, 37.734932>,  <44.333321, 37.285473, 37.796944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305977, 38.042721, 37.734932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918552, 37.957218, 37.684029>,  <43.686096, 37.905918, 37.653488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918552, 37.957218, 37.684029>,  <44.305977, 38.042721, 37.734932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918552, 37.957218, 37.684029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243837, 0.714364, 0.655918,
		-0.049298, 0.666328, -0.744028,
		-0.968563, -0.213757, -0.127258,
		43.627983, 37.893089, 37.645851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955711, 38.696507, 37.434368>,  <44.305977, 38.042721, 37.734932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955711, 38.696507, 37.434368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677811, 38.460560, 37.598988>,  <43.511070, 38.318993, 37.697758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.677811, 38.460560, 37.598988>,  <43.955711, 38.696507, 37.434368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677811, 38.460560, 37.598988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364945, 0.782170, 0.505000,
		-0.619782, 0.200660, -0.758687,
		-0.694756, -0.589869, 0.411545,
		43.469383, 38.283600, 37.722450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251793, 39.145161, 37.483467>,  <43.955711, 38.696507, 37.434368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251793, 39.145161, 37.483467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.247814, 38.831947, 37.732224>,  <43.245426, 38.644020, 37.881477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.247814, 38.831947, 37.732224>,  <43.251793, 39.145161, 37.483467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247814, 38.831947, 37.732224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408780, 0.570769, 0.712125,
		-0.912579, -0.247134, -0.325768,
		-0.009948, -0.783037, 0.621895,
		43.244831, 38.597034, 37.918793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544903, 39.136951, 37.667427>,  <43.251793, 39.145161, 37.483467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544903, 39.136951, 37.667427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777805, 38.965977, 37.944057>,  <42.917545, 38.863392, 38.110035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777805, 38.965977, 37.944057>,  <42.544903, 39.136951, 37.667427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777805, 38.965977, 37.944057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434299, 0.555573, 0.709030,
		-0.687286, -0.713187, 0.137849,
		0.582256, -0.427438, 0.691574,
		42.952480, 38.837746, 38.151531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151203, 38.939758, 38.151585>,  <42.544903, 39.136951, 37.667427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151203, 38.939758, 38.151585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481018, 38.898399, 38.374096>,  <42.678905, 38.873585, 38.507603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481018, 38.898399, 38.374096>,  <42.151203, 38.939758, 38.151585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481018, 38.898399, 38.374096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460105, 0.449682, 0.765565,
		-0.329308, -0.887183, 0.323205,
		0.824536, -0.103399, 0.556281,
		42.728378, 38.867378, 38.540981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877979, 38.690266, 38.751930>,  <42.151203, 38.939758, 38.151585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877979, 38.690266, 38.751930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238052, 38.851204, 38.818611>,  <42.454098, 38.947765, 38.858620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238052, 38.851204, 38.818611>,  <41.877979, 38.690266, 38.751930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238052, 38.851204, 38.818611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320160, 0.351860, 0.879598,
		0.295243, -0.845171, 0.445552,
		0.900183, 0.402343, 0.166706,
		42.508106, 38.971909, 38.868622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121582, 38.474571, 39.522781>,  <41.877979, 38.690266, 38.751930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121582, 38.474571, 39.522781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315449, 38.811352, 39.427937>,  <42.431770, 39.013420, 39.371029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315449, 38.811352, 39.427937>,  <42.121582, 38.474571, 39.522781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315449, 38.811352, 39.427937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270184, 0.401928, 0.874903,
		0.831926, -0.359970, 0.422281,
		0.484665, 0.841947, -0.237116,
		42.460850, 39.063934, 39.356800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.645313, 34.283947, 41.189327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291485, 34.132870, 41.079872>,  <35.079185, 34.042221, 41.014198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291485, 34.132870, 41.079872>,  <35.645313, 34.283947, 41.189327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291485, 34.132870, 41.079872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423709, -0.405545, -0.809941,
		0.194940, -0.832393, 0.518767,
		-0.884573, -0.377696, -0.273635,
		35.026112, 34.019562, 40.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899094, 33.605518, 40.848938>,  <35.645313, 34.283947, 41.189327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899094, 33.605518, 40.848938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524860, 33.696659, 40.741035>,  <35.300320, 33.751343, 40.676292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524860, 33.696659, 40.741035>,  <35.899094, 33.605518, 40.848938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524860, 33.696659, 40.741035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228762, -0.190834, -0.954594,
		-0.268986, -0.954812, 0.126417,
		-0.935582, 0.227853, -0.269757,
		35.244186, 33.765015, 40.660107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697254, 33.018581, 40.398090>,  <35.899094, 33.605518, 40.848938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697254, 33.018581, 40.398090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450226, 33.310246, 40.280148>,  <35.302010, 33.485245, 40.209381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450226, 33.310246, 40.280148>,  <35.697254, 33.018581, 40.398090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450226, 33.310246, 40.280148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380821, -0.050804, -0.923252,
		-0.688177, -0.682457, -0.246304,
		-0.617567, 0.729158, -0.294856,
		35.264957, 33.528992, 40.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280510, 32.809223, 39.770283>,  <35.697254, 33.018581, 40.398090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280510, 32.809223, 39.770283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249325, 33.207539, 39.750965>,  <35.230614, 33.446526, 39.739376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249325, 33.207539, 39.750965>,  <35.280510, 32.809223, 39.770283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249325, 33.207539, 39.750965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298011, -0.022948, -0.954286,
		-0.951374, -0.088788, -0.294966,
		-0.077961, 0.995786, -0.048292,
		35.225937, 33.506275, 39.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765999, 33.067127, 39.194656>,  <35.280510, 32.809223, 39.770283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765999, 33.067127, 39.194656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039982, 33.348412, 39.270897>,  <35.204372, 33.517181, 39.316639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039982, 33.348412, 39.270897>,  <34.765999, 33.067127, 39.194656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039982, 33.348412, 39.270897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173806, 0.096338, -0.980056,
		-0.707548, 0.704424, -0.056235,
		0.684958, 0.703211, 0.190597,
		35.245468, 33.559376, 39.328075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680058, 33.428734, 38.649490>,  <34.765999, 33.067127, 39.194656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680058, 33.428734, 38.649490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027302, 33.584908, 38.772087>,  <35.235649, 33.678612, 38.845646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027302, 33.584908, 38.772087>,  <34.680058, 33.428734, 38.649490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027302, 33.584908, 38.772087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311408, 0.052436, -0.948828,
		-0.386530, 0.919135, -0.076065,
		0.868113, 0.390437, 0.306495,
		35.287735, 33.702038, 38.864037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868046, 33.942909, 38.207253>,  <34.680058, 33.428734, 38.649490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868046, 33.942909, 38.207253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218849, 33.844841, 38.372543>,  <35.429329, 33.785999, 38.471718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218849, 33.844841, 38.372543>,  <34.868046, 33.942909, 38.207253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218849, 33.844841, 38.372543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415944, -0.043124, -0.908367,
		0.240527, 0.968520, 0.064158,
		0.877005, -0.245173, 0.413223,
		35.481949, 33.771290, 38.496510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356922, 34.268429, 37.843948>,  <34.868046, 33.942909, 38.207253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356922, 34.268429, 37.843948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594967, 34.006039, 38.029652>,  <35.737793, 33.848606, 38.141075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594967, 34.006039, 38.029652>,  <35.356922, 34.268429, 37.843948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594967, 34.006039, 38.029652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422279, -0.236272, -0.875132,
		0.683756, 0.716850, 0.136396,
		0.595112, -0.655974, 0.464263,
		35.773499, 33.809246, 38.168930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032055, 34.425262, 37.680161>,  <35.356922, 34.268429, 37.843948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032055, 34.425262, 37.680161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055592, 34.035614, 37.767452>,  <36.069714, 33.801826, 37.819828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055592, 34.035614, 37.767452>,  <36.032055, 34.425262, 37.680161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055592, 34.035614, 37.767452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597583, -0.140742, -0.789358,
		0.799645, 0.176861, 0.573836,
		0.058844, -0.974121, 0.218233,
		36.073246, 33.743378, 37.832924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753819, 34.239998, 37.686474>,  <36.032055, 34.425262, 37.680161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753819, 34.239998, 37.686474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554047, 33.895027, 37.653530>,  <36.434185, 33.688046, 37.633766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554047, 33.895027, 37.653530>,  <36.753819, 34.239998, 37.686474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554047, 33.895027, 37.653530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607763, -0.281028, -0.742730,
		0.617409, -0.420995, 0.664508,
		-0.499430, -0.862431, -0.082356,
		36.404217, 33.636299, 37.628822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254852, 33.745350, 37.635548>,  <36.753819, 34.239998, 37.686474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254852, 33.745350, 37.635548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952991, 33.549473, 37.460869>,  <36.771877, 33.431946, 37.356060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952991, 33.549473, 37.460869>,  <37.254852, 33.745350, 37.635548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952991, 33.549473, 37.460869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643489, -0.422358, -0.638384,
		0.128173, -0.762765, 0.633847,
		-0.754648, -0.489697, -0.436696,
		36.726597, 33.402565, 37.329861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481632, 33.089901, 37.485161>,  <37.254852, 33.745350, 37.635548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481632, 33.089901, 37.485161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159542, 33.130444, 37.251461>,  <36.966290, 33.154770, 37.111240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159542, 33.130444, 37.251461>,  <37.481632, 33.089901, 37.485161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159542, 33.130444, 37.251461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520535, -0.351082, -0.778321,
		-0.284007, -0.930843, 0.229939,
		-0.805223, 0.101357, -0.584246,
		36.917976, 33.160851, 37.076187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348518, 32.454464, 37.171261>,  <37.481632, 33.089901, 37.485161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348518, 32.454464, 37.171261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204342, 32.753704, 36.948399>,  <37.117836, 32.933247, 36.814682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204342, 32.753704, 36.948399>,  <37.348518, 32.454464, 37.171261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204342, 32.753704, 36.948399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537396, -0.321673, -0.779572,
		-0.762421, -0.580407, -0.286081,
		-0.360444, 0.748101, -0.557158,
		37.096207, 32.978134, 36.781250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168461, 32.146248, 36.626144>,  <37.348518, 32.454464, 37.171261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168461, 32.146248, 36.626144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273270, 32.529629, 36.581036>,  <37.336155, 32.759655, 36.553970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273270, 32.529629, 36.581036>,  <37.168461, 32.146248, 36.626144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273270, 32.529629, 36.581036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629316, -0.258286, -0.732973,
		-0.731646, 0.121087, -0.670845,
		0.262024, 0.958450, -0.112772,
		37.351875, 32.817165, 36.547203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753834, 31.715570, 36.252403>,  <37.168461, 32.146248, 36.626144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753834, 31.715570, 36.252403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121662, 31.560099, 36.275421>,  <37.342361, 31.466816, 36.289234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121662, 31.560099, 36.275421>,  <36.753834, 31.715570, 36.252403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121662, 31.560099, 36.275421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305504, -0.615184, 0.726785,
		-0.247082, -0.685914, -0.684450,
		0.919575, -0.388678, 0.057549,
		37.397533, 31.443495, 36.292686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682476, 30.958235, 36.156216>,  <36.753834, 31.715570, 36.252403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682476, 30.958235, 36.156216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013336, 31.061632, 36.355820>,  <37.211853, 31.123671, 36.475582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013336, 31.061632, 36.355820>,  <36.682476, 30.958235, 36.156216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013336, 31.061632, 36.355820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205480, -0.687352, 0.696653,
		0.523075, -0.678771, -0.515425,
		0.827146, 0.258492, 0.499010,
		37.261478, 31.139179, 36.505524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953014, 30.287848, 36.346169>,  <36.682476, 30.958235, 36.156216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953014, 30.287848, 36.346169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104137, 30.570087, 36.585964>,  <37.194813, 30.739431, 36.729843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104137, 30.570087, 36.585964>,  <36.953014, 30.287848, 36.346169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104137, 30.570087, 36.585964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482946, -0.402243, 0.777794,
		0.789952, -0.583380, 0.188794,
		0.377808, 0.705597, 0.599494,
		37.217480, 30.781767, 36.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026978, 29.895594, 36.909519>,  <36.953014, 30.287848, 36.346169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026978, 29.895594, 36.909519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065716, 30.262829, 37.063267>,  <37.088959, 30.483170, 37.155514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065716, 30.262829, 37.063267>,  <37.026978, 29.895594, 36.909519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065716, 30.262829, 37.063267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502886, -0.288125, 0.814917,
		0.858910, -0.272214, 0.433789,
		0.096847, 0.918087, 0.384366,
		37.094769, 30.538256, 37.178577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215096, 29.807362, 37.564484>,  <37.026978, 29.895594, 36.909519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215096, 29.807362, 37.564484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078312, 30.183249, 37.564274>,  <36.996243, 30.408781, 37.564148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078312, 30.183249, 37.564274>,  <37.215096, 29.807362, 37.564484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078312, 30.183249, 37.564274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508714, -0.184651, 0.840901,
		0.790111, 0.287817, 0.541189,
		-0.341957, 0.939715, -0.000522,
		36.975723, 30.465162, 37.564117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366890, 29.929077, 38.243912>,  <37.215096, 29.807362, 37.564484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366890, 29.929077, 38.243912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093307, 30.198092, 38.130848>,  <36.929157, 30.359499, 38.063011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093307, 30.198092, 38.130848>,  <37.366890, 29.929077, 38.243912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093307, 30.198092, 38.130848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554152, -0.226969, 0.800874,
		0.474461, 0.704402, 0.527924,
		-0.683960, 0.672534, -0.282658,
		36.888119, 30.399853, 38.046051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254898, 30.433905, 38.781792>,  <37.366890, 29.929077, 38.243912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254898, 30.433905, 38.781792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931389, 30.393991, 38.549953>,  <36.737286, 30.370043, 38.410851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931389, 30.393991, 38.549953>,  <37.254898, 30.433905, 38.781792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931389, 30.393991, 38.549953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564996, -0.141843, 0.812810,
		-0.163317, 0.984847, 0.058341,
		-0.808769, -0.099783, -0.579600,
		36.688759, 30.364058, 38.376072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767982, 30.888382, 39.103619>,  <37.254898, 30.433905, 38.781792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767982, 30.888382, 39.103619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531189, 30.708040, 38.836399>,  <36.389114, 30.599834, 38.676067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531189, 30.708040, 38.836399>,  <36.767982, 30.888382, 39.103619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531189, 30.708040, 38.836399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704629, -0.112828, 0.700548,
		-0.391220, 0.885437, -0.250893,
		-0.591984, -0.450855, -0.668046,
		36.353596, 30.572784, 38.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124443, 31.218533, 39.025341>,  <36.767982, 30.888382, 39.103619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124443, 31.218533, 39.025341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078098, 30.837156, 38.913963>,  <36.050293, 30.608332, 38.847137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078098, 30.837156, 38.913963>,  <36.124443, 31.218533, 39.025341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078098, 30.837156, 38.913963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721184, -0.112014, 0.683627,
		-0.682986, 0.280015, -0.674627,
		-0.115858, -0.953438, -0.278446,
		36.043343, 30.551125, 38.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414028, 31.128048, 39.216808>,  <36.124443, 31.218533, 39.025341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414028, 31.128048, 39.216808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513203, 30.753107, 39.118908>,  <35.572708, 30.528143, 39.060169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513203, 30.753107, 39.118908>,  <35.414028, 31.128048, 39.216808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513203, 30.753107, 39.118908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611440, -0.347370, 0.710968,
		-0.751445, -0.026623, -0.659258,
		0.247935, -0.937350, -0.244751,
		35.587582, 30.471903, 39.045483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784290, 30.685324, 38.898357>,  <35.414028, 31.128048, 39.216808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784290, 30.685324, 38.898357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067661, 30.458271, 39.066135>,  <35.237682, 30.322041, 39.166801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067661, 30.458271, 39.066135>,  <34.784290, 30.685324, 38.898357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067661, 30.458271, 39.066135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638708, -0.262732, 0.723204,
		-0.300320, -0.780230, -0.548680,
		0.708421, -0.567639, 0.419435,
		35.280190, 30.287981, 39.191967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388664, 30.083735, 39.161907>,  <34.784290, 30.685324, 38.898357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388664, 30.083735, 39.161907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747726, 30.071220, 39.337742>,  <34.963165, 30.063711, 39.443241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747726, 30.071220, 39.337742>,  <34.388664, 30.083735, 39.161907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747726, 30.071220, 39.337742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432659, -0.252208, 0.865562,
		0.083787, -0.967167, -0.239932,
		0.897656, -0.031286, 0.439585,
		35.017025, 30.061834, 39.469616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268967, 29.486893, 39.562572>,  <34.388664, 30.083735, 39.161907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268967, 29.486893, 39.562572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580795, 29.691254, 39.707489>,  <34.767891, 29.813869, 39.794437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580795, 29.691254, 39.707489>,  <34.268967, 29.486893, 39.562572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580795, 29.691254, 39.707489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320720, -0.171219, 0.931570,
		0.537971, -0.842416, 0.030379,
		0.779568, 0.510901, 0.362291,
		34.814667, 29.844524, 39.816177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487629, 29.151257, 40.240746>,  <34.268967, 29.486893, 39.562572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487629, 29.151257, 40.240746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674469, 29.503614, 40.271320>,  <34.786575, 29.715029, 40.289665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674469, 29.503614, 40.271320>,  <34.487629, 29.151257, 40.240746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674469, 29.503614, 40.271320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072165, -0.048180, 0.996228,
		0.881253, -0.470857, 0.041064,
		0.467103, 0.880893, 0.076438,
		34.814598, 29.767881, 40.294250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812389, 28.477793, 40.231331>,  <34.487629, 29.151257, 40.240746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812389, 28.477793, 40.231331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491894, 28.238461, 40.232666>,  <34.299595, 28.094860, 40.233467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491894, 28.238461, 40.232666>,  <34.812389, 28.477793, 40.231331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491894, 28.238461, 40.232666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007343, 0.004249, -0.999964,
		0.598297, -0.801237, -0.007798,
		-0.801241, -0.598332, 0.003342,
		34.251522, 28.058960, 40.233669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900986, 27.927536, 39.799622>,  <34.812389, 28.477793, 40.231331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900986, 27.927536, 39.799622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502094, 27.957304, 39.798653>,  <34.262760, 27.975164, 39.798069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502094, 27.957304, 39.798653>,  <34.900986, 27.927536, 39.799622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502094, 27.957304, 39.798653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002117, -0.060894, -0.998142,
		-0.074446, -0.995365, 0.060883,
		-0.997223, 0.074436, -0.002426,
		34.202927, 27.979630, 39.797924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533104, 27.331024, 39.435745>,  <34.900986, 27.927536, 39.799622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533104, 27.331024, 39.435745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305759, 27.659924, 39.423973>,  <34.169353, 27.857264, 39.416912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305759, 27.659924, 39.423973>,  <34.533104, 27.331024, 39.435745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305759, 27.659924, 39.423973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016780, -0.047341, -0.998738,
		-0.822606, -0.567154, 0.040704,
		-0.568365, 0.822250, -0.029426,
		34.135250, 27.906599, 39.415146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076580, 27.209021, 38.919628>,  <34.533104, 27.331024, 39.435745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076580, 27.209021, 38.919628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007587, 27.596125, 38.993046>,  <33.966190, 27.828386, 39.037098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007587, 27.596125, 38.993046>,  <34.076580, 27.209021, 38.919628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007587, 27.596125, 38.993046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043184, 0.178729, -0.982950,
		-0.984065, -0.177470, 0.010964,
		-0.172485, 0.967761, 0.183545,
		33.955841, 27.886454, 39.048111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520000, 27.332769, 38.498695>,  <34.076580, 27.209021, 38.919628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520000, 27.332769, 38.498695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682999, 27.693384, 38.556908>,  <33.780796, 27.909752, 38.591835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682999, 27.693384, 38.556908>,  <33.520000, 27.332769, 38.498695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682999, 27.693384, 38.556908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086609, 0.120496, -0.988928,
		-0.909091, 0.415588, -0.028980,
		0.407495, 0.901536, 0.145535,
		33.805248, 27.963844, 38.600567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373734, 27.624834, 37.987183>,  <33.520000, 27.332769, 38.498695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373734, 27.624834, 37.987183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666275, 27.872555, 38.101433>,  <33.841801, 28.021187, 38.169983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666275, 27.872555, 38.101433>,  <33.373734, 27.624834, 37.987183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666275, 27.872555, 38.101433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069260, 0.349199, -0.934486,
		-0.678468, 0.703226, 0.212497,
		0.731358, 0.619301, 0.285625,
		33.885681, 28.058346, 38.187119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232216, 28.198164, 37.549561>,  <33.373734, 27.624834, 37.987183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232216, 28.198164, 37.549561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610142, 28.209059, 37.680145>,  <33.836899, 28.215595, 37.758495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610142, 28.209059, 37.680145>,  <33.232216, 28.198164, 37.549561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610142, 28.209059, 37.680145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282727, 0.435607, -0.854583,
		-0.165489, 0.899725, 0.403868,
		0.944817, 0.027239, 0.326465,
		33.893585, 28.217230, 37.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369133, 28.833797, 37.386398>,  <33.232216, 28.198164, 37.549561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369133, 28.833797, 37.386398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713776, 28.636786, 37.435463>,  <33.920563, 28.518579, 37.464901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713776, 28.636786, 37.435463>,  <33.369133, 28.833797, 37.386398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713776, 28.636786, 37.435463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348023, 0.397340, -0.849118,
		0.369474, 0.774298, 0.513763,
		0.861609, -0.492528, 0.122666,
		33.972260, 28.489027, 37.472263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843906, 29.307327, 37.267109>,  <33.369133, 28.833797, 37.386398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843906, 29.307327, 37.267109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028072, 28.959404, 37.196163>,  <34.138573, 28.750650, 37.153595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028072, 28.959404, 37.196163>,  <33.843906, 29.307327, 37.267109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028072, 28.959404, 37.196163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433386, 0.394618, -0.810218,
		0.774725, 0.296166, 0.558648,
		0.460411, -0.869806, -0.177366,
		34.166195, 28.698462, 37.142952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422928, 29.507790, 36.991947>,  <33.843906, 29.307327, 37.267109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422928, 29.507790, 36.991947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388226, 29.127979, 36.871365>,  <34.367405, 28.900093, 36.799015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388226, 29.127979, 36.871365>,  <34.422928, 29.507790, 36.991947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388226, 29.127979, 36.871365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203383, 0.279339, -0.938405,
		0.975248, -0.142720, 0.168884,
		-0.086754, -0.949526, -0.301452,
		34.362198, 28.843121, 36.780930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918365, 29.341301, 36.532055>,  <34.422928, 29.507790, 36.991947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918365, 29.341301, 36.532055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636387, 29.070339, 36.447987>,  <34.467197, 28.907763, 36.397545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636387, 29.070339, 36.447987>,  <34.918365, 29.341301, 36.532055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636387, 29.070339, 36.447987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196564, 0.098121, -0.975569,
		0.681475, -0.729039, 0.063983,
		-0.704950, -0.677403, -0.210170,
		34.424900, 28.867119, 36.384937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208374, 28.933882, 35.959946>,  <34.918365, 29.341301, 36.532055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208374, 28.933882, 35.959946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812675, 28.880350, 35.936359>,  <34.575256, 28.848232, 35.922207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812675, 28.880350, 35.936359>,  <35.208374, 28.933882, 35.959946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812675, 28.880350, 35.936359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046378, 0.095301, -0.994368,
		0.138700, -0.986410, -0.088069,
		-0.989248, -0.133834, -0.058966,
		34.515900, 28.840202, 35.918671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.521763, 27.176172, 43.759689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133083, 27.266813, 43.733021>,  <33.899876, 27.321198, 43.717018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.133083, 27.266813, 43.733021>,  <34.521763, 27.176172, 43.759689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133083, 27.266813, 43.733021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013505, -0.335092, -0.942088,
		-0.235818, -0.914530, 0.328671,
		-0.971704, 0.226600, -0.066670,
		33.841572, 27.334793, 43.713020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268158, 26.717340, 43.313171>,  <34.521763, 27.176172, 43.759689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268158, 26.717340, 43.313171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.958473, 26.970116, 43.299030>,  <33.772663, 27.121780, 43.290546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.958473, 26.970116, 43.299030>,  <34.268158, 26.717340, 43.313171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958473, 26.970116, 43.299030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182290, -0.276123, -0.943677,
		-0.606107, -0.724162, 0.328973,
		-0.774213, 0.631938, -0.035353,
		33.726208, 27.159697, 43.288425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685974, 26.453735, 42.795891>,  <34.268158, 26.717340, 43.313171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685974, 26.453735, 42.795891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606560, 26.844427, 42.828339>,  <33.558910, 27.078842, 42.847809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606560, 26.844427, 42.828339>,  <33.685974, 26.453735, 42.795891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606560, 26.844427, 42.828339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224454, 0.035258, -0.973847,
		-0.954047, -0.211547, 0.212232,
		-0.198532, 0.976732, 0.081121,
		33.547001, 27.137447, 42.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059406, 26.672646, 42.395363>,  <33.685974, 26.453735, 42.795891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059406, 26.672646, 42.395363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.264561, 27.009741, 42.460777>,  <33.387653, 27.211998, 42.500027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.264561, 27.009741, 42.460777>,  <33.059406, 26.672646, 42.395363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264561, 27.009741, 42.460777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105742, 0.251068, -0.962177,
		-0.851919, 0.476194, 0.217882,
		0.512886, 0.842736, 0.163536,
		33.418427, 27.262562, 42.509838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731186, 27.184988, 41.980873>,  <33.059406, 26.672646, 42.395363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731186, 27.184988, 41.980873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097622, 27.329466, 42.050526>,  <33.317482, 27.416153, 42.092316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097622, 27.329466, 42.050526>,  <32.731186, 27.184988, 41.980873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097622, 27.329466, 42.050526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025214, 0.381517, -0.924018,
		-0.400185, 0.850872, 0.340396,
		0.916088, 0.361195, 0.174131,
		33.372448, 27.437824, 42.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770523, 27.814009, 41.628559>,  <32.731186, 27.184988, 41.980873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770523, 27.814009, 41.628559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.151653, 27.699078, 41.667667>,  <33.380333, 27.630119, 41.691132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.151653, 27.699078, 41.667667>,  <32.770523, 27.814009, 41.628559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151653, 27.699078, 41.667667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184558, 0.292772, -0.938202,
		0.240949, 0.911990, 0.331990,
		0.952828, -0.287330, 0.097772,
		33.437500, 27.612879, 41.696999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181889, 28.330839, 41.383141>,  <32.770523, 27.814009, 41.628559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181889, 28.330839, 41.383141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451881, 28.036612, 41.360031>,  <33.613876, 27.860075, 41.346165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451881, 28.036612, 41.360031>,  <33.181889, 28.330839, 41.383141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451881, 28.036612, 41.360031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193622, 0.252144, -0.948121,
		0.711975, 0.628779, 0.312615,
		0.674983, -0.735568, -0.057775,
		33.654377, 27.815941, 41.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792416, 28.648006, 41.188274>,  <33.181889, 28.330839, 41.383141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792416, 28.648006, 41.188274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876816, 28.269547, 41.090069>,  <33.927456, 28.042471, 41.031147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876816, 28.269547, 41.090069>,  <33.792416, 28.648006, 41.188274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876816, 28.269547, 41.090069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478740, 0.319010, -0.817949,
		0.852225, 0.055052, 0.520271,
		0.211001, -0.946151, -0.245513,
		33.940117, 27.985701, 41.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416512, 28.683804, 40.923092>,  <33.792416, 28.648006, 41.188274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416512, 28.683804, 40.923092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255024, 28.336609, 40.807430>,  <34.158131, 28.128292, 40.738033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.255024, 28.336609, 40.807430>,  <34.416512, 28.683804, 40.923092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255024, 28.336609, 40.807430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325788, 0.158947, -0.931986,
		0.854913, -0.470460, 0.218611,
		-0.403715, -0.867988, -0.289156,
		34.133911, 28.076212, 40.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192368, 29.098225, 40.821236>,  <34.416512, 28.683804, 40.923092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192368, 29.098225, 40.821236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.111141, 29.488674, 40.790382>,  <35.062405, 29.722944, 40.771870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.111141, 29.488674, 40.790382>,  <35.192368, 29.098225, 40.821236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111141, 29.488674, 40.790382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128499, 0.051527, 0.990370,
		0.970697, 0.211022, 0.114967,
		-0.203066, 0.976122, -0.077133,
		35.050220, 29.781511, 40.767242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583035, 29.461933, 41.300850>,  <35.192368, 29.098225, 40.821236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583035, 29.461933, 41.300850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259354, 29.681992, 41.218353>,  <35.065144, 29.814026, 41.168854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259354, 29.681992, 41.218353>,  <35.583035, 29.461933, 41.300850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259354, 29.681992, 41.218353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177842, 0.105210, 0.978419,
		0.559970, 0.828416, 0.012703,
		-0.809201, 0.550144, -0.206241,
		35.016594, 29.847034, 41.156483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736988, 30.151440, 41.625820>,  <35.583035, 29.461933, 41.300850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736988, 30.151440, 41.625820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344513, 30.101299, 41.567093>,  <35.109028, 30.071215, 41.531857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344513, 30.101299, 41.567093>,  <35.736988, 30.151440, 41.625820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344513, 30.101299, 41.567093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185329, 0.398719, 0.898151,
		-0.054045, 0.908466, -0.414450,
		-0.981189, -0.125350, -0.146816,
		35.050156, 30.063694, 41.523048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588150, 30.729589, 42.122868>,  <35.736988, 30.151440, 41.625820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588150, 30.729589, 42.122868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256847, 30.530785, 42.019352>,  <35.058067, 30.411501, 41.957241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.256847, 30.530785, 42.019352>,  <35.588150, 30.729589, 42.122868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256847, 30.530785, 42.019352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449908, 0.314540, 0.835851,
		-0.334029, 0.808730, -0.484129,
		-0.828256, -0.497012, -0.258789,
		35.008369, 30.381681, 41.941715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965183, 31.140633, 42.105526>,  <35.588150, 30.729589, 42.122868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965183, 31.140633, 42.105526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866554, 30.758720, 42.171974>,  <34.807377, 30.529573, 42.211842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866554, 30.758720, 42.171974>,  <34.965183, 31.140633, 42.105526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866554, 30.758720, 42.171974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099247, 0.195385, 0.975692,
		-0.964030, 0.224090, -0.142936,
		-0.246571, -0.954782, 0.166117,
		34.792583, 30.472286, 42.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353447, 31.086113, 42.421745>,  <34.965183, 31.140633, 42.105526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353447, 31.086113, 42.421745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519238, 30.736618, 42.523560>,  <34.618713, 30.526920, 42.584648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519238, 30.736618, 42.523560>,  <34.353447, 31.086113, 42.421745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519238, 30.736618, 42.523560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321288, 0.121197, 0.939194,
		-0.851460, -0.471052, -0.230489,
		0.414475, -0.873740, 0.254538,
		34.643581, 30.474497, 42.599922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902626, 30.853346, 42.752254>,  <34.353447, 31.086113, 42.421745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902626, 30.853346, 42.752254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203468, 30.620396, 42.875660>,  <34.383972, 30.480625, 42.949703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203468, 30.620396, 42.875660>,  <33.902626, 30.853346, 42.752254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203468, 30.620396, 42.875660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424683, -0.070295, 0.902609,
		-0.503972, -0.809874, -0.300195,
		0.752102, -0.582377, 0.308513,
		34.429100, 30.445683, 42.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546249, 30.361454, 43.157578>,  <33.902626, 30.853346, 42.752254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546249, 30.361454, 43.157578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926834, 30.332775, 43.277298>,  <34.155186, 30.315567, 43.349129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926834, 30.332775, 43.277298>,  <33.546249, 30.361454, 43.157578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926834, 30.332775, 43.277298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307738, -0.234880, 0.922024,
		0.004192, -0.969377, -0.245544,
		0.951462, -0.071698, 0.299299,
		34.212273, 30.311266, 43.367088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611298, 29.713509, 43.651093>,  <33.546249, 30.361454, 43.157578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611298, 29.713509, 43.651093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928772, 29.942430, 43.733585>,  <34.119255, 30.079784, 43.783081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928772, 29.942430, 43.733585>,  <33.611298, 29.713509, 43.651093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928772, 29.942430, 43.733585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323428, 0.109857, 0.939854,
		0.515228, -0.812649, 0.272291,
		0.793684, 0.572306, 0.206232,
		34.166878, 30.114122, 43.795456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621826, 29.753759, 44.339046>,  <33.611298, 29.713509, 43.651093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621826, 29.753759, 44.339046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.944572, 29.987400, 44.303753>,  <34.138222, 30.127584, 44.282578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.944572, 29.987400, 44.303753>,  <33.621826, 29.753759, 44.339046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944572, 29.987400, 44.303753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042022, 0.205739, 0.977704,
		0.589233, -0.785172, 0.190550,
		0.806869, 0.584103, -0.088234,
		34.186634, 30.162630, 44.277283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133217, 29.507208, 44.717731>,  <33.621826, 29.753759, 44.339046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133217, 29.507208, 44.717731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231308, 29.892893, 44.677422>,  <34.290161, 30.124304, 44.653236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231308, 29.892893, 44.677422>,  <34.133217, 29.507208, 44.717731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231308, 29.892893, 44.677422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057402, 0.089330, 0.994347,
		0.967765, -0.249624, -0.033442,
		0.245225, 0.964214, -0.100779,
		34.304874, 30.182158, 44.647186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792526, 29.693727, 45.263550>,  <34.133217, 29.507208, 44.717731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792526, 29.693727, 45.263550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594044, 30.028759, 45.172119>,  <34.474957, 30.229778, 45.117260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.594044, 30.028759, 45.172119>,  <34.792526, 29.693727, 45.263550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594044, 30.028759, 45.172119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029645, 0.246776, 0.968619,
		0.867701, 0.487407, -0.097621,
		-0.496202, 0.837578, -0.228577,
		34.445183, 30.280033, 45.103546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188122, 30.333834, 45.432156>,  <34.792526, 29.693727, 45.263550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188122, 30.333834, 45.432156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798187, 30.422836, 45.437584>,  <34.564228, 30.476238, 45.440842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798187, 30.422836, 45.437584>,  <35.188122, 30.333834, 45.432156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798187, 30.422836, 45.437584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040795, 0.118223, 0.992149,
		0.219156, 0.967737, -0.124325,
		-0.974837, 0.222507, 0.013569,
		34.505737, 30.489588, 45.441654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119221, 30.753344, 45.961159>,  <35.188122, 30.333834, 45.432156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119221, 30.753344, 45.961159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726727, 30.707909, 45.898827>,  <34.491230, 30.680647, 45.861427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.726727, 30.707909, 45.898827>,  <35.119221, 30.753344, 45.961159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726727, 30.707909, 45.898827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155717, -0.009897, 0.987752,
		-0.113739, 0.993479, -0.007977,
		-0.981232, -0.113588, -0.155828,
		34.432358, 30.673832, 45.852077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.268118, 31.492977, 43.728683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535536, 31.195509, 43.729023>,  <28.695988, 31.017029, 43.729225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535536, 31.195509, 43.729023>,  <28.268118, 31.492977, 43.728683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535536, 31.195509, 43.729023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482721, 0.433091, -0.761191,
		0.565708, 0.509301, 0.648527,
		0.668547, -0.743669, 0.000848,
		28.736099, 30.972408, 43.729279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986179, 31.797857, 43.890335>,  <28.268118, 31.492977, 43.728683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986179, 31.797857, 43.890335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001932, 31.452122, 43.689789>,  <29.011383, 31.244680, 43.569462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001932, 31.452122, 43.689789>,  <28.986179, 31.797857, 43.890335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001932, 31.452122, 43.689789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465087, 0.459948, -0.756401,
		0.884389, -0.203392, 0.420105,
		0.039381, -0.864338, -0.501367,
		29.013746, 31.192820, 43.539379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407640, 31.949484, 43.477833>,  <28.986179, 31.797857, 43.890335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407640, 31.949484, 43.477833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331982, 31.600128, 43.298317>,  <29.286587, 31.390514, 43.190609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331982, 31.600128, 43.298317>,  <29.407640, 31.949484, 43.477833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331982, 31.600128, 43.298317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376539, 0.357591, -0.854603,
		0.906886, -0.330632, 0.261228,
		-0.189146, -0.873390, -0.448790,
		29.275238, 31.338112, 43.163681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006952, 31.672981, 43.140034>,  <29.407640, 31.949484, 43.477833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006952, 31.672981, 43.140034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.719999, 31.473587, 42.945354>,  <29.547827, 31.353951, 42.828548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.719999, 31.473587, 42.945354>,  <30.006952, 31.672981, 43.140034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719999, 31.473587, 42.945354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455488, 0.193009, -0.869067,
		0.527154, -0.845139, 0.088592,
		-0.717384, -0.498484, -0.486696,
		29.504784, 31.324041, 42.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229719, 31.055786, 42.653683>,  <30.006952, 31.672981, 43.140034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229719, 31.055786, 42.653683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874964, 31.177641, 42.514759>,  <29.662111, 31.250753, 42.431404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874964, 31.177641, 42.514759>,  <30.229719, 31.055786, 42.653683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874964, 31.177641, 42.514759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407796, 0.162954, -0.898414,
		-0.217095, -0.938425, -0.268752,
		-0.886889, 0.304637, -0.347310,
		29.608896, 31.269032, 42.410564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182917, 30.795849, 41.960171>,  <30.229719, 31.055786, 42.653683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182917, 30.795849, 41.960171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874556, 31.050568, 41.965775>,  <29.689539, 31.203400, 41.969135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874556, 31.050568, 41.965775>,  <30.182917, 30.795849, 41.960171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874556, 31.050568, 41.965775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119829, 0.166591, -0.978718,
		-0.625578, -0.752819, -0.204733,
		-0.770904, 0.636797, 0.014006,
		29.643284, 31.241606, 41.969975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760868, 30.573839, 41.366741>,  <30.182917, 30.795849, 41.960171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760868, 30.573839, 41.366741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647024, 30.948286, 41.449375>,  <29.578718, 31.172955, 41.498955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647024, 30.948286, 41.449375>,  <29.760868, 30.573839, 41.366741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647024, 30.948286, 41.449375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216783, 0.272766, -0.937339,
		-0.933811, -0.221991, -0.280567,
		-0.284610, 0.936119, 0.206588,
		29.561642, 31.229122, 41.511353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304962, 30.796043, 40.860722>,  <29.760868, 30.573839, 41.366741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304962, 30.796043, 40.860722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464413, 31.135614, 40.999527>,  <29.560083, 31.339357, 41.082809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464413, 31.135614, 40.999527>,  <29.304962, 30.796043, 40.860722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464413, 31.135614, 40.999527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356222, 0.205344, -0.911559,
		-0.845106, 0.486984, -0.220552,
		0.398626, 0.848929, 0.347012,
		29.584000, 31.390293, 41.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149416, 31.421541, 40.413544>,  <29.304962, 30.796043, 40.860722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149416, 31.421541, 40.413544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474134, 31.524734, 40.623089>,  <29.668966, 31.586651, 40.748814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474134, 31.524734, 40.623089>,  <29.149416, 31.421541, 40.413544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474134, 31.524734, 40.623089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436597, 0.327583, -0.837897,
		-0.387771, 0.908919, 0.153296,
		0.811798, 0.257984, 0.523859,
		29.717674, 31.602129, 40.780247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218994, 32.070881, 40.209606>,  <29.149416, 31.421541, 40.413544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218994, 32.070881, 40.209606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577953, 31.997242, 40.369999>,  <29.793329, 31.953058, 40.466236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577953, 31.997242, 40.369999>,  <29.218994, 32.070881, 40.209606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577953, 31.997242, 40.369999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437328, 0.491655, -0.753007,
		-0.058522, 0.851107, 0.521719,
		0.897396, -0.184095, 0.400986,
		29.847172, 31.942013, 40.490295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627794, 32.724316, 40.232822>,  <29.218994, 32.070881, 40.209606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627794, 32.724316, 40.232822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883841, 32.417023, 40.236385>,  <30.037468, 32.232647, 40.238522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883841, 32.417023, 40.236385>,  <29.627794, 32.724316, 40.232822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883841, 32.417023, 40.236385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487801, 0.397446, -0.777230,
		0.593552, 0.501859, 0.629153,
		0.640115, -0.768228, 0.008903,
		30.075874, 32.186554, 40.239056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163696, 33.057865, 40.117702>,  <29.627794, 32.724316, 40.232822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163696, 33.057865, 40.117702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250393, 32.678493, 40.025177>,  <30.302410, 32.450871, 39.969662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250393, 32.678493, 40.025177>,  <30.163696, 33.057865, 40.117702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250393, 32.678493, 40.025177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424334, 0.304922, -0.852621,
		0.879184, 0.086642, 0.468539,
		0.216741, -0.948428, -0.231317,
		30.315414, 32.393967, 39.955780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627390, 33.172604, 39.559685>,  <30.163696, 33.057865, 40.117702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627390, 33.172604, 39.559685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588552, 32.774841, 39.543068>,  <30.565250, 32.536182, 39.533096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588552, 32.774841, 39.543068>,  <30.627390, 33.172604, 39.559685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588552, 32.774841, 39.543068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445178, -0.006058, -0.895422,
		0.890162, -0.105436, 0.443277,
		-0.097095, -0.994408, -0.041545,
		30.559423, 32.476521, 39.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238792, 32.803776, 39.560696>,  <30.627390, 33.172604, 39.559685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238792, 32.803776, 39.560696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934839, 32.624931, 39.371944>,  <30.752466, 32.517624, 39.258694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934839, 32.624931, 39.371944>,  <31.238792, 32.803776, 39.560696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934839, 32.624931, 39.371944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352165, 0.327004, -0.876954,
		0.546403, -0.832561, -0.091027,
		-0.759884, -0.447113, -0.471875,
		30.706875, 32.490799, 39.230381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877991, 33.104206, 39.672646>,  <31.238792, 32.803776, 39.560696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877991, 33.104206, 39.672646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926630, 33.500778, 39.691715>,  <31.955814, 33.738724, 39.703159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926630, 33.500778, 39.691715>,  <31.877991, 33.104206, 39.672646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926630, 33.500778, 39.691715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317346, -0.006679, 0.948286,
		0.940481, -0.130441, 0.313816,
		0.121599, 0.991434, 0.047677,
		31.963110, 33.798210, 39.706017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249428, 33.159027, 40.252838>,  <31.877991, 33.104206, 39.672646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249428, 33.159027, 40.252838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 33.512383, 40.176640>,  <31.975391, 33.724396, 40.130920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 33.512383, 40.176640>,  <32.249428, 33.159027, 40.252838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078156, 33.512383, 40.176640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376410, 0.017298, 0.926292,
		0.821568, 0.468326, 0.325109,
		-0.428183, 0.883386, -0.190494,
		31.949701, 33.777397, 40.119492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444141, 33.551182, 40.723946>,  <32.249428, 33.159027, 40.252838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444141, 33.551182, 40.723946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112354, 33.737003, 40.599899>,  <31.913280, 33.848495, 40.525471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112354, 33.737003, 40.599899>,  <32.444141, 33.551182, 40.723946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112354, 33.737003, 40.599899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356167, -0.012227, 0.934342,
		0.430257, 0.885462, 0.175599,
		-0.829472, 0.464550, -0.310112,
		31.863512, 33.876369, 40.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373878, 34.129436, 41.141891>,  <32.444141, 33.551182, 40.723946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373878, 34.129436, 41.141891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004795, 34.078945, 40.996193>,  <31.783346, 34.048653, 40.908772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004795, 34.078945, 40.996193>,  <32.373878, 34.129436, 41.141891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004795, 34.078945, 40.996193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373271, 0.056426, 0.926005,
		-0.096333, 0.990395, -0.099181,
		-0.922707, -0.126226, -0.364250,
		31.727983, 34.041077, 40.886917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974678, 34.704693, 41.306705>,  <32.373878, 34.129436, 41.141891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974678, 34.704693, 41.306705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711271, 34.407291, 41.260124>,  <31.553226, 34.228851, 41.232178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711271, 34.407291, 41.260124>,  <31.974678, 34.704693, 41.306705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711271, 34.407291, 41.260124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272241, 0.091092, 0.957908,
		-0.701598, 0.662501, -0.262397,
		-0.658517, -0.743502, -0.116450,
		31.513716, 34.184242, 41.225189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366262, 34.973267, 41.634628>,  <31.974678, 34.704693, 41.306705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366262, 34.973267, 41.634628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.276079, 34.586365, 41.587994>,  <31.221970, 34.354225, 41.560013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.276079, 34.586365, 41.587994>,  <31.366262, 34.973267, 41.634628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276079, 34.586365, 41.587994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499722, 0.012088, 0.866101,
		-0.836330, 0.253527, -0.486083,
		-0.225456, -0.967253, -0.116583,
		31.208443, 34.296188, 41.553020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732450, 34.972019, 41.853153>,  <31.366262, 34.973267, 41.634628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732450, 34.972019, 41.853153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.821871, 34.584488, 41.895870>,  <30.875523, 34.351971, 41.921501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.821871, 34.584488, 41.895870>,  <30.732450, 34.972019, 41.853153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821871, 34.584488, 41.895870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292316, 0.037884, 0.955571,
		-0.929826, -0.244836, -0.274734,
		0.223550, -0.968824, 0.106795,
		30.888935, 34.293842, 41.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071709, 34.610676, 42.085564>,  <30.732450, 34.972019, 41.853153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071709, 34.610676, 42.085564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.385605, 34.391899, 42.202209>,  <30.573942, 34.260632, 42.272198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.385605, 34.391899, 42.202209>,  <30.071709, 34.610676, 42.085564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385605, 34.391899, 42.202209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397072, -0.082346, 0.914086,
		-0.475940, -0.833110, -0.281795,
		0.784739, -0.546943, 0.291613,
		30.621027, 34.227818, 42.289692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811209, 34.086803, 42.475449>,  <30.071709, 34.610676, 42.085564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811209, 34.086803, 42.475449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194204, 34.056454, 42.586773>,  <30.424002, 34.038246, 42.653568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194204, 34.056454, 42.586773>,  <29.811209, 34.086803, 42.475449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194204, 34.056454, 42.586773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279691, -0.480375, 0.831271,
		0.070627, -0.873775, -0.481174,
		0.957488, -0.075870, 0.278315,
		30.481451, 34.033691, 42.670269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915672, 33.471058, 42.508221>,  <29.811209, 34.086803, 42.475449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915672, 33.471058, 42.508221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205471, 33.620377, 42.739998>,  <30.379351, 33.709969, 42.879063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205471, 33.620377, 42.739998>,  <29.915672, 33.471058, 42.508221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205471, 33.620377, 42.739998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329531, -0.550769, 0.766852,
		0.605403, -0.746526, -0.276017,
		0.724497, 0.373298, 0.579441,
		30.422821, 33.732365, 42.913830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152691, 32.918633, 43.052120>,  <29.915672, 33.471058, 42.508221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152691, 32.918633, 43.052120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297310, 33.256626, 43.209740>,  <30.384081, 33.459423, 43.304314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297310, 33.256626, 43.209740>,  <30.152691, 32.918633, 43.052120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297310, 33.256626, 43.209740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167837, -0.356753, 0.918998,
		0.917122, -0.398400, 0.012836,
		0.361550, 0.844988, 0.394052,
		30.405775, 33.510124, 43.327957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423225, 32.633945, 43.674198>,  <30.152691, 32.918633, 43.052120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423225, 32.633945, 43.674198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388186, 33.025257, 43.749348>,  <30.367161, 33.260044, 43.794437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388186, 33.025257, 43.749348>,  <30.423225, 32.633945, 43.674198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388186, 33.025257, 43.749348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218411, -0.202871, 0.954537,
		0.971917, 0.042585, 0.231438,
		-0.087601, 0.978279, 0.187872,
		30.361906, 33.318741, 43.805710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874840, 32.808327, 44.236477>,  <30.423225, 32.633945, 43.674198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874840, 32.808327, 44.236477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579786, 33.077366, 44.212791>,  <30.402754, 33.238789, 44.198578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579786, 33.077366, 44.212791>,  <30.874840, 32.808327, 44.236477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579786, 33.077366, 44.212791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324539, -0.276277, 0.904624,
		0.592088, 0.686500, 0.422076,
		-0.737635, 0.672598, -0.059216,
		30.358496, 33.279144, 44.195026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928370, 33.133957, 44.876579>,  <30.874840, 32.808327, 44.236477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928370, 33.133957, 44.876579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.561892, 33.217976, 44.740074>,  <30.342005, 33.268387, 44.658169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.561892, 33.217976, 44.740074>,  <30.928370, 33.133957, 44.876579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561892, 33.217976, 44.740074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399376, -0.408686, 0.820655,
		0.032909, 0.888175, 0.458326,
		-0.916196, 0.210051, -0.341266,
		30.287033, 33.280991, 44.637695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345741, 33.707767, 45.332867>,  <30.928370, 33.133957, 44.876579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345741, 33.707767, 45.332867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711037, 33.627190, 45.474525>,  <31.930214, 33.578842, 45.559521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711037, 33.627190, 45.474525>,  <31.345741, 33.707767, 45.332867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711037, 33.627190, 45.474525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407397, 0.461906, -0.787826,
		-0.004878, 0.863750, 0.503897,
		0.913238, -0.201443, 0.354142,
		31.985008, 33.566757, 45.580769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702950, 34.335041, 45.357010>,  <31.345741, 33.707767, 45.332867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702950, 34.335041, 45.357010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.977999, 34.044777, 45.347275>,  <32.143028, 33.870617, 45.341434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.977999, 34.044777, 45.347275>,  <31.702950, 34.335041, 45.357010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977999, 34.044777, 45.347275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475060, 0.475006, -0.740734,
		0.549084, 0.497782, 0.671357,
		0.687623, -0.725660, -0.024342,
		32.184284, 33.827080, 45.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241329, 34.670715, 45.117847>,  <31.702950, 34.335041, 45.357010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241329, 34.670715, 45.117847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350159, 34.292866, 45.044464>,  <32.415455, 34.066154, 45.000435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350159, 34.292866, 45.044464>,  <32.241329, 34.670715, 45.117847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350159, 34.292866, 45.044464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512054, 0.303539, -0.803532,
		0.814725, 0.124678, 0.566285,
		0.272073, -0.944626, -0.183459,
		32.431782, 34.009480, 44.989426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968613, 34.745373, 45.184124>,  <32.241329, 34.670715, 45.117847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968613, 34.745373, 45.184124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863525, 34.424900, 44.969059>,  <32.800472, 34.232616, 44.840019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863525, 34.424900, 44.969059>,  <32.968613, 34.745373, 45.184124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863525, 34.424900, 44.969059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750507, 0.180530, -0.635726,
		0.606399, -0.570536, 0.553867,
		-0.262715, -0.801185, -0.537665,
		32.784710, 34.184544, 44.807758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557999, 34.707088, 44.788803>,  <32.968613, 34.745373, 45.184124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557999, 34.707088, 44.788803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321751, 34.431126, 44.621376>,  <33.180004, 34.265549, 44.520920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321751, 34.431126, 44.621376>,  <33.557999, 34.707088, 44.788803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321751, 34.431126, 44.621376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574667, 0.004544, -0.818375,
		0.566508, -0.723880, 0.393785,
		-0.590615, -0.689911, -0.418564,
		33.144566, 34.224152, 44.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980560, 34.177208, 44.475941>,  <33.557999, 34.707088, 44.788803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980560, 34.177208, 44.475941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626446, 34.153000, 44.291508>,  <33.413975, 34.138477, 44.180847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626446, 34.153000, 44.291508>,  <33.980560, 34.177208, 44.475941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626446, 34.153000, 44.291508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464280, -0.058297, -0.883768,
		0.026605, -0.996463, 0.079708,
		-0.885289, -0.060519, -0.461087,
		33.360859, 34.134846, 44.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037144, 33.625278, 43.974854>,  <33.980560, 34.177208, 44.475941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037144, 33.625278, 43.974854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726334, 33.837200, 43.838886>,  <33.539848, 33.964352, 43.757305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726334, 33.837200, 43.838886>,  <34.037144, 33.625278, 43.974854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726334, 33.837200, 43.838886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415349, 0.025754, -0.909298,
		-0.472993, -0.847731, -0.240064,
		-0.777022, 0.529802, -0.339923,
		33.493225, 33.996140, 43.736908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768543, 33.282070, 43.391567>,  <34.037144, 33.625278, 43.974854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768543, 33.282070, 43.391567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649673, 33.663582, 43.373669>,  <33.578354, 33.892487, 43.362930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649673, 33.663582, 43.373669>,  <33.768543, 33.282070, 43.391567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649673, 33.663582, 43.373669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293230, 0.046564, -0.954907,
		-0.908683, -0.296892, -0.293513,
		-0.297171, 0.953775, -0.044746,
		33.560520, 33.949715, 43.360245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264980, 33.298313, 42.795345>,  <33.768543, 33.282070, 43.391567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264980, 33.298313, 42.795345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424633, 33.654678, 42.882038>,  <33.520424, 33.868496, 42.934055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424633, 33.654678, 42.882038>,  <33.264980, 33.298313, 42.795345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424633, 33.654678, 42.882038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345588, 0.072770, -0.935561,
		-0.849271, 0.448315, -0.278842,
		0.399134, 0.890909, 0.216733,
		33.544373, 33.921951, 42.947060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136223, 33.653465, 42.222919>,  <33.264980, 33.298313, 42.795345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136223, 33.653465, 42.222919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445732, 33.835709, 42.398964>,  <33.631435, 33.945053, 42.504593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445732, 33.835709, 42.398964>,  <33.136223, 33.653465, 42.222919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445732, 33.835709, 42.398964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476634, 0.038894, -0.878241,
		-0.417253, 0.889330, -0.187064,
		0.773770, 0.455610, 0.440113,
		33.677864, 33.972393, 42.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262184, 34.152477, 41.729008>,  <33.136223, 33.653465, 42.222919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262184, 34.152477, 41.729008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596653, 34.130890, 41.947330>,  <33.797333, 34.117939, 42.078323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596653, 34.130890, 41.947330>,  <33.262184, 34.152477, 41.729008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596653, 34.130890, 41.947330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547599, 0.138123, -0.825262,
		-0.030851, 0.988944, 0.145047,
		0.836172, -0.053968, 0.545806,
		33.847504, 34.114700, 42.111073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730740, 34.772789, 41.528221>,  <33.262184, 34.152477, 41.729008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730740, 34.772789, 41.528221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947437, 34.488251, 41.707329>,  <34.077457, 34.317528, 41.814793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947437, 34.488251, 41.707329>,  <33.730740, 34.772789, 41.528221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947437, 34.488251, 41.707329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601964, -0.043455, -0.797340,
		0.586641, 0.701499, 0.404662,
		0.541749, -0.711344, 0.447770,
		34.109962, 34.274849, 41.841660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434135, 34.914066, 41.521309>,  <33.730740, 34.772789, 41.528221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434135, 34.914066, 41.521309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426609, 34.516888, 41.568123>,  <34.422092, 34.278580, 41.596210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426609, 34.516888, 41.568123>,  <34.434135, 34.914066, 41.521309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426609, 34.516888, 41.568123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612200, -0.103987, -0.783836,
		0.790479, 0.056897, 0.609841,
		-0.018818, -0.992950, 0.117032,
		34.420963, 34.219002, 41.603233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217995, 34.754967, 41.511940>,  <34.434135, 34.914066, 41.521309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217995, 34.754967, 41.511940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.436954, 41.424164>,  <34.856087, 34.246147, 41.371498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.436954, 41.424164>,  <35.217995, 34.754967, 41.511940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991802, 34.436954, 41.424164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548340, -0.163664, -0.820084,
		0.616078, -0.584071, 0.528496,
		-0.565483, -0.795032, -0.219440,
		34.822159, 34.198444, 41.358334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.160034, 40.565979, 37.174946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.999569, 40.789791, 36.884846>,  <26.903290, 40.924080, 36.710785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.999569, 40.789791, 36.884846>,  <27.160034, 40.565979, 37.174946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999569, 40.789791, 36.884846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535441, -0.785643, -0.309948,
		-0.743215, 0.263989, 0.614769,
		-0.401166, 0.559530, -0.725253,
		26.879219, 40.957649, 36.667271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414185, 40.533512, 37.178009>,  <27.160034, 40.565979, 37.174946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414185, 40.533512, 37.178009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486322, 40.640873, 36.799500>,  <26.529604, 40.705288, 36.572395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486322, 40.640873, 36.799500>,  <26.414185, 40.533512, 37.178009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486322, 40.640873, 36.799500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631892, -0.705650, -0.320579,
		-0.753783, 0.655757, 0.042343,
		0.180343, 0.268403, -0.946275,
		26.540424, 40.721394, 36.515617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776739, 40.559818, 36.790951>,  <26.414185, 40.533512, 37.178009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776739, 40.559818, 36.790951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046619, 40.512772, 36.499485>,  <26.208548, 40.484543, 36.324608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046619, 40.512772, 36.499485>,  <25.776739, 40.559818, 36.790951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046619, 40.512772, 36.499485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512830, -0.784713, -0.348183,
		-0.530836, 0.608598, -0.589764,
		0.674699, -0.117621, -0.728661,
		26.249029, 40.477486, 36.280888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399864, 40.483559, 36.261078>,  <25.776739, 40.559818, 36.790951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399864, 40.483559, 36.261078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742949, 40.319706, 36.136799>,  <25.948799, 40.221394, 36.062233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742949, 40.319706, 36.136799>,  <25.399864, 40.483559, 36.261078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742949, 40.319706, 36.136799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513220, -0.718085, -0.470063,
		-0.030553, 0.562634, -0.826141,
		0.857713, -0.409630, -0.310695,
		26.000263, 40.196815, 36.043591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381578, 40.348083, 35.468964>,  <25.399864, 40.483559, 36.261078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381578, 40.348083, 35.468964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.676052, 40.121307, 35.616806>,  <25.852736, 39.985241, 35.705513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.676052, 40.121307, 35.616806>,  <25.381578, 40.348083, 35.468964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676052, 40.121307, 35.616806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306559, -0.766230, -0.564725,
		0.603369, 0.302436, -0.737888,
		0.736185, -0.566943, 0.369605,
		25.896908, 39.951225, 35.727688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599993, 39.952354, 34.824780>,  <25.381578, 40.348083, 35.468964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599993, 39.952354, 34.824780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745564, 39.784763, 35.157532>,  <25.832907, 39.684208, 35.357182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745564, 39.784763, 35.157532>,  <25.599993, 39.952354, 34.824780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745564, 39.784763, 35.157532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024512, -0.897118, -0.441110,
		0.931105, 0.140140, -0.336755,
		0.363926, -0.418974, 0.831876,
		25.854742, 39.659073, 35.407093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024408, 39.394302, 34.639977>,  <25.599993, 39.952354, 34.824780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024408, 39.394302, 34.639977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956831, 39.304073, 35.023762>,  <25.916285, 39.249935, 35.254032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956831, 39.304073, 35.023762>,  <26.024408, 39.394302, 34.639977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956831, 39.304073, 35.023762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065036, -0.968786, -0.239215,
		0.983478, -0.102813, 0.148999,
		-0.168942, -0.225572, 0.959467,
		25.906149, 39.236401, 35.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444258, 38.873516, 34.727699>,  <26.024408, 39.394302, 34.639977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444258, 38.873516, 34.727699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173777, 38.826309, 35.018581>,  <26.011488, 38.797985, 35.193111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173777, 38.826309, 35.018581>,  <26.444258, 38.873516, 34.727699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173777, 38.826309, 35.018581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047436, -0.978063, -0.202838,
		0.735187, -0.171655, 0.655770,
		-0.676202, -0.118017, 0.727202,
		25.970917, 38.790905, 35.236740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643219, 38.228951, 35.047539>,  <26.444258, 38.873516, 34.727699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643219, 38.228951, 35.047539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266027, 38.283981, 35.168774>,  <26.039713, 38.317001, 35.241516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266027, 38.283981, 35.168774>,  <26.643219, 38.228951, 35.047539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266027, 38.283981, 35.168774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096182, -0.984362, 0.147580,
		0.318655, 0.110012, 0.941465,
		-0.942978, 0.137579, 0.303090,
		25.983133, 38.325256, 35.259701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600719, 37.943356, 35.689278>,  <26.643219, 38.228951, 35.047539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600719, 37.943356, 35.689278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.238407, 37.915859, 35.522022>,  <26.021019, 37.899361, 35.421669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.238407, 37.915859, 35.522022>,  <26.600719, 37.943356, 35.689278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238407, 37.915859, 35.522022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007103, -0.984153, 0.177178,
		-0.423687, 0.163454, 0.890939,
		-0.905781, -0.068739, -0.418134,
		25.966673, 37.895237, 35.396584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176252, 37.503250, 36.223736>,  <26.600719, 37.943356, 35.689278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176252, 37.503250, 36.223736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999878, 37.502235, 35.864723>,  <25.894054, 37.501625, 35.649315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999878, 37.502235, 35.864723>,  <26.176252, 37.503250, 36.223736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999878, 37.502235, 35.864723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111238, -0.992441, -0.051838,
		-0.890620, -0.122698, 0.437884,
		-0.440934, -0.002541, -0.897536,
		25.867598, 37.501472, 35.595463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779470, 36.882957, 36.209694>,  <26.176252, 37.503250, 36.223736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779470, 36.882957, 36.209694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831131, 36.978176, 35.824642>,  <25.862127, 37.035305, 35.593613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831131, 36.978176, 35.824642>,  <25.779470, 36.882957, 36.209694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831131, 36.978176, 35.824642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307269, -0.932586, -0.189390,
		-0.942818, -0.271327, -0.193589,
		0.129152, 0.238044, -0.962629,
		25.869877, 37.049591, 35.535854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487993, 36.288372, 35.755505>,  <25.779470, 36.882957, 36.209694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487993, 36.288372, 35.755505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.738050, 36.476982, 35.506710>,  <25.888084, 36.590149, 35.357433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.738050, 36.476982, 35.506710>,  <25.487993, 36.288372, 35.755505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738050, 36.476982, 35.506710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414015, -0.875872, -0.247872,
		-0.661654, -0.102554, -0.742763,
		0.625144, 0.471521, -0.621983,
		25.925594, 36.618439, 35.320114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421192, 36.035309, 34.955551>,  <25.487993, 36.288372, 35.755505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421192, 36.035309, 34.955551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782497, 36.187588, 35.034729>,  <25.999281, 36.278957, 35.082233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782497, 36.187588, 35.034729>,  <25.421192, 36.035309, 34.955551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782497, 36.187588, 35.034729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425003, -0.857264, -0.290639,
		0.059041, 0.346649, -0.936135,
		0.903264, 0.380701, 0.197940,
		26.053476, 36.301800, 35.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779402, 35.690975, 34.487358>,  <25.421192, 36.035309, 34.955551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779402, 35.690975, 34.487358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057171, 35.860603, 34.719887>,  <26.223833, 35.962379, 34.859406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.057171, 35.860603, 34.719887>,  <25.779402, 35.690975, 34.487358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057171, 35.860603, 34.719887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594054, -0.793754, -0.130595,
		0.406048, 0.436027, -0.803122,
		0.694424, 0.424069, 0.581326,
		26.265499, 35.987823, 34.894283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415552, 35.630207, 34.123325>,  <25.779402, 35.690975, 34.487358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415552, 35.630207, 34.123325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511980, 35.663658, 34.510086>,  <26.569836, 35.683727, 34.742142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511980, 35.663658, 34.510086>,  <26.415552, 35.630207, 34.123325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511980, 35.663658, 34.510086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606930, -0.790413, -0.082960,
		0.757312, 0.606839, -0.241298,
		0.241068, 0.083625, 0.966899,
		26.584301, 35.688747, 34.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131615, 35.470032, 34.107796>,  <26.415552, 35.630207, 34.123325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131615, 35.470032, 34.107796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030022, 35.408798, 34.489803>,  <26.969067, 35.372059, 34.719009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030022, 35.408798, 34.489803>,  <27.131615, 35.470032, 34.107796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030022, 35.408798, 34.489803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624561, -0.779895, 0.041086,
		0.738524, 0.606902, 0.293689,
		-0.253981, -0.153084, 0.955018,
		26.953827, 35.362873, 34.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665829, 35.340279, 34.458366>,  <27.131615, 35.470032, 34.107796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665829, 35.340279, 34.458366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402765, 35.196243, 34.723038>,  <27.244926, 35.109821, 34.881840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402765, 35.196243, 34.723038>,  <27.665829, 35.340279, 34.458366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402765, 35.196243, 34.723038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582420, -0.800131, 0.143448,
		0.477779, 0.479717, 0.735934,
		-0.657658, -0.360086, 0.661683,
		27.205467, 35.088219, 34.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041502, 35.024681, 35.022339>,  <27.665829, 35.340279, 34.458366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041502, 35.024681, 35.022339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686344, 34.848862, 35.076653>,  <27.473249, 34.743370, 35.109241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686344, 34.848862, 35.076653>,  <28.041502, 35.024681, 35.022339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686344, 34.848862, 35.076653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458696, -0.823245, 0.334463,
		-0.035227, 0.359253, 0.932575,
		-0.887895, -0.439551, 0.135787,
		27.419975, 34.716995, 35.117390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057831, 34.722660, 35.670277>,  <28.041502, 35.024681, 35.022339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057831, 34.722660, 35.670277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792202, 34.513943, 35.456085>,  <27.632824, 34.388714, 35.327568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792202, 34.513943, 35.456085>,  <28.057831, 34.722660, 35.670277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792202, 34.513943, 35.456085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344420, -0.849180, 0.400335,
		-0.663611, 0.081421, 0.743633,
		-0.664074, -0.521789, -0.535483,
		27.592979, 34.357407, 35.295441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850992, 34.584332, 35.417282>,  <28.057831, 34.722660, 35.670277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850992, 34.584332, 35.417282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001148, 34.702797, 35.065971>,  <29.091242, 34.773876, 34.855186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001148, 34.702797, 35.065971>,  <28.850992, 34.584332, 35.417282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001148, 34.702797, 35.065971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234353, 0.886458, 0.399089,
		0.896750, -0.355641, 0.263361,
		0.375391, 0.296163, -0.878276,
		29.113766, 34.791645, 34.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406063, 34.956474, 35.537891>,  <28.850992, 34.584332, 35.417282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406063, 34.956474, 35.537891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329149, 35.078716, 35.164875>,  <29.283001, 35.152061, 34.941067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329149, 35.078716, 35.164875>,  <29.406063, 34.956474, 35.537891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329149, 35.078716, 35.164875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016089, 0.951129, 0.308375,
		0.981207, 0.044293, -0.187807,
		-0.192287, 0.305601, -0.932542,
		29.271463, 35.170395, 34.885113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683538, 35.503731, 35.638718>,  <29.406063, 34.956474, 35.537891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683538, 35.503731, 35.638718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496458, 35.560280, 35.289715>,  <29.384211, 35.594208, 35.080315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.496458, 35.560280, 35.289715>,  <29.683538, 35.503731, 35.638718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496458, 35.560280, 35.289715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097732, 0.989345, 0.107912,
		0.878467, -0.034801, -0.476534,
		-0.467701, 0.141370, -0.872508,
		29.356148, 35.602692, 35.027962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111412, 35.966171, 35.235111>,  <29.683538, 35.503731, 35.638718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111412, 35.966171, 35.235111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759579, 36.035057, 35.057720>,  <29.548477, 36.076389, 34.951286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759579, 36.035057, 35.057720>,  <30.111412, 35.966171, 35.235111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759579, 36.035057, 35.057720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152415, 0.985054, 0.080238,
		0.450665, 0.002984, -0.892688,
		-0.879586, 0.172219, -0.443474,
		29.495703, 36.086723, 34.924679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178574, 36.512371, 34.706787>,  <30.111412, 35.966171, 35.235111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178574, 36.512371, 34.706787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779015, 36.497261, 34.717968>,  <29.539280, 36.488197, 34.724674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779015, 36.497261, 34.717968>,  <30.178574, 36.512371, 34.706787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779015, 36.497261, 34.717968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038360, 0.999047, -0.020817,
		-0.027135, -0.021866, -0.999393,
		-0.998896, -0.037771, 0.027948,
		29.479345, 36.485931, 34.726353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002829, 36.980545, 34.281361>,  <30.178574, 36.512371, 34.706787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002829, 36.980545, 34.281361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676165, 36.934361, 34.507542>,  <29.480167, 36.906651, 34.643250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676165, 36.934361, 34.507542>,  <30.002829, 36.980545, 34.281361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676165, 36.934361, 34.507542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061099, 0.991574, 0.114226,
		-0.573878, 0.058735, -0.816832,
		-0.816658, -0.115460, 0.565454,
		29.431168, 36.899723, 34.677177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465439, 37.326859, 33.967243>,  <30.002829, 36.980545, 34.281361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465439, 37.326859, 33.967243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410017, 37.297096, 34.362267>,  <29.376764, 37.279240, 34.599281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410017, 37.297096, 34.362267>,  <29.465439, 37.326859, 33.967243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410017, 37.297096, 34.362267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149512, 0.984173, 0.095126,
		-0.979004, 0.160832, -0.125236,
		-0.138553, -0.074404, 0.987556,
		29.368450, 37.274776, 34.658535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013609, 38.001347, 34.216648>,  <29.465439, 37.326859, 33.967243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013609, 38.001347, 34.216648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159721, 37.847145, 34.555576>,  <29.247389, 37.754623, 34.758934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159721, 37.847145, 34.555576>,  <29.013609, 38.001347, 34.216648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159721, 37.847145, 34.555576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141139, 0.922635, 0.358921,
		-0.920135, -0.011517, 0.391432,
		0.365283, -0.385502, 0.847323,
		29.269306, 37.731495, 34.809772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647501, 38.303154, 34.748386>,  <29.013609, 38.001347, 34.216648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647501, 38.303154, 34.748386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999287, 38.198544, 34.907455>,  <29.210358, 38.135777, 35.002899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999287, 38.198544, 34.907455>,  <28.647501, 38.303154, 34.748386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999287, 38.198544, 34.907455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154731, 0.947229, 0.280741,
		-0.450110, -0.185369, 0.873521,
		0.879465, -0.261525, 0.397675,
		29.263126, 38.120087, 35.026756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570093, 38.591743, 35.378792>,  <28.647501, 38.303154, 34.748386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570093, 38.591743, 35.378792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958111, 38.495880, 35.362923>,  <29.190922, 38.438362, 35.353401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958111, 38.495880, 35.362923>,  <28.570093, 38.591743, 35.378792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958111, 38.495880, 35.362923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221950, 0.808028, 0.545738,
		-0.098738, -0.538195, 0.837017,
		0.970046, -0.239661, -0.039670,
		29.249125, 38.423981, 35.351021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825298, 38.637348, 36.076111>,  <28.570093, 38.591743, 35.378792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825298, 38.637348, 36.076111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135426, 38.675106, 35.826321>,  <29.321503, 38.697762, 35.676445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135426, 38.675106, 35.826321>,  <28.825298, 38.637348, 36.076111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135426, 38.675106, 35.826321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184887, 0.911527, 0.367337,
		0.603902, -0.400260, 0.689271,
		0.775319, 0.094398, -0.624475,
		29.368021, 38.703426, 35.638977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258583, 38.983784, 36.472588>,  <28.825298, 38.637348, 36.076111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258583, 38.983784, 36.472588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427971, 39.021507, 36.112194>,  <29.529604, 39.044140, 35.895958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427971, 39.021507, 36.112194>,  <29.258583, 38.983784, 36.472588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427971, 39.021507, 36.112194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311211, 0.918893, 0.242455,
		0.850777, -0.383069, 0.359773,
		0.423470, 0.094310, -0.900988,
		29.555012, 39.049801, 35.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793385, 39.481625, 36.568752>,  <29.258583, 38.983784, 36.472588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793385, 39.481625, 36.568752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.742659, 39.471443, 36.172112>,  <29.712223, 39.465332, 35.934128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.742659, 39.471443, 36.172112>,  <29.793385, 39.481625, 36.568752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742659, 39.471443, 36.172112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147987, 0.987997, -0.044289,
		0.980825, -0.152360, -0.121524,
		-0.126813, -0.025456, -0.991600,
		29.704615, 39.463806, 35.874630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227100, 39.893646, 36.301552>,  <29.793385, 39.481625, 36.568752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227100, 39.893646, 36.301552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957150, 39.882523, 36.006588>,  <29.795179, 39.875851, 35.829609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.957150, 39.882523, 36.006588>,  <30.227100, 39.893646, 36.301552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957150, 39.882523, 36.006588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045258, 0.998968, 0.003751,
		0.736541, 0.035905, -0.675439,
		-0.674877, -0.027806, -0.737406,
		29.754686, 39.874180, 35.785366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453308, 40.368469, 35.854038>,  <30.227100, 39.893646, 36.301552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453308, 40.368469, 35.854038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076160, 40.317944, 35.730721>,  <29.849873, 40.287628, 35.656731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076160, 40.317944, 35.730721>,  <30.453308, 40.368469, 35.854038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076160, 40.317944, 35.730721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064883, 0.977245, -0.201947,
		0.326787, -0.170406, -0.929609,
		-0.942868, -0.126310, -0.308295,
		29.793301, 40.280052, 35.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385962, 40.748486, 35.232979>,  <30.453308, 40.368469, 35.854038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385962, 40.748486, 35.232979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030130, 40.695293, 35.407780>,  <29.816631, 40.663380, 35.512661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.030130, 40.695293, 35.407780>,  <30.385962, 40.748486, 35.232979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030130, 40.695293, 35.407780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095090, 0.989639, 0.107581,
		-0.446777, 0.054147, -0.893005,
		-0.889577, -0.132980, 0.436999,
		29.763258, 40.655399, 35.538879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097750, 41.282520, 35.028473>,  <30.385962, 40.748486, 35.232979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097750, 41.282520, 35.028473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834957, 41.151699, 35.300182>,  <29.677280, 41.073204, 35.463207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834957, 41.151699, 35.300182>,  <30.097750, 41.282520, 35.028473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834957, 41.151699, 35.300182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428548, 0.903288, 0.020429,
		-0.620259, -0.277679, -0.733603,
		-0.656982, -0.327055, 0.679271,
		29.637863, 41.053581, 35.503963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361811, 41.383190, 34.806313>,  <30.097750, 41.282520, 35.028473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361811, 41.383190, 34.806313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407696, 41.400330, 35.203300>,  <29.435226, 41.410614, 35.441494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407696, 41.400330, 35.203300>,  <29.361811, 41.383190, 34.806313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407696, 41.400330, 35.203300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473655, 0.880551, 0.016734,
		-0.873207, -0.472010, 0.121306,
		0.114715, 0.042844, 0.992474,
		29.442110, 41.413181, 35.501041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699308, 41.612350, 35.053822>,  <29.361811, 41.383190, 34.806313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699308, 41.612350, 35.053822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967415, 41.688892, 35.340633>,  <29.128279, 41.734818, 35.512718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967415, 41.688892, 35.340633>,  <28.699308, 41.612350, 35.053822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967415, 41.688892, 35.340633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430383, 0.887342, 0.165512,
		-0.604578, -0.419533, 0.677109,
		0.670266, 0.191352, 0.717028,
		29.168495, 41.746300, 35.555740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317644, 42.063770, 35.439651>,  <28.699308, 41.612350, 35.053822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317644, 42.063770, 35.439651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.670240, 42.089481, 35.626774>,  <28.881798, 42.104908, 35.739048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.670240, 42.089481, 35.626774>,  <28.317644, 42.063770, 35.439651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670240, 42.089481, 35.626774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266984, 0.884981, 0.381480,
		-0.389479, -0.461168, 0.797264,
		0.881490, 0.064279, 0.467807,
		28.934687, 42.108765, 35.767117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219709, 42.419266, 36.056870>,  <28.317644, 42.063770, 35.439651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219709, 42.419266, 36.056870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609011, 42.472748, 35.982143>,  <28.842592, 42.504837, 35.937309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609011, 42.472748, 35.982143>,  <28.219709, 42.419266, 36.056870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609011, 42.472748, 35.982143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114774, 0.987422, 0.108746,
		0.199005, -0.084396, 0.976358,
		0.973254, 0.133702, -0.186815,
		28.900988, 42.512859, 35.926098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413624, 42.806866, 36.592716>,  <28.219709, 42.419266, 36.056870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413624, 42.806866, 36.592716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712749, 42.883759, 36.338528>,  <28.892225, 42.929893, 36.186016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712749, 42.883759, 36.338528>,  <28.413624, 42.806866, 36.592716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712749, 42.883759, 36.338528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039316, 0.968307, 0.246650,
		0.662741, -0.159464, 0.731673,
		0.747816, 0.192232, -0.635467,
		28.937094, 42.941429, 36.147888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.707100, 31.254133, 46.488197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373936, 31.059280, 46.383163>,  <34.174038, 30.942368, 46.320141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373936, 31.059280, 46.383163>,  <34.707100, 31.254133, 46.488197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373936, 31.059280, 46.383163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262769, -0.069465, 0.962355,
		-0.487037, 0.870560, -0.070145,
		-0.832915, -0.487134, -0.262588,
		34.124062, 30.913139, 46.304386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135323, 31.617912, 46.799728>,  <34.707100, 31.254133, 46.488197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135323, 31.617912, 46.799728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005993, 31.248682, 46.716404>,  <33.928394, 31.027143, 46.666409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005993, 31.248682, 46.716404>,  <34.135323, 31.617912, 46.799728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005993, 31.248682, 46.716404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490230, -0.024901, 0.871237,
		-0.809407, 0.383807, -0.444469,
		-0.323320, -0.923077, -0.208309,
		33.908997, 30.971758, 46.653912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412464, 31.620358, 46.946945>,  <34.135323, 31.617912, 46.799728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412464, 31.620358, 46.946945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558994, 31.249361, 46.976788>,  <33.646912, 31.026764, 46.994694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558994, 31.249361, 46.976788>,  <33.412464, 31.620358, 46.946945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558994, 31.249361, 46.976788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545827, -0.149263, 0.824496,
		-0.753577, -0.342753, -0.560929,
		0.366324, -0.927492, 0.074603,
		33.668892, 30.971113, 46.999168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878036, 31.263292, 47.251717>,  <33.412464, 31.620358, 46.946945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878036, 31.263292, 47.251717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174675, 31.005247, 47.325329>,  <33.352657, 30.850420, 47.369495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174675, 31.005247, 47.325329>,  <32.878036, 31.263292, 47.251717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174675, 31.005247, 47.325329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440814, -0.261819, 0.858565,
		-0.505691, -0.717828, -0.478539,
		0.741593, -0.645115, 0.184030,
		33.397152, 30.811712, 47.380539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540760, 30.577503, 47.524223>,  <32.878036, 31.263292, 47.251717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540760, 30.577503, 47.524223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922245, 30.566254, 47.643990>,  <33.151134, 30.559504, 47.715847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922245, 30.566254, 47.643990>,  <32.540760, 30.577503, 47.524223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922245, 30.566254, 47.643990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289433, -0.356163, 0.888468,
		0.081654, -0.934001, -0.347816,
		0.953709, -0.028122, 0.299413,
		33.208359, 30.557817, 47.733814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596821, 29.878332, 47.793175>,  <32.540760, 30.577503, 47.524223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596821, 29.878332, 47.793175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889320, 30.102718, 47.948399>,  <33.064819, 30.237350, 48.041531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889320, 30.102718, 47.948399>,  <32.596821, 29.878332, 47.793175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889320, 30.102718, 47.948399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208391, -0.357977, 0.910179,
		0.649494, -0.746438, -0.144871,
		0.731252, 0.560966, 0.388055,
		33.108696, 30.271008, 48.064816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949924, 29.372257, 48.192593>,  <32.596821, 29.878332, 47.793175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949924, 29.372257, 48.192593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033558, 29.742420, 48.319019>,  <33.083740, 29.964518, 48.394875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033558, 29.742420, 48.319019>,  <32.949924, 29.372257, 48.192593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033558, 29.742420, 48.319019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305246, -0.245301, 0.920137,
		0.929036, -0.288868, 0.231189,
		0.209087, 0.925409, 0.316069,
		33.096283, 30.020042, 48.413841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482952, 29.343060, 48.742016>,  <32.949924, 29.372257, 48.192593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482952, 29.343060, 48.742016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278271, 29.683912, 48.785889>,  <33.155464, 29.888424, 48.812210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278271, 29.683912, 48.785889>,  <33.482952, 29.343060, 48.742016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278271, 29.683912, 48.785889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178685, -0.230417, 0.956546,
		0.840377, 0.469868, 0.270169,
		-0.511702, 0.852134, 0.109679,
		33.124760, 29.939552, 48.818790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635014, 29.542385, 49.464367>,  <33.482952, 29.343060, 48.742016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635014, 29.542385, 49.464367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305637, 29.750866, 49.374660>,  <33.108013, 29.875954, 49.320839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305637, 29.750866, 49.374660>,  <33.635014, 29.542385, 49.464367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305637, 29.750866, 49.374660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309846, -0.081940, 0.947249,
		0.475331, 0.849491, 0.228965,
		-0.823441, 0.521201, -0.224263,
		33.058605, 29.907227, 49.307381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652611, 30.104528, 49.935261>,  <33.635014, 29.542385, 49.464367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652611, 30.104528, 49.935261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282860, 30.015043, 49.811657>,  <33.061008, 29.961351, 49.737495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282860, 30.015043, 49.811657>,  <33.652611, 30.104528, 49.935261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282860, 30.015043, 49.811657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274254, -0.173333, 0.945907,
		-0.265172, 0.959118, 0.098870,
		-0.924375, -0.223713, -0.309005,
		33.005547, 29.947929, 49.718956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285744, 30.308353, 50.500790>,  <33.652611, 30.104528, 49.935261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285744, 30.308353, 50.500790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019630, 30.097601, 50.289207>,  <32.859962, 29.971149, 50.162258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019630, 30.097601, 50.289207>,  <33.285744, 30.308353, 50.500790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019630, 30.097601, 50.289207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510831, -0.195448, 0.837169,
		-0.544473, 0.827160, -0.139120,
		-0.665282, -0.526883, -0.528956,
		32.820045, 29.939537, 50.130520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603806, 30.637928, 50.557739>,  <33.285744, 30.308353, 50.500790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603806, 30.637928, 50.557739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582512, 30.244509, 50.488689>,  <32.569736, 30.008457, 50.447262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582512, 30.244509, 50.488689>,  <32.603806, 30.637928, 50.557739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582512, 30.244509, 50.488689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583676, -0.109614, 0.804554,
		-0.810240, 0.143584, -0.568238,
		-0.053234, -0.983549, -0.172621,
		32.566540, 29.949444, 50.436905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972839, 30.390617, 50.655556>,  <32.603806, 30.637928, 50.557739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972839, 30.390617, 50.655556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181259, 30.056433, 50.725422>,  <32.306313, 29.855921, 50.767342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181259, 30.056433, 50.725422>,  <31.972839, 30.390617, 50.655556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181259, 30.056433, 50.725422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461666, -0.103745, 0.880966,
		-0.717894, -0.539666, -0.439761,
		0.521050, -0.835463, 0.174667,
		32.337574, 29.805794, 50.777821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530867, 30.985762, 50.743015>,  <31.972839, 30.390617, 50.655556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530867, 30.985762, 50.743015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147661, 30.907495, 50.659187>,  <30.917738, 30.860535, 50.608891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147661, 30.907495, 50.659187>,  <31.530867, 30.985762, 50.743015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147661, 30.907495, 50.659187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022503, 0.677371, -0.735297,
		0.285830, -0.709142, -0.644530,
		-0.958016, -0.195666, -0.209571,
		30.860256, 30.848795, 50.596317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288517, 30.581156, 50.117756>,  <31.530867, 30.985762, 50.743015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288517, 30.581156, 50.117756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016243, 30.855263, 50.221352>,  <30.852879, 31.019728, 50.283508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016243, 30.855263, 50.221352>,  <31.288517, 30.581156, 50.117756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016243, 30.855263, 50.221352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065326, 0.408898, -0.910239,
		-0.729656, -0.602670, -0.323097,
		-0.680687, 0.685268, 0.258985,
		30.812037, 31.060843, 50.299046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861012, 30.628679, 49.582321>,  <31.288517, 30.581156, 50.117756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861012, 30.628679, 49.582321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789360, 30.969769, 49.778599>,  <30.746368, 31.174421, 49.896366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789360, 30.969769, 49.778599>,  <30.861012, 30.628679, 49.582321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789360, 30.969769, 49.778599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083813, 0.510170, -0.855980,
		-0.980249, -0.112205, -0.162855,
		-0.179129, 0.852723, 0.490689,
		30.735620, 31.225586, 49.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263475, 31.082842, 49.288750>,  <30.861012, 30.628679, 49.582321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263475, 31.082842, 49.288750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489544, 31.333914, 49.502888>,  <30.625185, 31.484556, 49.631371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489544, 31.333914, 49.502888>,  <30.263475, 31.082842, 49.288750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489544, 31.333914, 49.502888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211126, 0.517271, -0.829371,
		-0.797501, 0.581763, 0.159828,
		0.565172, 0.627680, 0.535349,
		30.659096, 31.522219, 49.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106724, 31.634840, 49.109272>,  <30.263475, 31.082842, 49.288750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106724, 31.634840, 49.109272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461077, 31.724293, 49.271854>,  <30.673689, 31.777964, 49.369404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461077, 31.724293, 49.271854>,  <30.106724, 31.634840, 49.109272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461077, 31.724293, 49.271854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270363, 0.463100, -0.844063,
		-0.376986, 0.857630, 0.349790,
		0.885881, 0.223630, 0.406453,
		30.726841, 31.791382, 49.393791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129292, 32.318909, 48.963043>,  <30.106724, 31.634840, 49.109272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129292, 32.318909, 48.963043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497404, 32.178959, 49.033089>,  <30.718271, 32.094990, 49.075115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497404, 32.178959, 49.033089>,  <30.129292, 32.318909, 48.963043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497404, 32.178959, 49.033089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326186, 0.438937, -0.837220,
		0.216060, 0.827599, 0.518071,
		0.920283, -0.349877, 0.175115,
		30.773489, 32.073997, 49.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644403, 33.003014, 48.958111>,  <30.129292, 32.318909, 48.963043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644403, 33.003014, 48.958111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896538, 32.695904, 48.912170>,  <31.047819, 32.511639, 48.884605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896538, 32.695904, 48.912170>,  <30.644403, 33.003014, 48.958111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896538, 32.695904, 48.912170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565975, 0.555749, -0.608946,
		0.531363, 0.318839, 0.784853,
		0.630337, -0.767779, -0.114849,
		31.085638, 32.465569, 48.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394400, 33.270226, 48.938999>,  <30.644403, 33.003014, 48.958111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394400, 33.270226, 48.938999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425985, 32.910126, 48.767738>,  <31.444937, 32.694065, 48.664982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425985, 32.910126, 48.767738>,  <31.394400, 33.270226, 48.938999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425985, 32.910126, 48.767738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438762, 0.417042, -0.795967,
		0.895127, -0.125004, 0.427927,
		0.078965, -0.900250, -0.428153,
		31.449675, 32.640049, 48.639294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093868, 33.082218, 48.796928>,  <31.394400, 33.270226, 48.938999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093868, 33.082218, 48.796928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887377, 32.842255, 48.552429>,  <31.763481, 32.698277, 48.405731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887377, 32.842255, 48.552429>,  <32.093868, 33.082218, 48.796928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887377, 32.842255, 48.552429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481747, 0.386691, -0.786378,
		0.708114, -0.700418, 0.089381,
		-0.516231, -0.599905, -0.611245,
		31.732508, 32.662285, 48.369057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502941, 32.885117, 48.246410>,  <32.093868, 33.082218, 48.796928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502941, 32.885117, 48.246410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156521, 32.813477, 48.059700>,  <31.948669, 32.770493, 47.947674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.156521, 32.813477, 48.059700>,  <32.502941, 32.885117, 48.246410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156521, 32.813477, 48.059700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441639, 0.163558, -0.882159,
		0.234340, -0.970140, -0.062552,
		-0.866049, -0.179100, -0.466780,
		31.896706, 32.759747, 47.919666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687309, 32.477325, 47.626377>,  <32.502941, 32.885117, 48.246410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687309, 32.477325, 47.626377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327126, 32.638981, 47.562069>,  <32.111015, 32.735973, 47.523483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327126, 32.638981, 47.562069>,  <32.687309, 32.477325, 47.626377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327126, 32.638981, 47.562069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284061, 0.266537, -0.921015,
		-0.329364, -0.875005, -0.354804,
		-0.900460, 0.404136, -0.160767,
		32.056988, 32.760220, 47.513840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366146, 32.173367, 47.012447>,  <32.687309, 32.477325, 47.626377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366146, 32.173367, 47.012447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115170, 32.484249, 47.031528>,  <31.964584, 32.670776, 47.042976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115170, 32.484249, 47.031528>,  <32.366146, 32.173367, 47.012447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115170, 32.484249, 47.031528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174481, 0.200033, -0.964128,
		-0.758864, -0.596610, -0.261116,
		-0.627440, 0.777202, 0.047701,
		31.926937, 32.717411, 47.045837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983480, 32.183651, 46.506157>,  <32.366146, 32.173367, 47.012447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983480, 32.183651, 46.506157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916769, 32.568916, 46.590542>,  <31.876741, 32.800076, 46.641174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916769, 32.568916, 46.590542>,  <31.983480, 32.183651, 46.506157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916769, 32.568916, 46.590542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193397, 0.241760, -0.950868,
		-0.966841, -0.117785, -0.226593,
		-0.166779, 0.963161, 0.210965,
		31.866735, 32.857864, 46.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633492, 32.357826, 45.924309>,  <31.983480, 32.183651, 46.506157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633492, 32.357826, 45.924309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741848, 32.703392, 46.094139>,  <31.806862, 32.910732, 46.196037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741848, 32.703392, 46.094139>,  <31.633492, 32.357826, 45.924309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741848, 32.703392, 46.094139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207322, 0.378355, -0.902145,
		-0.940019, 0.332408, -0.076615,
		0.270893, 0.863917, 0.424576,
		31.823116, 32.962566, 46.221512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371313, 32.983505, 45.514336>,  <31.633492, 32.357826, 45.924309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371313, 32.983505, 45.514336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657833, 33.150867, 45.737709>,  <31.829746, 33.251286, 45.871731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657833, 33.150867, 45.737709>,  <31.371313, 32.983505, 45.514336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657833, 33.150867, 45.737709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327229, 0.505414, -0.798422,
		-0.616306, 0.754646, 0.225113,
		0.716302, 0.418409, 0.558432,
		31.872725, 33.276390, 45.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610691, 33.338451, 45.536083>,  <31.371313, 32.983505, 45.514336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610691, 33.338451, 45.536083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311026, 33.280575, 45.277527>,  <30.131226, 33.245850, 45.122395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311026, 33.280575, 45.277527>,  <30.610691, 33.338451, 45.536083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311026, 33.280575, 45.277527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525963, -0.463232, 0.713287,
		-0.402636, 0.874345, 0.270933,
		-0.749164, -0.144694, -0.646387,
		30.086277, 33.237167, 45.083611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028048, 33.765835, 45.722942>,  <30.610691, 33.338451, 45.536083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028048, 33.765835, 45.722942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923405, 33.439411, 45.516796>,  <29.860619, 33.243557, 45.393108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923405, 33.439411, 45.516796>,  <30.028048, 33.765835, 45.722942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923405, 33.439411, 45.516796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624505, -0.264003, 0.735048,
		-0.735904, 0.514143, -0.440570,
		-0.261608, -0.816063, -0.515365,
		29.844923, 33.194592, 45.362186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338669, 33.687698, 45.946148>,  <30.028048, 33.765835, 45.722942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338669, 33.687698, 45.946148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396355, 33.323395, 45.791374>,  <29.430967, 33.104813, 45.698509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396355, 33.323395, 45.791374>,  <29.338669, 33.687698, 45.946148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396355, 33.323395, 45.791374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388179, -0.411746, 0.824489,
		-0.910230, 0.031294, -0.412918,
		0.144215, -0.910761, -0.386931,
		29.439619, 33.050167, 45.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748127, 33.404530, 45.998772>,  <29.338669, 33.687698, 45.946148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748127, 33.404530, 45.998772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.002836, 33.098370, 45.961506>,  <29.155661, 32.914673, 45.939144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.002836, 33.098370, 45.961506>,  <28.748127, 33.404530, 45.998772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002836, 33.098370, 45.961506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328714, -0.378781, 0.865143,
		-0.697474, -0.520272, -0.492796,
		0.636771, -0.765404, -0.093169,
		29.193867, 32.868748, 45.933556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328909, 32.783188, 46.021629>,  <28.748127, 33.404530, 45.998772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328909, 32.783188, 46.021629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.704041, 32.697601, 46.130947>,  <28.929119, 32.646252, 46.196541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.704041, 32.697601, 46.130947>,  <28.328909, 32.783188, 46.021629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704041, 32.697601, 46.130947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338556, -0.390355, 0.856156,
		-0.076501, -0.895457, -0.438526,
		0.937831, -0.213963, 0.273300,
		28.985390, 32.633411, 46.212936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337624, 32.042316, 46.278667>,  <28.328909, 32.783188, 46.021629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337624, 32.042316, 46.278667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.668810, 32.207531, 46.430389>,  <28.867521, 32.306660, 46.521423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.668810, 32.207531, 46.430389>,  <28.337624, 32.042316, 46.278667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668810, 32.207531, 46.430389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164448, -0.467828, 0.868386,
		0.536122, -0.781371, -0.319424,
		0.827968, 0.413032, 0.379308,
		28.917200, 32.331440, 46.544182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868237, 31.447395, 46.533360>,  <28.337624, 32.042316, 46.278667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868237, 31.447395, 46.533360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943048, 31.788620, 46.728214>,  <28.987936, 31.993355, 46.845127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943048, 31.788620, 46.728214>,  <28.868237, 31.447395, 46.533360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943048, 31.788620, 46.728214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276842, -0.430021, 0.859326,
		0.942539, -0.295579, 0.155738,
		0.187028, 0.853063, 0.487140,
		28.999157, 32.044540, 46.874355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875031, 30.657652, 46.631649>,  <28.868237, 31.447395, 46.533360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875031, 30.657652, 46.631649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.553768, 30.455893, 46.504826>,  <28.361012, 30.334837, 46.428730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.553768, 30.455893, 46.504826>,  <28.875031, 30.657652, 46.631649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553768, 30.455893, 46.504826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331203, 0.064356, -0.941362,
		0.495226, -0.861069, 0.115371,
		-0.803153, -0.504399, -0.317060,
		28.312822, 30.304573, 46.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078735, 30.087042, 46.239048>,  <28.875031, 30.657652, 46.631649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078735, 30.087042, 46.239048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708996, 30.190155, 46.126530>,  <28.487152, 30.252022, 46.059021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708996, 30.190155, 46.126530>,  <29.078735, 30.087042, 46.239048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708996, 30.190155, 46.126530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294711, 0.014148, -0.955482,
		-0.242327, -0.966100, -0.089049,
		-0.924350, 0.257783, -0.281291,
		28.431690, 30.267490, 46.042141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068495, 29.660761, 45.738403>,  <29.078735, 30.087042, 46.239048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068495, 29.660761, 45.738403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.804174, 29.954105, 45.674503>,  <28.645582, 30.130112, 45.636162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.804174, 29.954105, 45.674503>,  <29.068495, 29.660761, 45.738403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804174, 29.954105, 45.674503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235431, 0.000424, -0.971891,
		-0.712681, -0.679837, -0.172937,
		-0.660801, 0.733363, -0.159752,
		28.605934, 30.174114, 45.626579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661148, 29.401958, 45.187511>,  <29.068495, 29.660761, 45.738403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661148, 29.401958, 45.187511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639915, 29.801273, 45.197369>,  <28.627176, 30.040861, 45.203281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.639915, 29.801273, 45.197369>,  <28.661148, 29.401958, 45.187511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639915, 29.801273, 45.197369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301507, 0.039548, -0.952643,
		-0.951985, -0.043139, -0.303090,
		-0.053083, 0.998286, 0.024642,
		28.623991, 30.100760, 45.204762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171959, 29.606319, 44.612469>,  <28.661148, 29.401958, 45.187511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171959, 29.606319, 44.612469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.344290, 29.949289, 44.725044>,  <28.447689, 30.155071, 44.792591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.344290, 29.949289, 44.725044>,  <28.171959, 29.606319, 44.612469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344290, 29.949289, 44.725044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282935, 0.167806, -0.944346,
		-0.856934, 0.486479, -0.170301,
		0.430827, 0.857426, 0.281441,
		28.473537, 30.206516, 44.809475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864296, 30.123295, 44.262142>,  <28.171959, 29.606319, 44.612469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864296, 30.123295, 44.262142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.208126, 30.306114, 44.353565>,  <28.414423, 30.415806, 44.408421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.208126, 30.306114, 44.353565>,  <27.864296, 30.123295, 44.262142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208126, 30.306114, 44.353565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105304, 0.279248, -0.954427,
		-0.500045, 0.844469, 0.191905,
		0.859573, 0.457048, 0.228562,
		28.465998, 30.443228, 44.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820314, 30.820721, 43.915009>,  <27.864296, 30.123295, 44.262142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820314, 30.820721, 43.915009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.204906, 30.737577, 43.986954>,  <28.435661, 30.687691, 44.030121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.204906, 30.737577, 43.986954>,  <27.820314, 30.820721, 43.915009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204906, 30.737577, 43.986954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228973, 0.243651, -0.942447,
		0.152073, 0.947327, 0.281860,
		0.961481, -0.207859, 0.179859,
		28.493351, 30.675220, 44.040913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.659222, 27.509264, 49.839447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947634, 27.306929, 49.650028>,  <31.120682, 27.185528, 49.536377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.947634, 27.306929, 49.650028>,  <30.659222, 27.509264, 49.839447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947634, 27.306929, 49.650028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231045, -0.819823, 0.523935,
		-0.653249, -0.268362, -0.707988,
		0.721029, -0.505838, -0.473545,
		31.163942, 27.155178, 49.507965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500797, 28.058983, 49.407394>,  <30.659222, 27.509264, 49.839447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500797, 28.058983, 49.407394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872931, 27.964682, 49.519753>,  <31.096210, 27.908100, 49.587166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872931, 27.964682, 49.519753>,  <30.500797, 28.058983, 49.407394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872931, 27.964682, 49.519753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324287, 0.171232, -0.930332,
		0.171232, 0.956608, 0.235755,
		0.930332, -0.235755, 0.280895,
		31.152031, 27.893955, 49.604023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924891, 28.624285, 49.158497>,  <30.500797, 28.058983, 49.407394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924891, 28.624285, 49.158497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.184544, 28.327118, 49.223862>,  <31.340336, 28.148817, 49.263081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.184544, 28.327118, 49.223862>,  <30.924891, 28.624285, 49.158497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184544, 28.327118, 49.223862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323842, 0.075522, -0.943092,
		0.688298, 0.665110, 0.289612,
		0.649132, -0.742917, 0.163409,
		31.379284, 28.104242, 49.272884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527355, 28.936520, 48.901077>,  <30.924891, 28.624285, 49.158497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527355, 28.936520, 48.901077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593311, 28.542042, 48.894974>,  <31.632885, 28.305355, 48.891312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593311, 28.542042, 48.894974>,  <31.527355, 28.936520, 48.901077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593311, 28.542042, 48.894974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472404, 0.092548, -0.876509,
		0.865820, 0.137321, 0.481143,
		0.164892, -0.986194, -0.015259,
		31.642778, 28.246183, 48.890396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277912, 28.831844, 48.918201>,  <31.527355, 28.936520, 48.901077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277912, 28.831844, 48.918201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121536, 28.498201, 48.762543>,  <32.027710, 28.298016, 48.669147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121536, 28.498201, 48.762543>,  <32.277912, 28.831844, 48.918201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121536, 28.498201, 48.762543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654564, 0.045282, -0.754649,
		0.647079, -0.549742, 0.528274,
		-0.390941, -0.834107, -0.389142,
		32.004253, 28.247969, 48.645802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809177, 28.604954, 48.550903>,  <32.277912, 28.831844, 48.918201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809177, 28.604954, 48.550903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509109, 28.375986, 48.418495>,  <32.329067, 28.238605, 48.339050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509109, 28.375986, 48.418495>,  <32.809177, 28.604954, 48.550903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509109, 28.375986, 48.418495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391061, 0.019620, -0.920156,
		0.533210, -0.819726, 0.209133,
		-0.750172, -0.572419, -0.331024,
		32.284058, 28.204260, 48.319187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206314, 28.133415, 48.169323>,  <32.809177, 28.604954, 48.550903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206314, 28.133415, 48.169323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828068, 28.122881, 48.039635>,  <32.601120, 28.116560, 47.961823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828068, 28.122881, 48.039635>,  <33.206314, 28.133415, 48.169323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828068, 28.122881, 48.039635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324534, -0.144268, -0.934807,
		-0.022157, -0.989188, 0.144969,
		-0.945614, -0.026335, -0.324222,
		32.544384, 28.114981, 47.942368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240974, 27.572931, 47.691593>,  <33.206314, 28.133415, 48.169323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240974, 27.572931, 47.691593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911980, 27.780125, 47.597607>,  <32.714584, 27.904442, 47.541214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.911980, 27.780125, 47.597607>,  <33.240974, 27.572931, 47.691593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911980, 27.780125, 47.597607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211644, -0.104725, -0.971720,
		-0.527944, -0.848954, -0.023494,
		-0.822485, 0.517986, -0.234965,
		32.665234, 27.935520, 47.527119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965866, 27.180443, 47.271057>,  <33.240974, 27.572931, 47.691593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965866, 27.180443, 47.271057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783268, 27.527409, 47.191860>,  <32.673710, 27.735588, 47.144341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783268, 27.527409, 47.191860>,  <32.965866, 27.180443, 47.271057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783268, 27.527409, 47.191860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053810, -0.249041, -0.966997,
		-0.888096, -0.430778, 0.160362,
		-0.456497, 0.867415, -0.197992,
		32.646320, 27.787634, 47.132462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403290, 27.043150, 46.811043>,  <32.965866, 27.180443, 47.271057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403290, 27.043150, 46.811043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520046, 27.423000, 46.765408>,  <32.590099, 27.650909, 46.738026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520046, 27.423000, 46.765408>,  <32.403290, 27.043150, 46.811043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520046, 27.423000, 46.765408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072534, -0.140913, -0.987361,
		-0.953698, 0.279924, -0.110011,
		0.291888, 0.949624, -0.114085,
		32.607613, 27.707888, 46.731182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073605, 27.225422, 46.290695>,  <32.403290, 27.043150, 46.811043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073605, 27.225422, 46.290695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348099, 27.516361, 46.293385>,  <32.512794, 27.690924, 46.294998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348099, 27.516361, 46.293385>,  <32.073605, 27.225422, 46.290695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348099, 27.516361, 46.293385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274980, -0.250860, -0.928146,
		-0.673398, 0.638777, -0.372155,
		0.686237, 0.727347, 0.006722,
		32.553970, 27.734566, 46.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942781, 27.517422, 45.710743>,  <32.073605, 27.225422, 46.290695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942781, 27.517422, 45.710743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312374, 27.642843, 45.798325>,  <32.534130, 27.718096, 45.850872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312374, 27.642843, 45.798325>,  <31.942781, 27.517422, 45.710743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312374, 27.642843, 45.798325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274500, -0.145113, -0.950575,
		-0.266284, 0.938416, -0.220153,
		0.923982, 0.313555, 0.218954,
		32.589569, 27.736910, 45.864010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376339, 28.003325, 45.734547>,  <31.942781, 27.517422, 45.710743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376339, 28.003325, 45.734547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026827, 27.980909, 45.541313>,  <30.817120, 27.967461, 45.425373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.026827, 27.980909, 45.541313>,  <31.376339, 28.003325, 45.734547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026827, 27.980909, 45.541313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469812, -0.159346, 0.868266,
		-0.125632, 0.985631, 0.112907,
		-0.873781, -0.056037, -0.483081,
		30.764692, 27.964098, 45.396389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817085, 28.385155, 46.051891>,  <31.376339, 28.003325, 45.734547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817085, 28.385155, 46.051891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.587126, 28.175098, 45.800903>,  <30.449150, 28.049065, 45.650311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.587126, 28.175098, 45.800903>,  <30.817085, 28.385155, 46.051891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587126, 28.175098, 45.800903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671902, -0.134656, 0.728297,
		-0.466950, 0.840296, -0.275428,
		-0.574897, -0.525138, -0.627474,
		30.414658, 28.017557, 45.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122066, 28.748194, 45.997482>,  <30.817085, 28.385155, 46.051891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122066, 28.748194, 45.997482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097855, 28.360489, 45.902096>,  <30.083328, 28.127865, 45.844864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.097855, 28.360489, 45.902096>,  <30.122066, 28.748194, 45.997482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097855, 28.360489, 45.902096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682645, -0.134099, 0.718341,
		-0.728239, 0.206266, -0.653546,
		-0.060529, -0.969264, -0.238462,
		30.079697, 28.069710, 45.830559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479933, 28.595194, 46.099060>,  <30.122066, 28.748194, 45.997482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479933, 28.595194, 46.099060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676262, 28.247610, 46.124355>,  <29.794060, 28.039059, 46.139534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676262, 28.247610, 46.124355>,  <29.479933, 28.595194, 46.099060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676262, 28.247610, 46.124355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450280, -0.190856, 0.872251,
		-0.745883, -0.456597, -0.484952,
		0.490823, -0.868961, 0.063240,
		29.823509, 27.986921, 46.143326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994974, 28.200962, 46.283272>,  <29.479933, 28.595194, 46.099060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994974, 28.200962, 46.283272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.321024, 27.997105, 46.393425>,  <29.516653, 27.874790, 46.459518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.321024, 27.997105, 46.393425>,  <28.994974, 28.200962, 46.283272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321024, 27.997105, 46.393425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433428, -0.221165, 0.873629,
		-0.384336, -0.831473, -0.401171,
		0.815123, -0.509645, 0.275382,
		29.565561, 27.844212, 46.476040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743114, 27.550995, 46.448471>,  <28.994974, 28.200962, 46.283272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743114, 27.550995, 46.448471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.105806, 27.557579, 46.617027>,  <29.323421, 27.561529, 46.718163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.105806, 27.557579, 46.617027>,  <28.743114, 27.550995, 46.448471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105806, 27.557579, 46.617027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364626, -0.471416, 0.803004,
		0.211869, -0.881758, -0.421444,
		0.906730, 0.016462, 0.421390,
		29.377825, 27.562517, 46.743443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890425, 26.898333, 46.574821>,  <28.743114, 27.550995, 46.448471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890425, 26.898333, 46.574821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.091864, 27.138281, 46.823513>,  <29.212727, 27.282249, 46.972729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.091864, 27.138281, 46.823513>,  <28.890425, 26.898333, 46.574821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091864, 27.138281, 46.823513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447504, -0.434454, 0.781658,
		0.739008, -0.671865, 0.049656,
		0.503595, 0.599873, 0.621727,
		29.242943, 27.318243, 47.010033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938852, 26.491859, 47.223133>,  <28.890425, 26.898333, 46.574821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938852, 26.491859, 47.223133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.073132, 26.840214, 47.366722>,  <29.153700, 27.049227, 47.452873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.073132, 26.840214, 47.366722>,  <28.938852, 26.491859, 47.223133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073132, 26.840214, 47.366722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247143, -0.286304, 0.925716,
		0.908970, -0.399480, 0.119122,
		0.335700, 0.870888, 0.358970,
		29.173841, 27.101480, 47.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135830, 26.287964, 47.872017>,  <28.938852, 26.491859, 47.223133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135830, 26.287964, 47.872017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109068, 26.686104, 47.899727>,  <29.093010, 26.924988, 47.916355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109068, 26.686104, 47.899727>,  <29.135830, 26.287964, 47.872017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109068, 26.686104, 47.899727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359492, -0.088819, 0.928912,
		0.930747, 0.037244, 0.363763,
		-0.066906, 0.995352, 0.069279,
		29.088997, 26.984709, 47.920509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443146, 26.624777, 48.571571>,  <29.135830, 26.287964, 47.872017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443146, 26.624777, 48.571571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172888, 26.872801, 48.412060>,  <29.010733, 27.021616, 48.316353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172888, 26.872801, 48.412060>,  <29.443146, 26.624777, 48.571571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172888, 26.872801, 48.412060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551447, -0.066064, 0.831590,
		0.489293, 0.781766, 0.386567,
		-0.675647, 0.620062, -0.398778,
		28.970194, 27.058819, 48.292427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157213, 26.924809, 49.158436>,  <29.443146, 26.624777, 48.571571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157213, 26.924809, 49.158436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.866825, 27.027714, 48.903316>,  <28.692593, 27.089457, 48.750244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.866825, 27.027714, 48.903316>,  <29.157213, 26.924809, 49.158436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866825, 27.027714, 48.903316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673938, -0.081342, 0.734296,
		0.137028, 0.962912, 0.232432,
		-0.725969, 0.257264, -0.637797,
		28.649035, 27.104893, 48.711979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655138, 27.407408, 49.541142>,  <29.157213, 26.924809, 49.158436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655138, 27.407408, 49.541142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.456825, 27.272886, 49.220867>,  <28.337837, 27.192173, 49.028702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.456825, 27.272886, 49.220867>,  <28.655138, 27.407408, 49.541142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456825, 27.272886, 49.220867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824643, -0.106811, 0.555477,
		-0.272332, 0.935676, -0.224377,
		-0.495781, -0.336305, -0.800687,
		28.308090, 27.171995, 48.980659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042850, 27.868195, 49.529205>,  <28.655138, 27.407408, 49.541142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042850, 27.868195, 49.529205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944393, 27.540163, 49.322563>,  <27.885319, 27.343344, 49.198578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944393, 27.540163, 49.322563>,  <28.042850, 27.868195, 49.529205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944393, 27.540163, 49.322563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854328, -0.068151, 0.515247,
		-0.457751, 0.568175, -0.683843,
		-0.246146, -0.820081, -0.516604,
		27.870550, 27.294138, 49.167583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452213, 28.032938, 49.204529>,  <28.042850, 27.868195, 49.529205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452213, 28.032938, 49.204529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.476950, 27.633863, 49.215824>,  <27.491791, 27.394419, 49.222603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.476950, 27.633863, 49.215824>,  <27.452213, 28.032938, 49.204529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476950, 27.633863, 49.215824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883661, -0.041575, 0.466277,
		-0.464024, -0.053786, -0.884188,
		0.061839, -0.997686, 0.028237,
		27.495501, 27.334557, 49.224297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299610, 28.619202, 48.840294>,  <27.452213, 28.032938, 49.204529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299610, 28.619202, 48.840294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.093168, 28.959036, 48.796780>,  <26.969303, 29.162937, 48.770672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.093168, 28.959036, 48.796780>,  <27.299610, 28.619202, 48.840294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093168, 28.959036, 48.796780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313110, 0.068921, -0.947213,
		-0.797243, -0.522925, -0.301584,
		-0.516107, 0.849588, -0.108787,
		26.938335, 29.213913, 48.764145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874485, 28.662996, 48.184620>,  <27.299610, 28.619202, 48.840294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874485, 28.662996, 48.184620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.955685, 29.043943, 48.275646>,  <27.004404, 29.272512, 48.330261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.955685, 29.043943, 48.275646>,  <26.874485, 28.662996, 48.184620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955685, 29.043943, 48.275646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296343, 0.161752, -0.941285,
		-0.933259, 0.258518, -0.249392,
		0.203000, 0.952368, 0.227566,
		27.016584, 29.329655, 48.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627399, 29.160200, 47.577003>,  <26.874485, 28.662996, 48.184620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627399, 29.160200, 47.577003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898212, 29.358513, 47.794563>,  <27.060699, 29.477501, 47.925098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898212, 29.358513, 47.794563>,  <26.627399, 29.160200, 47.577003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898212, 29.358513, 47.794563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269931, 0.520254, -0.810230,
		-0.684664, 0.695368, 0.218402,
		0.677032, 0.495782, 0.543901,
		27.101322, 29.507248, 47.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512316, 29.900059, 47.429390>,  <26.627399, 29.160200, 47.577003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512316, 29.900059, 47.429390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.891933, 29.840841, 47.540668>,  <27.119705, 29.805311, 47.607437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.891933, 29.840841, 47.540668>,  <26.512316, 29.900059, 47.429390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891933, 29.840841, 47.540668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315122, 0.454255, -0.833277,
		-0.003011, 0.878485, 0.477761,
		0.949046, -0.148044, 0.278198,
		27.176647, 29.796429, 47.624126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908194, 30.451876, 47.324566>,  <26.512316, 29.900059, 47.429390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908194, 30.451876, 47.324566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200121, 30.179148, 47.344536>,  <27.375277, 30.015511, 47.356518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200121, 30.179148, 47.344536>,  <26.908194, 30.451876, 47.324566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200121, 30.179148, 47.344536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483123, 0.462705, -0.743301,
		0.483695, 0.566593, 0.667091,
		0.729816, -0.681818, 0.049926,
		27.419065, 29.974602, 47.359512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464289, 30.880322, 47.247173>,  <26.908194, 30.451876, 47.324566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464289, 30.880322, 47.247173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.582132, 30.506697, 47.166439>,  <27.652838, 30.282522, 47.118000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.582132, 30.506697, 47.166439>,  <27.464289, 30.880322, 47.247173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582132, 30.506697, 47.166439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458931, 0.323548, -0.827466,
		0.838206, 0.151150, 0.523989,
		0.294607, -0.934061, -0.201833,
		27.670515, 30.226479, 47.105888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268040, 30.748816, 47.211632>,  <27.464289, 30.880322, 47.247173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268040, 30.748816, 47.211632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.066509, 30.508837, 46.963043>,  <27.945591, 30.364849, 46.813892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.066509, 30.508837, 46.963043>,  <28.268040, 30.748816, 47.211632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066509, 30.508837, 46.963043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685663, 0.159822, -0.710158,
		0.525382, -0.783912, 0.330841,
		-0.503825, -0.599949, -0.621467,
		27.915361, 30.328852, 46.776604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890242, 31.177378, 47.319889>,  <28.268040, 30.748816, 47.211632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890242, 31.177378, 47.319889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.863178, 31.576399, 47.326897>,  <28.846939, 31.815811, 47.331100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.863178, 31.576399, 47.326897>,  <28.890242, 31.177378, 47.319889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863178, 31.576399, 47.326897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280485, -0.035866, 0.959188,
		0.957471, 0.059987, 0.282226,
		-0.067661, 0.997554, 0.017516,
		28.842880, 31.875666, 47.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184347, 31.369917, 47.951004>,  <28.890242, 31.177378, 47.319889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184347, 31.369917, 47.951004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952753, 31.680220, 47.850624>,  <28.813797, 31.866402, 47.790394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952753, 31.680220, 47.850624>,  <29.184347, 31.369917, 47.951004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952753, 31.680220, 47.850624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209444, 0.155953, 0.965304,
		0.787979, 0.611456, 0.072184,
		-0.578984, 0.775758, -0.250953,
		28.779058, 31.912947, 47.775337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281311, 31.763165, 48.488617>,  <29.184347, 31.369917, 47.951004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281311, 31.763165, 48.488617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.965773, 31.954565, 48.334339>,  <28.776449, 32.069405, 48.241772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.965773, 31.954565, 48.334339>,  <29.281311, 31.763165, 48.488617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965773, 31.954565, 48.334339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320803, 0.214702, 0.922490,
		0.524220, 0.851435, -0.015863,
		-0.788846, 0.478499, -0.385694,
		28.729118, 32.098114, 48.218632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318048, 32.400932, 48.850731>,  <29.281311, 31.763165, 48.488617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318048, 32.400932, 48.850731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.949389, 32.321323, 48.717495>,  <28.728191, 32.273560, 48.637554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.949389, 32.321323, 48.717495>,  <29.318048, 32.400932, 48.850731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949389, 32.321323, 48.717495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369475, 0.187934, 0.910038,
		-0.118520, 0.961806, -0.246744,
		-0.921651, -0.199024, -0.333089,
		28.672894, 32.261616, 48.617569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929348, 33.006329, 49.064144>,  <29.318048, 32.400932, 48.850731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929348, 33.006329, 49.064144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678883, 32.701488, 48.998272>,  <28.528603, 32.518585, 48.958748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678883, 32.701488, 48.998272>,  <28.929348, 33.006329, 49.064144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678883, 32.701488, 48.998272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389233, 0.122525, 0.912954,
		-0.675586, 0.635759, -0.373356,
		-0.626164, -0.762101, -0.164682,
		28.491034, 32.472858, 48.948868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472746, 33.150700, 49.569420>,  <28.929348, 33.006329, 49.064144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472746, 33.150700, 49.569420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.398834, 32.769436, 49.473637>,  <28.354486, 32.540676, 49.416168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.398834, 32.769436, 49.473637>,  <28.472746, 33.150700, 49.569420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398834, 32.769436, 49.473637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401634, -0.149138, 0.903575,
		-0.896965, 0.263138, -0.355264,
		-0.184782, -0.953161, -0.239456,
		28.343399, 32.483486, 49.401798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957417, 33.100632, 50.028042>,  <28.472746, 33.150700, 49.569420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957417, 33.100632, 50.028042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041706, 32.736458, 49.885654>,  <28.092279, 32.517956, 49.800224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041706, 32.736458, 49.885654>,  <27.957417, 33.100632, 50.028042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041706, 32.736458, 49.885654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327397, -0.408842, 0.851857,
		-0.921091, -0.062963, -0.384224,
		0.210722, -0.910431, -0.355967,
		28.104923, 32.463329, 49.778866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316216, 32.706432, 50.180115>,  <27.957417, 33.100632, 50.028042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316216, 32.706432, 50.180115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629026, 32.457520, 50.166309>,  <27.816713, 32.308170, 50.158028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629026, 32.457520, 50.166309>,  <27.316216, 32.706432, 50.180115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629026, 32.457520, 50.166309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260855, -0.377103, 0.888677,
		-0.566026, -0.685968, -0.457232,
		0.782028, -0.622286, -0.034512,
		27.863636, 32.270832, 50.155956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117613, 32.064850, 50.460575>,  <27.316216, 32.706432, 50.180115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117613, 32.064850, 50.460575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.513189, 32.019356, 50.498653>,  <27.750534, 31.992058, 50.521500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.513189, 32.019356, 50.498653>,  <27.117613, 32.064850, 50.460575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513189, 32.019356, 50.498653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128935, -0.342041, 0.930797,
		-0.073308, -0.932776, -0.352923,
		0.988939, -0.113739, 0.095193,
		27.809872, 31.985233, 50.527210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.506157, 33.413471, 35.426205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875275, 33.416084, 35.580299>,  <34.096745, 33.417652, 35.672756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875275, 33.416084, 35.580299>,  <33.506157, 33.413471, 35.426205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875275, 33.416084, 35.580299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348010, 0.443215, 0.826105,
		-0.165343, -0.896392, 0.411271,
		0.922795, 0.006535, 0.385236,
		34.152115, 33.418045, 35.695869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473232, 33.036377, 36.026184>,  <33.506157, 33.413471, 35.426205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473232, 33.036377, 36.026184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769768, 33.296486, 36.092598>,  <33.947689, 33.452553, 36.132446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769768, 33.296486, 36.092598>,  <33.473232, 33.036377, 36.026184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769768, 33.296486, 36.092598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473333, 0.331207, 0.816246,
		0.475792, -0.683700, 0.553331,
		0.741335, 0.650274, 0.166032,
		33.992168, 33.491570, 36.142406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778629, 32.903797, 36.769909>,  <33.473232, 33.036377, 36.026184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778629, 32.903797, 36.769909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865482, 33.281349, 36.670353>,  <33.917595, 33.507881, 36.610619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865482, 33.281349, 36.670353>,  <33.778629, 32.903797, 36.769909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865482, 33.281349, 36.670353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252860, 0.300652, 0.919604,
		0.942824, -0.136740, 0.303950,
		0.217130, 0.943881, -0.248886,
		33.930622, 33.564514, 36.595688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061131, 33.171062, 37.275398>,  <33.778629, 32.903797, 36.769909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061131, 33.171062, 37.275398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923569, 33.497662, 37.089897>,  <33.841030, 33.693619, 36.978596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923569, 33.497662, 37.089897>,  <34.061131, 33.171062, 37.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923569, 33.497662, 37.089897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370169, 0.335996, 0.866072,
		0.862963, 0.469512, 0.186691,
		-0.343904, 0.816496, -0.463751,
		33.820396, 33.742611, 36.950771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351727, 33.818726, 37.585258>,  <34.061131, 33.171062, 37.275398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351727, 33.818726, 37.585258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006111, 33.883797, 37.394691>,  <33.798744, 33.922840, 37.280350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006111, 33.883797, 37.394691>,  <34.351727, 33.818726, 37.585258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006111, 33.883797, 37.394691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386387, 0.392360, 0.834721,
		0.322719, 0.905312, -0.276157,
		-0.864036, 0.162677, -0.476422,
		33.746899, 33.932598, 37.251766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265564, 34.501503, 37.738594>,  <34.351727, 33.818726, 37.585258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265564, 34.501503, 37.738594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922211, 34.334248, 37.619705>,  <33.716198, 34.233894, 37.548370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922211, 34.334248, 37.619705>,  <34.265564, 34.501503, 37.738594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922211, 34.334248, 37.619705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437385, 0.293724, 0.849953,
		-0.268099, 0.859584, -0.435016,
		-0.858381, -0.418141, -0.297222,
		33.664696, 34.208805, 37.530537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739582, 35.033779, 37.928551>,  <34.265564, 34.501503, 37.738594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739582, 35.033779, 37.928551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540489, 34.693573, 37.860565>,  <33.421036, 34.489449, 37.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540489, 34.693573, 37.860565>,  <33.739582, 35.033779, 37.928551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540489, 34.693573, 37.860565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481579, 0.108019, 0.869721,
		-0.721351, 0.514739, -0.463354,
		-0.497730, -0.850515, -0.169968,
		33.391171, 34.438419, 37.809574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019932, 35.179043, 38.161346>,  <33.739582, 35.033779, 37.928551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019932, 35.179043, 38.161346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036976, 34.780689, 38.129333>,  <33.047203, 34.541679, 38.110126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036976, 34.780689, 38.129333>,  <33.019932, 35.179043, 38.161346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036976, 34.780689, 38.129333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689960, -0.087266, 0.718568,
		-0.722593, 0.024604, -0.690836,
		0.042607, -0.995881, -0.080034,
		33.049759, 34.481926, 38.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268150, 34.899742, 38.009804>,  <33.019932, 35.179043, 38.161346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268150, 34.899742, 38.009804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494568, 34.597679, 38.142063>,  <32.630417, 34.416439, 38.221420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494568, 34.597679, 38.142063>,  <32.268150, 34.899742, 38.009804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494568, 34.597679, 38.142063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620000, -0.125624, 0.774479,
		-0.543319, -0.643390, -0.539308,
		0.566043, -0.755160, 0.330648,
		32.664379, 34.371132, 38.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767792, 34.476070, 38.262653>,  <32.268150, 34.899742, 38.009804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767792, 34.476070, 38.262653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099060, 34.324993, 38.428295>,  <32.297821, 34.234348, 38.527679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099060, 34.324993, 38.428295>,  <31.767792, 34.476070, 38.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099060, 34.324993, 38.428295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497418, -0.154812, 0.853586,
		-0.258290, -0.912895, -0.316084,
		0.828168, -0.377698, 0.414104,
		32.347511, 34.211685, 38.552528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534248, 33.858707, 38.566643>,  <31.767792, 34.476070, 38.262653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534248, 33.858707, 38.566643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874720, 33.920029, 38.767437>,  <32.079002, 33.956821, 38.887913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874720, 33.920029, 38.767437>,  <31.534248, 33.858707, 38.566643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874720, 33.920029, 38.767437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454698, -0.262375, 0.851122,
		0.262189, -0.952711, -0.153622,
		0.851180, 0.153303, 0.501987,
		32.130074, 33.966019, 38.918034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625614, 33.329926, 39.020260>,  <31.534248, 33.858707, 38.566643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625614, 33.329926, 39.020260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806757, 33.656231, 39.164181>,  <31.915442, 33.852013, 39.250534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806757, 33.656231, 39.164181>,  <31.625614, 33.329926, 39.020260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806757, 33.656231, 39.164181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475577, -0.120333, 0.871405,
		0.754154, -0.565732, 0.333464,
		0.452855, 0.815762, 0.359799,
		31.942614, 33.900959, 39.272121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556971, 32.575878, 38.792854>,  <31.625614, 33.329926, 39.020260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556971, 32.575878, 38.792854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168449, 32.494820, 38.743046>,  <30.935337, 32.446182, 38.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168449, 32.494820, 38.743046>,  <31.556971, 32.575878, 38.792854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168449, 32.494820, 38.743046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121049, 0.029471, -0.992209,
		0.204741, -0.978808, -0.004094,
		-0.971302, -0.202650, -0.124518,
		30.877058, 32.434025, 38.705692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455389, 32.029430, 38.293877>,  <31.556971, 32.575878, 38.792854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455389, 32.029430, 38.293877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105192, 32.222713, 38.295773>,  <30.895075, 32.338684, 38.296909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105192, 32.222713, 38.295773>,  <31.455389, 32.029430, 38.293877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105192, 32.222713, 38.295773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067098, -0.111850, -0.991457,
		-0.478553, -0.868330, 0.130346,
		-0.875491, 0.483211, 0.004738,
		30.842545, 32.367676, 38.297195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902937, 31.558525, 37.928787>,  <31.455389, 32.029430, 38.293877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902937, 31.558525, 37.928787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766144, 31.932497, 37.890942>,  <30.684069, 32.156879, 37.868233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766144, 31.932497, 37.890942>,  <30.902937, 31.558525, 37.928787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766144, 31.932497, 37.890942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156110, -0.155811, -0.975373,
		-0.926648, -0.318790, 0.199237,
		-0.341983, 0.934931, -0.094616,
		30.663549, 32.212975, 37.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164982, 31.416445, 37.549511>,  <30.902937, 31.558525, 37.928787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164982, 31.416445, 37.549511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272703, 31.800175, 37.515644>,  <30.337336, 32.030415, 37.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272703, 31.800175, 37.515644>,  <30.164982, 31.416445, 37.549511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272703, 31.800175, 37.515644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315008, 0.004662, -0.949078,
		-0.910081, 0.282260, 0.303451,
		0.269301, 0.959327, -0.084671,
		30.353493, 32.087975, 37.490242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601442, 31.716585, 37.172802>,  <30.164982, 31.416445, 37.549511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601442, 31.716585, 37.172802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880972, 31.999428, 37.129639>,  <30.048689, 32.169132, 37.103741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880972, 31.999428, 37.129639>,  <29.601442, 31.716585, 37.172802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880972, 31.999428, 37.129639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228845, 0.078081, -0.970326,
		-0.677700, 0.702781, 0.216383,
		0.698822, 0.707108, -0.107913,
		30.090618, 32.211559, 37.097263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377367, 32.098042, 36.638302>,  <29.601442, 31.716585, 37.172802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377367, 32.098042, 36.638302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761835, 32.206730, 36.657558>,  <29.992516, 32.271942, 36.669113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761835, 32.206730, 36.657558>,  <29.377367, 32.098042, 36.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761835, 32.206730, 36.657558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089565, -0.142175, -0.985781,
		-0.261014, 0.951816, -0.160991,
		0.961171, 0.271721, 0.048140,
		30.050186, 32.288246, 36.672001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517139, 32.385834, 36.036274>,  <29.377367, 32.098042, 36.638302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517139, 32.385834, 36.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888517, 32.282688, 36.143230>,  <30.111343, 32.220802, 36.207405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888517, 32.282688, 36.143230>,  <29.517139, 32.385834, 36.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888517, 32.282688, 36.143230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227595, -0.174007, -0.958082,
		0.293583, 0.950383, -0.102868,
		0.928445, -0.257865, 0.267387,
		30.167051, 32.205330, 36.223446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843014, 32.729221, 35.575386>,  <29.517139, 32.385834, 36.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843014, 32.729221, 35.575386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105736, 32.447525, 35.683201>,  <30.263369, 32.278507, 35.747890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105736, 32.447525, 35.683201>,  <29.843014, 32.729221, 35.575386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105736, 32.447525, 35.683201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204582, -0.177623, -0.962599,
		0.725777, 0.687384, 0.027411,
		0.656806, -0.704239, 0.269541,
		30.302778, 32.236252, 35.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356243, 32.781563, 35.124767>,  <29.843014, 32.729221, 35.575386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356243, 32.781563, 35.124767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450720, 32.421696, 35.271633>,  <30.507406, 32.205776, 35.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450720, 32.421696, 35.271633>,  <30.356243, 32.781563, 35.124767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450720, 32.421696, 35.271633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309172, -0.288643, -0.906145,
		0.921209, 0.327542, 0.209977,
		0.236193, -0.899667, 0.367167,
		30.521578, 32.151794, 35.381783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950600, 32.583691, 34.795918>,  <30.356243, 32.781563, 35.124767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950600, 32.583691, 34.795918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828247, 32.232693, 34.943665>,  <30.754835, 32.022095, 35.032314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828247, 32.232693, 34.943665>,  <30.950600, 32.583691, 34.795918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828247, 32.232693, 34.943665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358632, -0.465586, -0.809082,
		0.881940, -0.115017, 0.457113,
		-0.305883, -0.877497, 0.369370,
		30.736483, 31.969444, 35.054474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368639, 32.089249, 34.502602>,  <30.950600, 32.583691, 34.795918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368639, 32.089249, 34.502602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066122, 31.864954, 34.637417>,  <30.884611, 31.730377, 34.718307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066122, 31.864954, 34.637417>,  <31.368639, 32.089249, 34.502602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066122, 31.864954, 34.637417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142873, -0.644295, -0.751313,
		0.638443, -0.520058, 0.567389,
		-0.756292, -0.560735, 0.337043,
		30.839235, 31.696733, 34.738529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685419, 31.374048, 34.624668>,  <31.368639, 32.089249, 34.502602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685419, 31.374048, 34.624668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293720, 31.312876, 34.571476>,  <31.058701, 31.276173, 34.539562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293720, 31.312876, 34.571476>,  <31.685419, 31.374048, 34.624668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293720, 31.312876, 34.571476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199222, -0.606094, -0.770040,
		0.037167, -0.780553, 0.623984,
		-0.979249, -0.152931, -0.132977,
		30.999945, 31.266996, 34.531582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611046, 30.642653, 34.527058>,  <31.685419, 31.374048, 34.624668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611046, 30.642653, 34.527058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263172, 30.805313, 34.415142>,  <31.054447, 30.902910, 34.347992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263172, 30.805313, 34.415142>,  <31.611046, 30.642653, 34.527058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263172, 30.805313, 34.415142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078868, -0.674016, -0.734494,
		-0.487264, -0.616713, 0.618254,
		-0.869686, 0.406653, -0.279786,
		31.002266, 30.927309, 34.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259186, 30.093460, 34.329475>,  <31.611046, 30.642653, 34.527058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259186, 30.093460, 34.329475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084064, 30.400883, 34.142864>,  <30.978992, 30.585337, 34.030895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084064, 30.400883, 34.142864>,  <31.259186, 30.093460, 34.329475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084064, 30.400883, 34.142864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101732, -0.473223, -0.875049,
		-0.893297, -0.430559, 0.128991,
		-0.437802, 0.768556, -0.466530,
		30.952724, 30.631449, 34.002907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895792, 29.868694, 33.784279>,  <31.259186, 30.093460, 34.329475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895792, 29.868694, 33.784279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941259, 30.250196, 33.672974>,  <30.968540, 30.479097, 33.606190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941259, 30.250196, 33.672974>,  <30.895792, 29.868694, 33.784279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941259, 30.250196, 33.672974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217201, -0.297160, -0.929795,
		-0.969486, 0.045251, -0.240935,
		0.113671, 0.953755, -0.278264,
		30.975361, 30.536324, 33.589493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955437, 29.260418, 34.369789>,  <30.895792, 29.868694, 33.784279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955437, 29.260418, 34.369789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284273, 29.074669, 34.501564>,  <31.481575, 28.963221, 34.580627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284273, 29.074669, 34.501564>,  <30.955437, 29.260418, 34.369789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284273, 29.074669, 34.501564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360021, 0.024273, 0.932629,
		-0.441082, -0.885308, -0.147229,
		0.822090, -0.464371, 0.329436,
		31.530901, 28.935358, 34.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773092, 28.694971, 34.860455>,  <30.955437, 29.260418, 34.369789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773092, 28.694971, 34.860455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141472, 28.792810, 34.981796>,  <31.362499, 28.851513, 35.054600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141472, 28.792810, 34.981796>,  <30.773092, 28.694971, 34.860455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141472, 28.792810, 34.981796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300360, -0.050402, 0.952493,
		0.248267, -0.968314, 0.027049,
		0.920949, 0.244598, 0.303356,
		31.417757, 28.866190, 35.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891642, 28.225508, 35.452366>,  <30.773092, 28.694971, 34.860455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891642, 28.225508, 35.452366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160431, 28.520712, 35.476994>,  <31.321705, 28.697834, 35.491768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160431, 28.520712, 35.476994>,  <30.891642, 28.225508, 35.452366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160431, 28.520712, 35.476994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007744, -0.076126, 0.997068,
		0.740535, -0.670480, -0.045439,
		0.671973, 0.738012, 0.061566,
		31.362022, 28.742115, 35.495464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354244, 28.051519, 35.836323>,  <30.891642, 28.225508, 35.452366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354244, 28.051519, 35.836323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410784, 28.445795, 35.873070>,  <31.444708, 28.682360, 35.895119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410784, 28.445795, 35.873070>,  <31.354244, 28.051519, 35.836323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410784, 28.445795, 35.873070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071327, -0.102700, 0.992152,
		0.987387, -0.133686, -0.084823,
		0.141348, 0.985688, 0.091869,
		31.453188, 28.741501, 35.900631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025925, 28.274391, 36.247849>,  <31.354244, 28.051519, 35.836323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025925, 28.274391, 36.247849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788620, 28.595860, 36.266441>,  <31.646238, 28.788740, 36.277596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788620, 28.595860, 36.266441>,  <32.025925, 28.274391, 36.247849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788620, 28.595860, 36.266441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054991, -0.017145, 0.998340,
		0.803132, 0.594829, -0.034023,
		-0.593258, 0.803669, 0.046480,
		31.610643, 28.836960, 36.280384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301350, 28.677694, 36.779438>,  <32.025925, 28.274391, 36.247849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301350, 28.677694, 36.779438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919930, 28.789492, 36.734478>,  <31.691078, 28.856569, 36.707504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919930, 28.789492, 36.734478>,  <32.301350, 28.677694, 36.779438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919930, 28.789492, 36.734478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106498, 0.036253, 0.993652,
		0.281794, 0.959463, -0.004803,
		-0.953546, 0.279493, -0.112397,
		31.633865, 28.873339, 36.700760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311436, 29.201307, 37.182903>,  <32.301350, 28.677694, 36.779438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311436, 29.201307, 37.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917870, 29.140491, 37.145386>,  <31.681730, 29.104002, 37.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917870, 29.140491, 37.145386>,  <32.311436, 29.201307, 37.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917870, 29.140491, 37.145386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099677, 0.031504, 0.994521,
		-0.148253, 0.987872, -0.046152,
		-0.983913, -0.152041, -0.093797,
		31.622696, 29.094879, 37.117245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855268, 29.784393, 37.507191>,  <32.311436, 29.201307, 37.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855268, 29.784393, 37.507191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625706, 29.456829, 37.505447>,  <31.487968, 29.260290, 37.504402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625706, 29.456829, 37.505447>,  <31.855268, 29.784393, 37.507191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625706, 29.456829, 37.505447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155754, 0.103929, 0.982313,
		-0.803973, 0.564434, -0.187194,
		-0.573906, -0.818909, -0.004357,
		31.453533, 29.211157, 37.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177547, 29.932205, 37.841282>,  <31.855268, 29.784393, 37.507191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177547, 29.932205, 37.841282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242241, 29.538149, 37.864410>,  <31.281057, 29.301716, 37.878288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242241, 29.538149, 37.864410>,  <31.177547, 29.932205, 37.841282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242241, 29.538149, 37.864410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088227, 0.043920, 0.995132,
		-0.982883, -0.166045, -0.079813,
		0.161731, -0.985140, 0.057818,
		31.290760, 29.242607, 37.881756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847326, 29.817511, 38.357807>,  <31.177547, 29.932205, 37.841282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847326, 29.817511, 38.357807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046921, 29.475689, 38.300182>,  <31.166677, 29.270596, 38.265610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046921, 29.475689, 38.300182>,  <30.847326, 29.817511, 38.357807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046921, 29.475689, 38.300182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109035, -0.226817, 0.967815,
		-0.859724, -0.467217, -0.206354,
		0.498984, -0.854553, -0.144058,
		31.196617, 29.219322, 38.256966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358500, 29.339094, 38.610638>,  <30.847326, 29.817511, 38.357807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358500, 29.339094, 38.610638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718254, 29.164373, 38.603615>,  <30.934107, 29.059542, 38.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718254, 29.164373, 38.603615>,  <30.358500, 29.339094, 38.610638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718254, 29.164373, 38.603615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250677, -0.548224, 0.797879,
		-0.358137, -0.713202, -0.602561,
		0.899387, -0.436799, -0.017556,
		30.988070, 29.033333, 38.598347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207937, 28.746258, 38.926666>,  <30.358500, 29.339094, 38.610638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207937, 28.746258, 38.926666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599773, 28.819921, 38.958897>,  <30.834875, 28.864120, 38.978233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599773, 28.819921, 38.958897>,  <30.207937, 28.746258, 38.926666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599773, 28.819921, 38.958897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025833, -0.282189, 0.959011,
		0.199348, -0.941517, -0.271671,
		0.979588, 0.184159, 0.080576,
		30.893650, 28.875170, 38.983070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432114, 28.318104, 39.423393>,  <30.207937, 28.746258, 38.926666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432114, 28.318104, 39.423393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731457, 28.582771, 39.404827>,  <30.911062, 28.741571, 39.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731457, 28.582771, 39.404827>,  <30.432114, 28.318104, 39.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731457, 28.582771, 39.404827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130434, -0.078194, 0.988369,
		0.650346, -0.745706, -0.144821,
		0.748357, 0.661671, -0.046412,
		30.955963, 28.781273, 39.390903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915373, 28.095325, 39.872810>,  <30.432114, 28.318104, 39.423393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915373, 28.095325, 39.872810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957178, 28.491371, 39.835388>,  <30.982262, 28.728998, 39.812935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957178, 28.491371, 39.835388>,  <30.915373, 28.095325, 39.872810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957178, 28.491371, 39.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224596, 0.068141, 0.972067,
		0.968831, -0.122607, -0.215254,
		0.104514, 0.990113, -0.093554,
		30.988533, 28.788404, 39.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466591, 28.177317, 40.254379>,  <30.915373, 28.095325, 39.872810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466591, 28.177317, 40.254379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296717, 28.539076, 40.270912>,  <31.194792, 28.756130, 40.280830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296717, 28.539076, 40.270912>,  <31.466591, 28.177317, 40.254379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296717, 28.539076, 40.270912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154733, 0.027528, 0.987573,
		0.892020, 0.425804, -0.151631,
		-0.424687, 0.904396, 0.041331,
		31.169312, 28.810394, 40.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759089, 28.417789, 40.823608>,  <31.466591, 28.177317, 40.254379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759089, 28.417789, 40.823608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496601, 28.712486, 40.758385>,  <31.339108, 28.889303, 40.719250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496601, 28.712486, 40.758385>,  <31.759089, 28.417789, 40.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496601, 28.712486, 40.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117664, 0.313366, 0.942315,
		0.745340, 0.599179, -0.292324,
		-0.656220, 0.736741, -0.163062,
		31.299736, 28.933508, 40.709465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132141, 28.873650, 41.250126>,  <31.759089, 28.417789, 40.823608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132141, 28.873650, 41.250126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745583, 28.956051, 41.188614>,  <31.513649, 29.005491, 41.151707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745583, 28.956051, 41.188614>,  <32.132141, 28.873650, 41.250126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745583, 28.956051, 41.188614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119013, 0.171707, 0.977933,
		0.227863, 0.963368, -0.141420,
		-0.966392, 0.206004, -0.153780,
		31.455666, 29.017853, 41.142479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075928, 29.437017, 41.638947>,  <32.132141, 28.873650, 41.250126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075928, 29.437017, 41.638947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720552, 29.266125, 41.571838>,  <31.507326, 29.163589, 41.531574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720552, 29.266125, 41.571838>,  <32.075928, 29.437017, 41.638947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720552, 29.266125, 41.571838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163029, -0.047956, 0.985455,
		-0.429065, 0.902869, -0.027045,
		-0.888440, -0.427233, -0.167770,
		31.454021, 29.137955, 41.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676136, 29.861969, 42.008259>,  <32.075928, 29.437017, 41.638947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676136, 29.861969, 42.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465137, 29.527882, 41.946083>,  <31.338539, 29.327429, 41.908779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465137, 29.527882, 41.946083>,  <31.676136, 29.861969, 42.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465137, 29.527882, 41.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119985, -0.107886, 0.986896,
		-0.841043, 0.539233, -0.043304,
		-0.527495, -0.835218, -0.155436,
		31.306889, 29.277317, 41.899452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966227, 29.889080, 42.348778>,  <31.676136, 29.861969, 42.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966227, 29.889080, 42.348778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026915, 29.495968, 42.306591>,  <31.063328, 29.260101, 42.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026915, 29.495968, 42.306591>,  <30.966227, 29.889080, 42.348778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026915, 29.495968, 42.306591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223353, -0.138035, 0.964915,
		-0.962858, -0.122838, -0.240449,
		0.151719, -0.982781, -0.105471,
		31.072430, 29.201134, 42.274948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363981, 29.519302, 42.499901>,  <30.966227, 29.889080, 42.348778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363981, 29.519302, 42.499901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646683, 29.245129, 42.569958>,  <30.816303, 29.080624, 42.611992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646683, 29.245129, 42.569958>,  <30.363981, 29.519302, 42.499901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646683, 29.245129, 42.569958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480444, -0.283301, 0.830009,
		-0.519299, -0.670759, -0.529538,
		0.706754, -0.685436, 0.175144,
		30.858709, 29.039497, 42.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042646, 28.931356, 42.713276>,  <30.363981, 29.519302, 42.499901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042646, 28.931356, 42.713276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418837, 28.895744, 42.844471>,  <30.644550, 28.874376, 42.923187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418837, 28.895744, 42.844471>,  <30.042646, 28.931356, 42.713276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418837, 28.895744, 42.844471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336301, -0.383029, 0.860343,
		0.049032, -0.919436, -0.390171,
		0.940477, -0.089030, 0.327988,
		30.700979, 28.869036, 42.942867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938068, 28.379234, 43.132877>,  <30.042646, 28.931356, 42.713276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938068, 28.379234, 43.132877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303547, 28.498407, 43.243435>,  <30.522835, 28.569910, 43.309769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303547, 28.498407, 43.243435>,  <29.938068, 28.379234, 43.132877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303547, 28.498407, 43.243435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131147, -0.427570, 0.894418,
		0.384654, -0.853476, -0.351597,
		0.913697, 0.297931, 0.276397,
		30.577656, 28.587786, 43.326355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201845, 27.815939, 43.452545>,  <29.938068, 28.379234, 43.132877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201845, 27.815939, 43.452545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441717, 28.099182, 43.601658>,  <30.585640, 28.269129, 43.691124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441717, 28.099182, 43.601658>,  <30.201845, 27.815939, 43.452545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441717, 28.099182, 43.601658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158102, -0.351819, 0.922620,
		0.784468, -0.612212, -0.099024,
		0.599678, 0.708110, 0.372783,
		30.621620, 28.311615, 43.713493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648268, 27.508926, 43.803604>,  <30.201845, 27.815939, 43.452545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648268, 27.508926, 43.803604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670353, 27.874235, 43.965042>,  <30.683605, 28.093420, 44.061905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670353, 27.874235, 43.965042>,  <30.648268, 27.508926, 43.803604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670353, 27.874235, 43.965042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201958, -0.406069, 0.891247,
		0.977837, 0.032300, -0.206863,
		0.055214, 0.913271, 0.403593,
		30.686916, 28.148216, 44.086121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206427, 27.502350, 44.303570>,  <30.648268, 27.508926, 43.803604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206427, 27.502350, 44.303570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989517, 27.820881, 44.410755>,  <30.859371, 28.011999, 44.475067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989517, 27.820881, 44.410755>,  <31.206427, 27.502350, 44.303570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989517, 27.820881, 44.410755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051345, -0.286925, 0.956576,
		0.838632, 0.532485, 0.114705,
		-0.542274, 0.796325, 0.267965,
		30.826836, 28.059778, 44.491146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520872, 27.762329, 44.933060>,  <31.206427, 27.502350, 44.303570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520872, 27.762329, 44.933060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156454, 27.927221, 44.936298>,  <30.937803, 28.026155, 44.938244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156454, 27.927221, 44.936298>,  <31.520872, 27.762329, 44.933060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156454, 27.927221, 44.936298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127236, -0.299774, 0.945487,
		0.392186, 0.860350, 0.325557,
		-0.911044, 0.412229, 0.008099,
		30.883141, 28.050890, 44.938728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168926, 28.013880, 45.145969>,  <31.520872, 27.762329, 44.933060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168926, 28.013880, 45.145969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504066, 27.879429, 45.318027>,  <32.705151, 27.798758, 45.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504066, 27.879429, 45.318027>,  <32.168926, 28.013880, 45.145969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504066, 27.879429, 45.318027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468462, 0.038164, -0.882659,
		0.280271, 0.941042, 0.189440,
		0.837849, -0.336129, 0.430147,
		32.755421, 27.778589, 45.447071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745052, 28.360044, 44.767902>,  <32.168926, 28.013880, 45.145969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745052, 28.360044, 44.767902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928555, 28.061531, 44.960819>,  <33.038658, 27.882423, 45.076569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928555, 28.061531, 44.960819>,  <32.745052, 28.360044, 44.767902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928555, 28.061531, 44.960819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452411, -0.270980, -0.849643,
		0.764765, 0.607975, 0.213311,
		0.458759, -0.746282, 0.482291,
		33.066181, 27.837646, 45.105507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397247, 28.452007, 44.589321>,  <32.745052, 28.360044, 44.767902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397247, 28.452007, 44.589321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393398, 28.073645, 44.719036>,  <33.391087, 27.846626, 44.796867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393398, 28.073645, 44.719036>,  <33.397247, 28.452007, 44.589321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393398, 28.073645, 44.719036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346039, -0.307420, -0.886426,
		0.938171, 0.103686, 0.330279,
		-0.009624, -0.945908, 0.324292,
		33.390511, 27.789873, 44.816322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076759, 28.209225, 44.538185>,  <33.397247, 28.452007, 44.589321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076759, 28.209225, 44.538185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818367, 27.903885, 44.538605>,  <33.663330, 27.720680, 44.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818367, 27.903885, 44.538605>,  <34.076759, 28.209225, 44.538185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818367, 27.903885, 44.538605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326706, -0.277718, -0.903402,
		0.689903, -0.583241, 0.428793,
		-0.645985, -0.763350, 0.001050,
		33.624573, 27.674879, 44.538921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372299, 27.868219, 44.066818>,  <34.076759, 28.209225, 44.538185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372299, 27.868219, 44.066818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008636, 27.703903, 44.094208>,  <33.790440, 27.605314, 44.110641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008636, 27.703903, 44.094208>,  <34.372299, 27.868219, 44.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008636, 27.703903, 44.094208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065073, -0.302535, -0.950914,
		0.411342, -0.860072, 0.301783,
		-0.909155, -0.410789, 0.068478,
		33.735889, 27.580666, 44.114750>
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
