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
	<24.176987, 34.929760, 35.073605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428944, 35.237011, 35.027634>,  <24.580118, 35.421364, 35.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428944, 35.237011, 35.027634>,  <24.176987, 34.929760, 35.073605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428944, 35.237011, 35.027634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688468, -0.483715, 0.540400,
		0.359506, -0.419517, -0.833523,
		0.629894, 0.768131, -0.114925,
		24.617912, 35.467449, 34.993156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905468, 34.810253, 34.957218>,  <24.176987, 34.929760, 35.073605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905468, 34.810253, 34.957218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898659, 35.166759, 35.138481>,  <24.894573, 35.380665, 35.247238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898659, 35.166759, 35.138481>,  <24.905468, 34.810253, 34.957218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898659, 35.166759, 35.138481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588141, -0.357593, 0.725408,
		0.808579, 0.278869, -0.518104,
		-0.017023, 0.891268, 0.453157,
		24.893553, 35.434139, 35.274429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530443, 34.960686, 35.174675>,  <24.905468, 34.810253, 34.957218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530443, 34.960686, 35.174675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260469, 35.141541, 35.407925>,  <25.098486, 35.250053, 35.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260469, 35.141541, 35.407925>,  <25.530443, 34.960686, 35.174675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260469, 35.141541, 35.407925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413074, -0.423320, 0.806332,
		0.611419, 0.785096, 0.098949,
		-0.674935, 0.452133, 0.583128,
		25.057989, 35.277180, 35.582863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762457, 35.288651, 35.667576>,  <25.530443, 34.960686, 35.174675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762457, 35.288651, 35.667576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400515, 35.240906, 35.831032>,  <25.183350, 35.212257, 35.929104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400515, 35.240906, 35.831032>,  <25.762457, 35.288651, 35.667576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400515, 35.240906, 35.831032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423116, -0.358079, 0.832317,
		0.046975, 0.926030, 0.374516,
		-0.904857, -0.119366, 0.408639,
		25.129057, 35.205097, 35.953625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903027, 35.557472, 36.331902>,  <25.762457, 35.288651, 35.667576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903027, 35.557472, 36.331902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618668, 35.276199, 36.336849>,  <25.448051, 35.107433, 36.339817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618668, 35.276199, 36.336849>,  <25.903027, 35.557472, 36.331902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618668, 35.276199, 36.336849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364638, -0.353485, 0.861445,
		-0.601383, 0.616911, 0.507700,
		-0.710899, -0.703186, 0.012369,
		25.405397, 35.065243, 36.340561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597576, 35.434235, 37.102413>,  <25.903027, 35.557472, 36.331902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597576, 35.434235, 37.102413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491648, 35.122475, 36.875290>,  <25.428091, 34.935417, 36.739017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491648, 35.122475, 36.875290>,  <25.597576, 35.434235, 37.102413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491648, 35.122475, 36.875290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129217, -0.612198, 0.780074,
		-0.955600, 0.133212, 0.262836,
		-0.264823, -0.779402, -0.567804,
		25.412201, 34.888653, 36.704948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092804, 35.138569, 37.453918>,  <25.597576, 35.434235, 37.102413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092804, 35.138569, 37.453918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243547, 34.853374, 37.217400>,  <25.333994, 34.682259, 37.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243547, 34.853374, 37.217400>,  <25.092804, 35.138569, 37.453918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243547, 34.853374, 37.217400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159716, -0.578784, 0.799687,
		-0.912397, -0.395808, -0.104245,
		0.376858, -0.712983, -0.591298,
		25.356606, 34.639481, 37.040009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887403, 34.440449, 37.767963>,  <25.092804, 35.138569, 37.453918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887403, 34.440449, 37.767963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200718, 34.379757, 37.526817>,  <25.388706, 34.343342, 37.382130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200718, 34.379757, 37.526817>,  <24.887403, 34.440449, 37.767963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200718, 34.379757, 37.526817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435200, -0.558655, 0.706049,
		-0.443922, -0.815403, -0.371552,
		0.783284, -0.151731, -0.602862,
		25.435703, 34.334236, 37.345959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023235, 33.707787, 37.710506>,  <24.887403, 34.440449, 37.767963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023235, 33.707787, 37.710506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373215, 33.876389, 37.615181>,  <25.583202, 33.977551, 37.557983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.373215, 33.876389, 37.615181>,  <25.023235, 33.707787, 37.710506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373215, 33.876389, 37.615181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460488, -0.572144, 0.678676,
		0.149714, -0.703550, -0.694696,
		0.874950, 0.421506, -0.238318,
		25.635700, 34.002842, 37.543686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456104, 33.165485, 37.518623>,  <25.023235, 33.707787, 37.710506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456104, 33.165485, 37.518623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713142, 33.462433, 37.594467>,  <25.867365, 33.640602, 37.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713142, 33.462433, 37.594467>,  <25.456104, 33.165485, 37.518623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713142, 33.462433, 37.594467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560359, -0.624116, 0.544498,
		0.522559, -0.243643, -0.817050,
		0.642597, 0.742373, 0.189610,
		25.905922, 33.685146, 37.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168341, 32.947479, 37.323475>,  <25.456104, 33.165485, 37.518623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168341, 32.947479, 37.323475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227345, 33.253265, 37.574501>,  <26.262747, 33.436737, 37.725117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227345, 33.253265, 37.574501>,  <26.168341, 32.947479, 37.323475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227345, 33.253265, 37.574501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602780, -0.572536, 0.555751,
		0.784154, 0.296306, -0.545257,
		0.147507, 0.764464, 0.627564,
		26.271597, 33.482605, 37.762772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818794, 32.940823, 37.441845>,  <26.168341, 32.947479, 37.323475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818794, 32.940823, 37.441845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669067, 33.149483, 37.748508>,  <26.579231, 33.274677, 37.932507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669067, 33.149483, 37.748508>,  <26.818794, 32.940823, 37.441845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669067, 33.149483, 37.748508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537717, -0.551468, 0.637765,
		0.755479, 0.650972, -0.074076,
		-0.374317, 0.521649, 0.766661,
		26.556772, 33.305977, 37.978508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370905, 33.259903, 37.713013>,  <26.818794, 32.940823, 37.441845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370905, 33.259903, 37.713013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084509, 33.242847, 37.991737>,  <26.912672, 33.232616, 38.158970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084509, 33.242847, 37.991737>,  <27.370905, 33.259903, 37.713013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084509, 33.242847, 37.991737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643732, -0.426543, 0.635350,
		0.270130, 0.903462, 0.332846,
		-0.715988, -0.042637, 0.696810,
		26.869713, 33.230057, 38.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811087, 33.313110, 38.259785>,  <27.370905, 33.259903, 37.713013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811087, 33.313110, 38.259785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464991, 33.179676, 38.409492>,  <27.257332, 33.099613, 38.499317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464991, 33.179676, 38.409492>,  <27.811087, 33.313110, 38.259785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464991, 33.179676, 38.409492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499343, -0.506588, 0.702869,
		-0.044871, 0.795039, 0.604897,
		-0.865242, -0.333589, 0.374266,
		27.205418, 33.079597, 38.521770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963131, 33.255688, 38.939144>,  <27.811087, 33.313110, 38.259785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963131, 33.255688, 38.939144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630575, 33.041130, 38.881077>,  <27.431042, 32.912395, 38.846237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630575, 33.041130, 38.881077>,  <27.963131, 33.255688, 38.939144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630575, 33.041130, 38.881077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388497, -0.747845, 0.538330,
		-0.397319, 0.391165, 0.830137,
		-0.831389, -0.536394, -0.145166,
		27.381159, 32.880211, 38.837528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679415, 33.048698, 39.608261>,  <27.963131, 33.255688, 38.939144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679415, 33.048698, 39.608261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543440, 32.783222, 39.341743>,  <27.461855, 32.623936, 39.181831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543440, 32.783222, 39.341743>,  <27.679415, 33.048698, 39.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543440, 32.783222, 39.341743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254728, -0.746984, 0.614107,
		-0.905293, 0.039033, 0.422990,
		-0.339937, -0.663695, -0.666297,
		27.441458, 32.584114, 39.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476252, 32.545315, 40.032722>,  <27.679415, 33.048698, 39.608261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476252, 32.545315, 40.032722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491947, 32.356861, 39.680248>,  <27.501364, 32.243790, 39.468765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491947, 32.356861, 39.680248>,  <27.476252, 32.545315, 40.032722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491947, 32.356861, 39.680248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129446, -0.872038, 0.472010,
		-0.990810, -0.132587, 0.026770,
		0.039238, -0.471137, -0.881187,
		27.503719, 32.215519, 39.415894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969124, 32.051556, 40.023712>,  <27.476252, 32.545315, 40.032722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969124, 32.051556, 40.023712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252361, 31.935570, 39.766178>,  <27.422304, 31.865978, 39.611656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252361, 31.935570, 39.766178>,  <26.969124, 32.051556, 40.023712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252361, 31.935570, 39.766178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144610, -0.832921, 0.534164,
		-0.691151, -0.471344, -0.547856,
		0.708095, -0.289962, -0.643835,
		27.464790, 31.848581, 39.573029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896244, 31.288231, 40.012440>,  <26.969124, 32.051556, 40.023712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896244, 31.288231, 40.012440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238382, 31.332151, 39.809925>,  <27.443665, 31.358503, 39.688416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238382, 31.332151, 39.809925>,  <26.896244, 31.288231, 40.012440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238382, 31.332151, 39.809925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340371, -0.855863, 0.389419,
		-0.390554, -0.505413, -0.769432,
		0.855345, 0.109803, -0.506288,
		27.494986, 31.365091, 39.658039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077620, 30.629404, 39.640984>,  <26.896244, 31.288231, 40.012440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077620, 30.629404, 39.640984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436161, 30.805351, 39.663151>,  <27.651285, 30.910919, 39.676453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436161, 30.805351, 39.663151>,  <27.077620, 30.629404, 39.640984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436161, 30.805351, 39.663151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373286, -0.816230, 0.440938,
		0.239188, -0.374549, -0.895825,
		0.896352, 0.439866, 0.055419,
		27.705067, 30.937311, 39.679775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491489, 30.076588, 39.512226>,  <27.077620, 30.629404, 39.640984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491489, 30.076588, 39.512226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738810, 30.354553, 39.659084>,  <27.887201, 30.521334, 39.747200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738810, 30.354553, 39.659084>,  <27.491489, 30.076588, 39.512226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738810, 30.354553, 39.659084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489969, -0.706069, 0.511270,
		0.614519, -0.136230, -0.777051,
		0.618302, 0.694916, 0.367144,
		27.924299, 30.563028, 39.769226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117558, 29.675182, 39.425053>,  <27.491489, 30.076588, 39.512226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117558, 29.675182, 39.425053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200336, 29.984360, 39.664963>,  <28.250004, 30.169867, 39.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200336, 29.984360, 39.664963>,  <28.117558, 29.675182, 39.425053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200336, 29.984360, 39.664963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663182, -0.561538, 0.494838,
		0.719279, 0.295356, -0.628810,
		0.206947, 0.772943, 0.599777,
		28.262421, 30.216242, 39.844894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926073, 29.919716, 39.352791>,  <28.117558, 29.675182, 39.425053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926073, 29.919716, 39.352791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771160, 29.997955, 39.713181>,  <28.678213, 30.044899, 39.929413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771160, 29.997955, 39.713181>,  <28.926073, 29.919716, 39.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771160, 29.997955, 39.713181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733796, -0.526242, 0.429665,
		0.558173, 0.827533, 0.060273,
		-0.387280, 0.195599, 0.900974,
		28.654976, 30.056635, 39.983475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459383, 29.846592, 39.756508>,  <28.926073, 29.919716, 39.352791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459383, 29.846592, 39.756508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179565, 29.858770, 40.042084>,  <29.011675, 29.866077, 40.213428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179565, 29.858770, 40.042084>,  <29.459383, 29.846592, 39.756508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179565, 29.858770, 40.042084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561963, -0.593701, 0.575949,
		0.441403, 0.804110, 0.398210,
		-0.699544, 0.030447, 0.713941,
		28.969702, 29.867905, 40.256268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752853, 29.979931, 40.415962>,  <29.459383, 29.846592, 39.756508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752853, 29.979931, 40.415962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436535, 29.738813, 40.458443>,  <29.246744, 29.594143, 40.483932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436535, 29.738813, 40.458443>,  <29.752853, 29.979931, 40.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436535, 29.738813, 40.458443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531893, -0.590911, 0.606559,
		-0.302873, 0.536154, 0.787913,
		-0.790796, -0.602796, 0.106206,
		29.199297, 29.557974, 40.490303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916183, 29.293488, 40.131260>,  <29.752853, 29.979931, 40.415962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916183, 29.293488, 40.131260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283298, 29.432268, 40.054020>,  <30.503567, 29.515537, 40.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283298, 29.432268, 40.054020>,  <29.916183, 29.293488, 40.131260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283298, 29.432268, 40.054020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340833, -0.937863, -0.065160,
		-0.203710, -0.006012, -0.979013,
		0.917788, 0.346953, -0.193101,
		30.558636, 29.536354, 39.996090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120029, 28.981760, 39.462406>,  <29.916183, 29.293488, 40.131260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120029, 28.981760, 39.462406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425438, 29.090925, 39.696518>,  <30.608683, 29.156425, 39.836987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425438, 29.090925, 39.696518>,  <30.120029, 28.981760, 39.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425438, 29.090925, 39.696518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447067, -0.877396, -0.174089,
		0.466011, 0.394580, -0.791922,
		0.763522, 0.272915, 0.585280,
		30.654495, 29.172800, 39.872101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480295, 29.020346, 39.062263>,  <30.120029, 28.981760, 39.462406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480295, 29.020346, 39.062263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686085, 29.298012, 38.860889>,  <29.809559, 29.464611, 38.740063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686085, 29.298012, 38.860889>,  <29.480295, 29.020346, 39.062263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686085, 29.298012, 38.860889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324578, -0.701057, -0.634955,
		-0.793703, 0.163264, -0.585987,
		0.514476, 0.694164, -0.503439,
		29.840427, 29.506262, 38.709858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298441, 28.981903, 38.347214>,  <29.480295, 29.020346, 39.062263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298441, 28.981903, 38.347214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670309, 29.121223, 38.395214>,  <29.893431, 29.204815, 38.424015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670309, 29.121223, 38.395214>,  <29.298441, 28.981903, 38.347214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670309, 29.121223, 38.395214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351946, -0.743498, -0.568634,
		-0.108838, 0.570875, -0.813791,
		0.929671, 0.348300, 0.119996,
		29.949211, 29.225714, 38.431213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637148, 29.008850, 37.642246>,  <29.298441, 28.981903, 38.347214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637148, 29.008850, 37.642246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893358, 28.935362, 37.940502>,  <30.047085, 28.891270, 38.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893358, 28.935362, 37.940502>,  <29.637148, 29.008850, 37.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893358, 28.935362, 37.940502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396369, -0.752532, -0.525915,
		0.657736, 0.632409, -0.409196,
		0.640527, -0.183720, 0.745636,
		30.085516, 28.880245, 38.164192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260546, 28.947479, 37.295902>,  <29.637148, 29.008850, 37.642246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260546, 28.947479, 37.295902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278261, 28.737667, 37.635998>,  <30.288891, 28.611780, 37.840057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278261, 28.737667, 37.635998>,  <30.260546, 28.947479, 37.295902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278261, 28.737667, 37.635998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241229, -0.820277, -0.518608,
		0.969457, 0.228071, 0.090203,
		0.044288, -0.524528, 0.850240,
		30.291548, 28.580309, 37.891071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935715, 28.779249, 37.481056>,  <30.260546, 28.947479, 37.295902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935715, 28.779249, 37.481056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603823, 28.560606, 37.526249>,  <30.404688, 28.429420, 37.553364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603823, 28.560606, 37.526249>,  <30.935715, 28.779249, 37.481056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603823, 28.560606, 37.526249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346106, -0.662657, -0.664151,
		0.437902, -0.511961, 0.739011,
		-0.829731, -0.546609, 0.112985,
		30.354904, 28.396624, 37.560146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101854, 28.156868, 37.872002>,  <30.935715, 28.779249, 37.481056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101854, 28.156868, 37.872002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794716, 28.113827, 37.619389>,  <30.610434, 28.088001, 37.467819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794716, 28.113827, 37.619389>,  <31.101854, 28.156868, 37.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794716, 28.113827, 37.619389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525153, -0.670324, -0.524290,
		-0.366918, -0.734226, 0.571213,
		-0.767845, -0.107603, -0.631535,
		30.564362, 28.081547, 37.429928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905058, 27.433270, 37.934631>,  <31.101854, 28.156868, 37.872002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905058, 27.433270, 37.934631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826389, 27.609337, 37.584187>,  <30.779188, 27.714977, 37.373920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826389, 27.609337, 37.584187>,  <30.905058, 27.433270, 37.934631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826389, 27.609337, 37.584187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542768, -0.695279, -0.471158,
		-0.816531, -0.568189, -0.102167,
		-0.196672, 0.440168, -0.876112,
		30.767387, 27.741388, 37.321354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560095, 26.942991, 37.569630>,  <30.905058, 27.433270, 37.934631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560095, 26.942991, 37.569630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770866, 27.219257, 37.371506>,  <30.897329, 27.385017, 37.252632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770866, 27.219257, 37.371506>,  <30.560095, 26.942991, 37.569630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770866, 27.219257, 37.371506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449861, -0.721091, -0.526927,
		-0.721091, 0.054833, -0.690667,
		0.526927, 0.690667, -0.495306,
		30.928944, 27.426456, 37.222916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061760, 27.159855, 37.134003>,  <30.560095, 26.942991, 37.569630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061760, 27.159855, 37.134003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780281, 26.880081, 37.183968>,  <29.611393, 26.712217, 37.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780281, 26.880081, 37.183968>,  <30.061760, 27.159855, 37.134003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780281, 26.880081, 37.183968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598369, 0.488613, -0.634990,
		0.383097, -0.521587, -0.762355,
		-0.703699, -0.699431, 0.124915,
		29.569172, 26.670252, 37.221443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914331, 26.792770, 36.422344>,  <30.061760, 27.159855, 37.134003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914331, 26.792770, 36.422344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590565, 26.757290, 36.654541>,  <29.396305, 26.736002, 36.793861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590565, 26.757290, 36.654541>,  <29.914331, 26.792770, 36.422344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590565, 26.757290, 36.654541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573965, 0.328444, -0.750126,
		-0.124125, -0.940349, -0.316758,
		-0.809417, -0.088699, 0.580496,
		29.347740, 26.730680, 36.828690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438320, 26.858400, 35.878338>,  <29.914331, 26.792770, 36.422344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438320, 26.858400, 35.878338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210428, 26.827824, 36.205647>,  <29.073692, 26.809477, 36.402031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210428, 26.827824, 36.205647>,  <29.438320, 26.858400, 35.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210428, 26.827824, 36.205647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783478, 0.351135, -0.512704,
		-0.248131, -0.933199, -0.259943,
		-0.569731, -0.076442, 0.818269,
		29.039509, 26.804892, 36.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669224, 26.662336, 35.768173>,  <29.438320, 26.858400, 35.878338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669224, 26.662336, 35.768173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673567, 26.877079, 36.105614>,  <28.676172, 27.005924, 36.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673567, 26.877079, 36.105614>,  <28.669224, 26.662336, 35.768173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673567, 26.877079, 36.105614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723094, 0.586932, -0.364207,
		-0.690664, -0.606051, 0.394569,
		0.010857, 0.536855, 0.843605,
		28.676825, 27.038136, 36.358696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957514, 26.626730, 36.051365>,  <28.669224, 26.662336, 35.768173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957514, 26.626730, 36.051365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101984, 26.929676, 36.268970>,  <28.188665, 27.111444, 36.399532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101984, 26.929676, 36.268970>,  <27.957514, 26.626730, 36.051365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101984, 26.929676, 36.268970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777370, 0.566753, -0.272923,
		-0.515023, -0.324325, 0.793451,
		0.361175, 0.757366, 0.544011,
		28.210337, 27.156885, 36.432175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387997, 26.902622, 36.498055>,  <27.957514, 26.626730, 36.051365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387997, 26.902622, 36.498055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666407, 27.187536, 36.461826>,  <27.833452, 27.358484, 36.440090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666407, 27.187536, 36.461826>,  <27.387997, 26.902622, 36.498055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666407, 27.187536, 36.461826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717978, 0.689076, -0.098401,
		-0.007679, 0.133516, 0.991017,
		0.696024, 0.712283, -0.090570,
		27.875214, 27.401220, 36.434654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032377, 27.476772, 36.653786>,  <27.387997, 26.902622, 36.498055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032377, 27.476772, 36.653786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359190, 27.646021, 36.497108>,  <27.555279, 27.747570, 36.403103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359190, 27.646021, 36.497108>,  <27.032377, 27.476772, 36.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359190, 27.646021, 36.497108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541112, 0.797291, -0.267443,
		0.199133, 0.430460, 0.880370,
		0.817034, 0.423122, -0.391694,
		27.604300, 27.772957, 36.379601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066629, 28.042294, 36.923180>,  <27.032377, 27.476772, 36.653786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066629, 28.042294, 36.923180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285069, 28.097565, 36.592682>,  <27.416132, 28.130728, 36.394382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285069, 28.097565, 36.592682>,  <27.066629, 28.042294, 36.923180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285069, 28.097565, 36.592682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501210, 0.844188, -0.190094,
		0.671240, 0.517933, 0.530266,
		0.546100, 0.138176, -0.826246,
		27.448898, 28.139017, 36.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239233, 28.675489, 37.095310>,  <27.066629, 28.042294, 36.923180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239233, 28.675489, 37.095310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263962, 28.583513, 36.706814>,  <27.278799, 28.528328, 36.473717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263962, 28.583513, 36.706814>,  <27.239233, 28.675489, 37.095310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263962, 28.583513, 36.706814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252638, 0.937806, -0.238106,
		0.965584, 0.260092, -0.000113,
		0.061823, -0.229940, -0.971239,
		27.282509, 28.514532, 36.415443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525772, 29.301836, 36.842030>,  <27.239233, 28.675489, 37.095310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525772, 29.301836, 36.842030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363371, 29.114048, 36.528404>,  <27.265930, 29.001375, 36.340229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363371, 29.114048, 36.528404>,  <27.525772, 29.301836, 36.842030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363371, 29.114048, 36.528404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328713, 0.875559, -0.354040,
		0.852707, 0.113991, -0.509801,
		-0.406003, -0.469471, -0.784066,
		27.241570, 28.973207, 36.293186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712889, 29.688383, 36.266415>,  <27.525772, 29.301836, 36.842030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712889, 29.688383, 36.266415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393444, 29.490126, 36.129852>,  <27.201777, 29.371172, 36.047916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393444, 29.490126, 36.129852>,  <27.712889, 29.688383, 36.266415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393444, 29.490126, 36.129852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218667, 0.767452, -0.602663,
		0.560715, -0.406641, -0.721278,
		-0.798613, -0.495642, -0.341403,
		27.153860, 29.341433, 36.027431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672613, 29.753311, 35.495331>,  <27.712889, 29.688383, 36.266415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672613, 29.753311, 35.495331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299143, 29.655243, 35.599747>,  <27.075062, 29.596401, 35.662395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299143, 29.655243, 35.599747>,  <27.672613, 29.753311, 35.495331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299143, 29.655243, 35.599747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328003, 0.878041, -0.348509,
		-0.143762, -0.411017, -0.900221,
		-0.933673, -0.245173, 0.261043,
		27.019041, 29.581692, 35.678059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200939, 29.953079, 34.866829>,  <27.672613, 29.753311, 35.495331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200939, 29.953079, 34.866829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957327, 29.913353, 35.181591>,  <26.811159, 29.889517, 35.370449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957327, 29.913353, 35.181591>,  <27.200939, 29.953079, 34.866829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957327, 29.913353, 35.181591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417006, 0.884032, -0.211173,
		-0.674676, -0.456755, -0.579816,
		-0.609031, -0.099313, 0.786905,
		26.774618, 29.883558, 35.417664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620089, 29.985680, 34.626133>,  <27.200939, 29.953079, 34.866829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620089, 29.985680, 34.626133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563351, 30.098314, 35.005730>,  <26.529308, 30.165895, 35.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563351, 30.098314, 35.005730>,  <26.620089, 29.985680, 34.626133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563351, 30.098314, 35.005730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257339, 0.915235, -0.310034,
		-0.955854, -0.288190, -0.057359,
		-0.141846, 0.281586, 0.948993,
		26.520798, 30.182791, 35.290428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850115, 30.283119, 34.678699>,  <26.620089, 29.985680, 34.626133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850115, 30.283119, 34.678699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043041, 30.410730, 35.005035>,  <26.158798, 30.487297, 35.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043041, 30.410730, 35.005035>,  <25.850115, 30.283119, 34.678699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043041, 30.410730, 35.005035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373355, 0.917366, -0.138004,
		-0.792449, -0.238036, 0.561572,
		0.482318, 0.319027, 0.815838,
		26.187737, 30.506439, 35.249786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316906, 30.575092, 35.204395>,  <25.850115, 30.283119, 34.678699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316906, 30.575092, 35.204395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683193, 30.718904, 35.276173>,  <25.902966, 30.805191, 35.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683193, 30.718904, 35.276173>,  <25.316906, 30.575092, 35.204395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683193, 30.718904, 35.276173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374200, 0.925726, 0.054820,
		-0.146409, -0.117349, 0.982239,
		0.915717, 0.359528, 0.179446,
		25.957909, 30.826763, 35.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172495, 31.136509, 35.696026>,  <25.316906, 30.575092, 35.204395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172495, 31.136509, 35.696026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555725, 31.222361, 35.620102>,  <25.785664, 31.273872, 35.574547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555725, 31.222361, 35.620102>,  <25.172495, 31.136509, 35.696026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555725, 31.222361, 35.620102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242504, 0.960250, -0.138242,
		0.152596, 0.178476, 0.972039,
		0.958074, 0.214629, -0.189812,
		25.843147, 31.286749, 35.563160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450407, 31.640802, 36.229843>,  <25.172495, 31.136509, 35.696026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450407, 31.640802, 36.229843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684011, 31.681578, 35.907715>,  <25.824173, 31.706043, 35.714439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684011, 31.681578, 35.907715>,  <25.450407, 31.640802, 36.229843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684011, 31.681578, 35.907715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053467, 0.994760, 0.087147,
		0.809984, -0.007836, 0.586400,
		0.584010, 0.101941, -0.805321,
		25.859215, 31.712160, 35.666119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912144, 32.289143, 36.380436>,  <25.450407, 31.640802, 36.229843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912144, 32.289143, 36.380436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897118, 32.247131, 35.982933>,  <25.888102, 32.221924, 35.744431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897118, 32.247131, 35.982933>,  <25.912144, 32.289143, 36.380436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897118, 32.247131, 35.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176779, 0.978078, -0.110058,
		0.983533, -0.179810, -0.018177,
		-0.037568, -0.105032, -0.993759,
		25.885847, 32.215622, 35.684807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457731, 32.686199, 36.203861>,  <25.912144, 32.289143, 36.380436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457731, 32.686199, 36.203861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257553, 32.667358, 35.858067>,  <26.137445, 32.656055, 35.650589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257553, 32.667358, 35.858067>,  <26.457731, 32.686199, 36.203861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257553, 32.667358, 35.858067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038935, 0.996284, -0.076823,
		0.864892, -0.072105, -0.496752,
		-0.500445, -0.047102, -0.864486,
		26.107420, 32.653229, 35.598721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724695, 33.153385, 35.643879>,  <26.457731, 32.686199, 36.203861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724695, 33.153385, 35.643879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354612, 33.089924, 35.506001>,  <26.132563, 33.051846, 35.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354612, 33.089924, 35.506001>,  <26.724695, 33.153385, 35.643879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354612, 33.089924, 35.506001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067975, 0.963002, -0.260781,
		0.373320, -0.217846, -0.901763,
		-0.925209, -0.158652, -0.344700,
		26.077049, 33.042328, 35.402592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761108, 33.275112, 34.952869>,  <26.724695, 33.153385, 35.643879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761108, 33.275112, 34.952869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388454, 33.329449, 35.087688>,  <26.164862, 33.362053, 35.168579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388454, 33.329449, 35.087688>,  <26.761108, 33.275112, 34.952869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388454, 33.329449, 35.087688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045592, 0.963865, -0.262462,
		-0.360520, -0.229153, -0.904165,
		-0.931637, 0.135846, 0.337045,
		26.108963, 33.370201, 35.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302044, 33.671867, 34.660439>,  <26.761108, 33.275112, 34.952869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302044, 33.671867, 34.660439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385872, 33.988823, 34.431282>,  <27.436169, 34.178997, 34.293789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385872, 33.988823, 34.431282>,  <27.302044, 33.671867, 34.660439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385872, 33.988823, 34.431282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122300, 0.602544, 0.788660,
		0.970115, -0.095216, 0.223184,
		0.209571, 0.792386, -0.572891,
		27.448744, 34.226540, 34.259415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754082, 33.995361, 35.035606>,  <27.302044, 33.671867, 34.660439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754082, 33.995361, 35.035606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608637, 34.265869, 34.779339>,  <27.521370, 34.428173, 34.625580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608637, 34.265869, 34.779339>,  <27.754082, 33.995361, 35.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608637, 34.265869, 34.779339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124019, 0.716761, 0.686202,
		0.923258, 0.170057, -0.344493,
		-0.363613, 0.676265, -0.640665,
		27.499554, 34.468750, 34.587139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356083, 33.677551, 35.313660>,  <27.754082, 33.995361, 35.035606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356083, 33.677551, 35.313660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265852, 33.691807, 34.924232>,  <28.211714, 33.700359, 34.690575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265852, 33.691807, 34.924232>,  <28.356083, 33.677551, 35.313660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265852, 33.691807, 34.924232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972184, 0.072884, -0.222589,
		0.063025, -0.996703, -0.051087,
		-0.225579, 0.035637, -0.973573,
		28.198177, 33.702499, 34.632160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734440, 33.179501, 34.869957>,  <28.356083, 33.677551, 35.313660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734440, 33.179501, 34.869957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635704, 33.511494, 34.669876>,  <28.576462, 33.710690, 34.549828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635704, 33.511494, 34.669876>,  <28.734440, 33.179501, 34.869957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635704, 33.511494, 34.669876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964842, 0.162408, -0.206648,
		-0.090277, -0.533622, -0.840891,
		-0.246839, 0.829982, -0.500199,
		28.561653, 33.760487, 34.519817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005239, 33.251087, 34.257736>,  <28.734440, 33.179501, 34.869957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005239, 33.251087, 34.257736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934767, 33.642712, 34.298546>,  <28.892483, 33.877686, 34.323032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934767, 33.642712, 34.298546>,  <29.005239, 33.251087, 34.257736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934767, 33.642712, 34.298546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910358, 0.201484, -0.361459,
		-0.374444, 0.029194, -0.926790,
		-0.176181, 0.979057, 0.102021,
		28.881912, 33.936428, 34.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045294, 33.612469, 33.642502>,  <29.005239, 33.251087, 34.257736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045294, 33.612469, 33.642502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172583, 33.797729, 33.973373>,  <29.248955, 33.908886, 34.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172583, 33.797729, 33.973373>,  <29.045294, 33.612469, 33.642502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172583, 33.797729, 33.973373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947874, -0.170561, -0.269153,
		0.016426, 0.869711, -0.493288,
		0.318221, 0.463154, 0.827178,
		29.268049, 33.936676, 34.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610668, 34.019802, 33.468067>,  <29.045294, 33.612469, 33.642502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610668, 34.019802, 33.468067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659262, 33.951534, 33.859192>,  <29.688417, 33.910572, 34.093868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659262, 33.951534, 33.859192>,  <29.610668, 34.019802, 33.468067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659262, 33.951534, 33.859192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992560, 0.028963, -0.118262,
		-0.008137, 0.984903, 0.172919,
		0.121485, -0.170670, 0.977810,
		29.695707, 33.900333, 34.152534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022339, 34.536762, 33.928421>,  <29.610668, 34.019802, 33.468067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022339, 34.536762, 33.928421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065863, 34.197044, 34.135056>,  <30.091978, 33.993214, 34.259037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065863, 34.197044, 34.135056>,  <30.022339, 34.536762, 33.928421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065863, 34.197044, 34.135056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985016, 0.162068, 0.058967,
		-0.133803, 0.502434, 0.854199,
		0.108812, -0.849290, 0.516591,
		30.098507, 33.942257, 34.290031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683992, 34.692787, 34.164501>,  <30.022339, 34.536762, 33.928421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683992, 34.692787, 34.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635542, 34.295864, 34.174652>,  <30.606472, 34.057709, 34.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635542, 34.295864, 34.174652>,  <30.683992, 34.692787, 34.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635542, 34.295864, 34.174652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968157, -0.123746, -0.217618,
		0.219086, -0.001786, 0.975704,
		-0.121128, -0.992312, 0.025381,
		30.599203, 33.998169, 34.182266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381084, 34.841858, 33.969841>,  <30.683992, 34.692787, 34.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381084, 34.841858, 33.969841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767771, 34.742680, 33.995094>,  <31.999783, 34.683170, 34.010246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767771, 34.742680, 33.995094>,  <31.381084, 34.841858, 33.969841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767771, 34.742680, 33.995094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026492, 0.148438, 0.988567,
		-0.254486, -0.957334, 0.136929,
		0.966714, -0.247949, 0.063137,
		32.057785, 34.668297, 34.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519299, 34.771580, 34.739201>,  <31.381084, 34.841858, 33.969841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519299, 34.771580, 34.739201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875015, 34.761856, 34.556522>,  <32.088444, 34.756023, 34.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875015, 34.761856, 34.556522>,  <31.519299, 34.771580, 34.739201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875015, 34.761856, 34.556522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444493, 0.280957, 0.850582,
		0.107637, -0.959412, 0.260656,
		0.889292, -0.024306, -0.456693,
		32.141804, 34.754566, 34.419514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876089, 34.268578, 35.027431>,  <31.519299, 34.771580, 34.739201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876089, 34.268578, 35.027431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113533, 34.558186, 34.886906>,  <32.256001, 34.731949, 34.802589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113533, 34.558186, 34.886906>,  <31.876089, 34.268578, 35.027431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113533, 34.558186, 34.886906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392920, 0.120225, 0.911679,
		0.702312, -0.679220, -0.213115,
		0.593609, 0.724021, -0.351315,
		32.291615, 34.775391, 34.781509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329849, 34.211124, 35.602066>,  <31.876089, 34.268578, 35.027431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329849, 34.211124, 35.602066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428257, 34.548649, 35.411297>,  <32.487301, 34.751163, 35.296837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428257, 34.548649, 35.411297>,  <32.329849, 34.211124, 35.602066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428257, 34.548649, 35.411297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140742, 0.455728, 0.878922,
		0.958993, -0.283351, -0.006644,
		0.246015, 0.843815, -0.476920,
		32.502060, 34.801792, 35.268219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979309, 34.371857, 35.852852>,  <32.329849, 34.211124, 35.602066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979309, 34.371857, 35.852852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820370, 34.712540, 35.716202>,  <32.725006, 34.916950, 35.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820370, 34.712540, 35.716202>,  <32.979309, 34.371857, 35.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820370, 34.712540, 35.716202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245672, 0.457420, 0.854642,
		0.884172, 0.255661, -0.390995,
		-0.397347, 0.851707, -0.341629,
		32.701164, 34.968052, 35.613712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448292, 34.899048, 36.119133>,  <32.979309, 34.371857, 35.852852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448292, 34.899048, 36.119133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105736, 35.095100, 36.054188>,  <32.900204, 35.212734, 36.015221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105736, 35.095100, 36.054188>,  <33.448292, 34.899048, 36.119133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105736, 35.095100, 36.054188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143224, 0.527627, 0.837315,
		0.496067, 0.693814, -0.522054,
		-0.856391, 0.490134, -0.162368,
		32.848820, 35.242142, 36.005478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582775, 35.559101, 36.312634>,  <33.448292, 34.899048, 36.119133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582775, 35.559101, 36.312634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185013, 35.528786, 36.283207>,  <32.946354, 35.510597, 36.265549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185013, 35.528786, 36.283207>,  <33.582775, 35.559101, 36.312634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185013, 35.528786, 36.283207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103737, 0.569822, 0.815194,
		-0.019859, 0.818266, -0.574496,
		-0.994406, -0.075786, -0.073568,
		32.886692, 35.506050, 36.261135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353497, 36.202202, 36.493729>,  <33.582775, 35.559101, 36.312634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353497, 36.202202, 36.493729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021713, 35.984821, 36.545345>,  <32.822643, 35.854393, 36.576313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021713, 35.984821, 36.545345>,  <33.353497, 36.202202, 36.493729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021713, 35.984821, 36.545345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177628, 0.475665, 0.861505,
		-0.529568, 0.691664, -0.491078,
		-0.829461, -0.543455, 0.129038,
		32.772877, 35.821785, 36.584057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859772, 36.669167, 36.697636>,  <33.353497, 36.202202, 36.493729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859772, 36.669167, 36.697636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762753, 36.304008, 36.828960>,  <32.704540, 36.084911, 36.907753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762753, 36.304008, 36.828960>,  <32.859772, 36.669167, 36.697636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762753, 36.304008, 36.828960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242007, 0.384653, 0.890772,
		-0.939469, 0.136605, -0.314226,
		-0.242552, -0.912897, 0.328310,
		32.689987, 36.030140, 36.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300800, 36.893505, 37.025909>,  <32.859772, 36.669167, 36.697636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300800, 36.893505, 37.025909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395332, 36.527840, 37.157635>,  <32.452053, 36.308441, 37.236671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395332, 36.527840, 37.157635>,  <32.300800, 36.893505, 37.025909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395332, 36.527840, 37.157635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513574, 0.170190, 0.840998,
		-0.824857, -0.367882, -0.429270,
		0.236330, -0.914165, 0.329317,
		32.466232, 36.253590, 37.256432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660543, 36.614227, 37.258541>,  <32.300800, 36.893505, 37.025909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660543, 36.614227, 37.258541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958771, 36.429234, 37.450474>,  <32.137707, 36.318237, 37.565632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958771, 36.429234, 37.450474>,  <31.660543, 36.614227, 37.258541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958771, 36.429234, 37.450474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475363, 0.135553, 0.869285,
		-0.467076, -0.876202, -0.118786,
		0.745567, -0.462488, 0.479827,
		32.182442, 36.290485, 37.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328085, 36.225178, 37.748997>,  <31.660543, 36.614227, 37.258541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328085, 36.225178, 37.748997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704477, 36.266094, 37.878048>,  <31.930313, 36.290642, 37.955479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704477, 36.266094, 37.878048>,  <31.328085, 36.225178, 37.748997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704477, 36.266094, 37.878048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331579, 0.087451, 0.939365,
		0.067858, -0.990905, 0.116201,
		0.940984, 0.102273, 0.322630,
		31.986773, 36.296780, 37.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350037, 35.867035, 38.370144>,  <31.328085, 36.225178, 37.748997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350037, 35.867035, 38.370144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672348, 36.096779, 38.427879>,  <31.865736, 36.234623, 38.462521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672348, 36.096779, 38.427879>,  <31.350037, 35.867035, 38.370144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672348, 36.096779, 38.427879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291485, 0.172484, 0.940896,
		0.515515, -0.800227, 0.306400,
		0.805780, 0.574357, 0.144337,
		31.914082, 36.269085, 38.471180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663269, 35.688194, 38.991150>,  <31.350037, 35.867035, 38.370144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663269, 35.688194, 38.991150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814394, 36.054962, 38.939732>,  <31.905069, 36.275021, 38.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814394, 36.054962, 38.939732>,  <31.663269, 35.688194, 38.991150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814394, 36.054962, 38.939732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202644, 0.217363, 0.954824,
		0.903435, -0.334693, 0.267929,
		0.377811, 0.916915, -0.128549,
		31.927738, 36.330036, 38.901165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079742, 35.797462, 39.553047>,  <31.663269, 35.688194, 38.991150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079742, 35.797462, 39.553047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983757, 36.166374, 39.431839>,  <31.926167, 36.387722, 39.359112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983757, 36.166374, 39.431839>,  <32.079742, 35.797462, 39.553047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983757, 36.166374, 39.431839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158378, 0.270769, 0.949526,
		0.957776, 0.275842, 0.081095,
		-0.239961, 0.922277, -0.303024,
		31.911768, 36.443058, 39.340931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400879, 36.283588, 40.042492>,  <32.079742, 35.797462, 39.553047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400879, 36.283588, 40.042492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119843, 36.484818, 39.841179>,  <31.951221, 36.605553, 39.720390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119843, 36.484818, 39.841179>,  <32.400879, 36.283588, 40.042492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119843, 36.484818, 39.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282999, 0.451386, 0.846264,
		0.652904, 0.737002, -0.174769,
		-0.702586, 0.503069, -0.503283,
		31.909067, 36.635738, 39.690193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549709, 37.008747, 40.187576>,  <32.400879, 36.283588, 40.042492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549709, 37.008747, 40.187576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163952, 36.970177, 40.089073>,  <31.932497, 36.947037, 40.029972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163952, 36.970177, 40.089073>,  <32.549709, 37.008747, 40.187576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163952, 36.970177, 40.089073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246468, 0.665311, 0.704709,
		0.095889, 0.740313, -0.665388,
		-0.964396, -0.096424, -0.246260,
		31.874634, 36.941250, 40.015194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275204, 37.594646, 40.379845>,  <32.549709, 37.008747, 40.187576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275204, 37.594646, 40.379845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936878, 37.384716, 40.341564>,  <31.733883, 37.258759, 40.318596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936878, 37.384716, 40.341564>,  <32.275204, 37.594646, 40.379845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936878, 37.384716, 40.341564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452181, 0.610098, 0.650625,
		-0.283079, 0.593581, -0.753345,
		-0.845812, -0.524827, -0.095700,
		31.683134, 37.227268, 40.312855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702814, 38.103603, 40.333004>,  <32.275204, 37.594646, 40.379845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702814, 38.103603, 40.333004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548407, 37.749504, 40.436794>,  <31.455763, 37.537045, 40.499069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548407, 37.749504, 40.436794>,  <31.702814, 38.103603, 40.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548407, 37.749504, 40.436794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510971, 0.439371, 0.738825,
		-0.768048, 0.152615, -0.621941,
		-0.386019, -0.885247, 0.259476,
		31.432602, 37.483929, 40.514637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976820, 38.169540, 40.458054>,  <31.702814, 38.103603, 40.333004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976820, 38.169540, 40.458054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102108, 37.853844, 40.669331>,  <31.177280, 37.664425, 40.796097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102108, 37.853844, 40.669331>,  <30.976820, 38.169540, 40.458054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102108, 37.853844, 40.669331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507689, 0.330877, 0.795469,
		-0.802587, -0.517314, -0.297054,
		0.313218, -0.789244, 0.528192,
		31.196074, 37.617069, 40.827789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378489, 37.992352, 40.910603>,  <30.976820, 38.169540, 40.458054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378489, 37.992352, 40.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695381, 37.811691, 41.074738>,  <30.885517, 37.703293, 41.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695381, 37.811691, 41.074738>,  <30.378489, 37.992352, 40.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695381, 37.811691, 41.074738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415645, 0.092935, 0.904766,
		-0.446776, -0.887340, -0.114102,
		0.792231, -0.451654, 0.410340,
		30.933050, 37.676197, 41.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094286, 37.784412, 41.474125>,  <30.378489, 37.992352, 40.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094286, 37.784412, 41.474125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477968, 37.712910, 41.561729>,  <30.708178, 37.670006, 41.614292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477968, 37.712910, 41.561729>,  <30.094286, 37.784412, 41.474125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477968, 37.712910, 41.561729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242219, -0.120185, 0.962749,
		-0.145783, -0.976524, -0.158583,
		0.959207, -0.178764, 0.219012,
		30.765730, 37.659283, 41.627434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075302, 37.299007, 41.906937>,  <30.094286, 37.784412, 41.474125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075302, 37.299007, 41.906937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443230, 37.437996, 41.979813>,  <30.663986, 37.521389, 42.023537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443230, 37.437996, 41.979813>,  <30.075302, 37.299007, 41.906937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443230, 37.437996, 41.979813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123846, -0.183474, 0.975192,
		0.372281, -0.919564, -0.125729,
		0.919820, 0.347474, 0.182189,
		30.719175, 37.542240, 42.034470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409945, 36.838474, 42.389175>,  <30.075302, 37.299007, 41.906937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409945, 36.838474, 42.389175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618933, 37.174042, 42.450153>,  <30.744326, 37.375381, 42.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618933, 37.174042, 42.450153>,  <30.409945, 36.838474, 42.389175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618933, 37.174042, 42.450153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104682, -0.114325, 0.987913,
		0.846208, -0.532112, 0.028089,
		0.522469, 0.838920, 0.152445,
		30.775673, 37.425716, 42.495888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952316, 36.665012, 42.910660>,  <30.409945, 36.838474, 42.389175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952316, 36.665012, 42.910660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939281, 37.061176, 42.964371>,  <30.931461, 37.298874, 42.996597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939281, 37.061176, 42.964371>,  <30.952316, 36.665012, 42.910660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939281, 37.061176, 42.964371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126376, -0.137353, 0.982427,
		0.991447, 0.015046, 0.129640,
		-0.032588, 0.990408, 0.134277,
		30.929504, 37.358299, 43.004654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434542, 36.860313, 43.427223>,  <30.952316, 36.665012, 42.910660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434542, 36.860313, 43.427223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151543, 37.142998, 43.426231>,  <30.981743, 37.312607, 43.425636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151543, 37.142998, 43.426231>,  <31.434542, 36.860313, 43.427223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151543, 37.142998, 43.426231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076323, -0.072914, 0.994414,
		0.702580, 0.703737, 0.105525,
		-0.707500, 0.706709, -0.002483,
		30.939293, 37.355011, 43.425488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603407, 37.132938, 44.008221>,  <31.434542, 36.860313, 43.427223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603407, 37.132938, 44.008221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247395, 37.291275, 43.917755>,  <31.033787, 37.386276, 43.863476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247395, 37.291275, 43.917755>,  <31.603407, 37.132938, 44.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247395, 37.291275, 43.917755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169146, 0.173958, 0.970118,
		0.423359, 0.901690, -0.087872,
		-0.890032, 0.395845, -0.226164,
		30.980385, 37.410027, 43.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498243, 37.826542, 44.333458>,  <31.603407, 37.132938, 44.008221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498243, 37.826542, 44.333458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130049, 37.687382, 44.262272>,  <30.909132, 37.603886, 44.219559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130049, 37.687382, 44.262272>,  <31.498243, 37.826542, 44.333458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130049, 37.687382, 44.262272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241688, 0.148973, 0.958850,
		-0.307072, 0.925620, -0.221210,
		-0.920486, -0.347900, -0.177966,
		30.853903, 37.583012, 44.208881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997126, 38.376331, 44.519257>,  <31.498243, 37.826542, 44.333458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997126, 38.376331, 44.519257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839764, 38.008720, 44.529148>,  <30.745346, 37.788155, 44.535084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839764, 38.008720, 44.529148>,  <30.997126, 38.376331, 44.519257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839764, 38.008720, 44.529148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197580, 0.110781, 0.974007,
		-0.897882, 0.378296, -0.225165,
		-0.393407, -0.919032, 0.024725,
		30.721741, 37.733009, 44.536564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338434, 38.470577, 44.783062>,  <30.997126, 38.376331, 44.519257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338434, 38.470577, 44.783062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400297, 38.079323, 44.838688>,  <30.437416, 37.844570, 44.872063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400297, 38.079323, 44.838688>,  <30.338434, 38.470577, 44.783062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400297, 38.079323, 44.838688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570709, 0.026446, 0.820726,
		-0.806456, -0.206298, -0.554139,
		0.154660, -0.978132, 0.139064,
		30.446695, 37.785885, 44.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740633, 38.271721, 45.135647>,  <30.338434, 38.470577, 44.783062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740633, 38.271721, 45.135647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994953, 37.967873, 45.190392>,  <30.147545, 37.785564, 45.223240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994953, 37.967873, 45.190392>,  <29.740633, 38.271721, 45.135647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994953, 37.967873, 45.190392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480983, -0.251242, 0.839960,
		-0.603669, -0.599874, -0.525105,
		0.635798, -0.759624, 0.136862,
		30.185692, 37.739986, 45.231449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350464, 37.843040, 45.580795>,  <29.740633, 38.271721, 45.135647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350464, 37.843040, 45.580795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709711, 37.668552, 45.603065>,  <29.925259, 37.563862, 45.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709711, 37.668552, 45.603065>,  <29.350464, 37.843040, 45.580795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709711, 37.668552, 45.603065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292521, -0.498082, 0.816300,
		-0.328352, -0.749420, -0.574939,
		0.898118, -0.436215, 0.055674,
		29.979147, 37.537689, 45.619766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291315, 37.065689, 45.790840>,  <29.350464, 37.843040, 45.580795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291315, 37.065689, 45.790840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636751, 37.222889, 45.917183>,  <29.844013, 37.317207, 45.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636751, 37.222889, 45.917183>,  <29.291315, 37.065689, 45.790840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636751, 37.222889, 45.917183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237932, -0.234655, 0.942510,
		0.444524, -0.889093, -0.109138,
		0.863590, 0.393001, 0.315853,
		29.895828, 37.340790, 46.011940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477156, 36.636181, 46.403316>,  <29.291315, 37.065689, 45.790840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477156, 36.636181, 46.403316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706802, 36.960522, 46.448750>,  <29.844591, 37.155128, 46.476009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706802, 36.960522, 46.448750>,  <29.477156, 36.636181, 46.403316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706802, 36.960522, 46.448750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124028, -0.050996, 0.990967,
		0.809325, -0.583018, 0.071292,
		0.574117, 0.810857, 0.113583,
		29.879038, 37.203777, 46.482826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805641, 36.535744, 46.974968>,  <29.477156, 36.636181, 46.403316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805641, 36.535744, 46.974968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843397, 36.930073, 46.919491>,  <29.866051, 37.166672, 46.886204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843397, 36.930073, 46.919491>,  <29.805641, 36.535744, 46.974968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843397, 36.930073, 46.919491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255504, 0.158639, 0.953704,
		0.962189, -0.054585, 0.266857,
		0.094392, 0.985826, -0.138694,
		29.871716, 37.225822, 46.877884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011026, 36.804893, 47.649239>,  <29.805641, 36.535744, 46.974968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011026, 36.804893, 47.649239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892744, 37.127640, 47.444683>,  <29.821775, 37.321289, 47.321949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892744, 37.127640, 47.444683>,  <30.011026, 36.804893, 47.649239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892744, 37.127640, 47.444683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284748, 0.436547, 0.853431,
		0.911854, 0.397981, 0.100666,
		-0.295705, 0.806869, -0.511392,
		29.804033, 37.369701, 47.291267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373857, 37.408566, 47.951191>,  <30.011026, 36.804893, 47.649239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373857, 37.408566, 47.951191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021070, 37.467407, 47.772083>,  <29.809399, 37.502712, 47.664619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021070, 37.467407, 47.772083>,  <30.373857, 37.408566, 47.951191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021070, 37.467407, 47.772083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400393, 0.267327, 0.876483,
		0.248633, 0.952311, -0.176875,
		-0.881968, 0.147103, -0.447765,
		29.756479, 37.511539, 47.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251083, 38.110794, 48.139442>,  <30.373857, 37.408566, 47.951191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251083, 38.110794, 48.139442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911451, 37.929405, 48.031052>,  <29.707672, 37.820572, 47.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911451, 37.929405, 48.031052>,  <30.251083, 38.110794, 48.139442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911451, 37.929405, 48.031052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431186, 0.298587, 0.851425,
		-0.305186, 0.839769, -0.449054,
		-0.849082, -0.453469, -0.270972,
		29.656727, 37.793365, 47.949760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701239, 38.561398, 48.390522>,  <30.251083, 38.110794, 48.139442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701239, 38.561398, 48.390522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503283, 38.220680, 48.321789>,  <29.384508, 38.016251, 48.280548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503283, 38.220680, 48.321789>,  <29.701239, 38.561398, 48.390522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503283, 38.220680, 48.321789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386490, 0.038662, 0.921483,
		-0.778273, 0.522444, -0.348344,
		-0.494891, -0.851797, -0.171829,
		29.354815, 37.965141, 48.270241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997526, 38.716919, 48.583172>,  <29.701239, 38.561398, 48.390522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997526, 38.716919, 48.583172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054428, 38.321304, 48.599030>,  <29.088570, 38.083935, 48.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054428, 38.321304, 48.599030>,  <28.997526, 38.716919, 48.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054428, 38.321304, 48.599030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426658, -0.025127, 0.904064,
		-0.893156, -0.145521, -0.425555,
		0.142253, -0.989036, 0.039645,
		29.097103, 38.024593, 48.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317646, 38.355530, 48.692371>,  <28.997526, 38.716919, 48.583172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317646, 38.355530, 48.692371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651030, 38.195709, 48.845058>,  <28.851059, 38.099819, 48.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651030, 38.195709, 48.845058>,  <28.317646, 38.355530, 48.692371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651030, 38.195709, 48.845058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343083, 0.167362, 0.924275,
		-0.433177, -0.901306, 0.002411,
		0.833458, -0.399547, 0.381720,
		28.901068, 38.075844, 48.959576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097801, 37.870140, 49.097298>,  <28.317646, 38.355530, 48.692371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097801, 37.870140, 49.097298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449398, 38.027988, 49.204361>,  <28.660357, 38.122696, 49.268600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449398, 38.027988, 49.204361>,  <28.097801, 37.870140, 49.097298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449398, 38.027988, 49.204361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382756, 0.249163, 0.889616,
		0.284375, -0.884414, 0.370058,
		0.878993, 0.394626, 0.267659,
		28.713097, 38.146374, 49.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485565, 37.597900, 49.799171>,  <28.097801, 37.870140, 49.097298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485565, 37.597900, 49.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590679, 37.978687, 49.736309>,  <28.653748, 38.207161, 49.698593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590679, 37.978687, 49.736309>,  <28.485565, 37.597900, 49.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590679, 37.978687, 49.736309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262113, 0.227186, 0.937914,
		0.928569, -0.205278, 0.309225,
		0.262785, 0.951970, -0.157152,
		28.669514, 38.264278, 49.689163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528971, 37.006313, 50.240768>,  <28.485565, 37.597900, 49.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528971, 37.006313, 50.240768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918602, 36.926834, 50.197510>,  <29.152380, 36.879147, 50.171555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918602, 36.926834, 50.197510>,  <28.528971, 37.006313, 50.240768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918602, 36.926834, 50.197510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035161, 0.605228, -0.795275,
		0.223471, 0.770856, 0.596525,
		0.974076, -0.198696, -0.108147,
		29.210825, 36.867226, 50.165066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034498, 36.511456, 49.747971>,  <28.528971, 37.006313, 50.240768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034498, 36.511456, 49.747971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024212, 36.570934, 50.143391>,  <28.018040, 36.606621, 50.380642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024212, 36.570934, 50.143391>,  <28.034498, 36.511456, 49.747971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024212, 36.570934, 50.143391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352481, 0.926713, -0.130229,
		-0.935466, 0.345095, -0.076246,
		-0.025717, 0.148700, 0.988548,
		28.016497, 36.615543, 50.439957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455870, 36.198769, 50.297806>,  <28.034498, 36.511456, 49.747971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455870, 36.198769, 50.297806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786757, 36.410290, 50.373787>,  <28.985289, 36.537205, 50.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786757, 36.410290, 50.373787>,  <28.455870, 36.198769, 50.297806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786757, 36.410290, 50.373787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226754, 0.623482, -0.748233,
		-0.514099, 0.575878, 0.635662,
		0.827215, 0.528805, 0.189949,
		29.034922, 36.568932, 50.430771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848581, 35.941898, 49.667259>,  <28.455870, 36.198769, 50.297806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848581, 35.941898, 49.667259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527508, 35.717602, 49.748512>,  <28.334864, 35.583023, 49.797264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527508, 35.717602, 49.748512>,  <28.848581, 35.941898, 49.667259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527508, 35.717602, 49.748512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156864, -0.527103, -0.835198,
		0.575408, -0.638534, 0.511057,
		-0.802683, -0.560746, 0.203137,
		28.286703, 35.549377, 49.809452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990786, 35.202923, 49.846951>,  <28.848581, 35.941898, 49.667259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990786, 35.202923, 49.846951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622250, 35.255287, 49.700531>,  <28.401129, 35.286705, 49.612679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622250, 35.255287, 49.700531>,  <28.990786, 35.202923, 49.846951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622250, 35.255287, 49.700531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259410, -0.494284, -0.829693,
		-0.289549, -0.859387, 0.421444,
		-0.921340, 0.130910, -0.366053,
		28.345848, 35.294559, 49.590714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747097, 34.638142, 49.405590>,  <28.990786, 35.202923, 49.846951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747097, 34.638142, 49.405590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546331, 34.963184, 49.287102>,  <28.425873, 35.158211, 49.216007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546331, 34.963184, 49.287102>,  <28.747097, 34.638142, 49.405590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546331, 34.963184, 49.287102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158997, -0.249965, -0.955112,
		-0.850178, -0.526482, -0.003742,
		-0.501913, 0.812610, -0.296223,
		28.395758, 35.206966, 49.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104666, 34.489243, 49.034256>,  <28.747097, 34.638142, 49.405590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104666, 34.489243, 49.034256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270130, 34.831795, 48.910652>,  <28.369410, 35.037327, 48.836491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270130, 34.831795, 48.910652>,  <28.104666, 34.489243, 49.034256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270130, 34.831795, 48.910652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202503, -0.417459, -0.885845,
		-0.887625, 0.303863, -0.346107,
		0.413661, 0.856385, -0.309013,
		28.394228, 35.088711, 48.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701841, 34.689384, 48.495541>,  <28.104666, 34.489243, 49.034256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701841, 34.689384, 48.495541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055014, 34.869781, 48.443325>,  <28.266916, 34.978020, 48.411995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055014, 34.869781, 48.443325>,  <27.701841, 34.689384, 48.495541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055014, 34.869781, 48.443325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002945, -0.272712, -0.962091,
		-0.469495, 0.849844, -0.239458,
		0.882930, 0.450992, -0.130540,
		28.319893, 35.005077, 48.404163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640810, 35.052727, 47.839668>,  <27.701841, 34.689384, 48.495541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640810, 35.052727, 47.839668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030325, 35.028774, 47.927441>,  <28.264034, 35.014400, 47.980106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030325, 35.028774, 47.927441>,  <27.640810, 35.052727, 47.839668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030325, 35.028774, 47.927441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197414, -0.256680, -0.946120,
		0.112981, 0.964639, -0.238130,
		0.973788, -0.059884, 0.219434,
		28.322462, 35.010811, 47.993271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892086, 35.382172, 47.268913>,  <27.640810, 35.052727, 47.839668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892086, 35.382172, 47.268913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194784, 35.186314, 47.442154>,  <28.376404, 35.068798, 47.546101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194784, 35.186314, 47.442154>,  <27.892086, 35.382172, 47.268913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194784, 35.186314, 47.442154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371352, -0.223257, -0.901251,
		0.537990, 0.842853, 0.012884,
		0.756746, -0.489649, 0.433105,
		28.421808, 35.039417, 47.572086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595680, 35.675518, 47.096249>,  <27.892086, 35.382172, 47.268913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595680, 35.675518, 47.096249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639763, 35.292393, 47.202412>,  <28.666212, 35.062515, 47.266109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639763, 35.292393, 47.202412>,  <28.595680, 35.675518, 47.096249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639763, 35.292393, 47.202412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621710, -0.141909, -0.770285,
		0.775456, 0.249896, 0.579846,
		0.110205, -0.957817, 0.265407,
		28.672825, 35.005047, 47.282032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286041, 35.428318, 46.841656>,  <28.595680, 35.675518, 47.096249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286041, 35.428318, 46.841656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105171, 35.077225, 46.905060>,  <28.996649, 34.866570, 46.943104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105171, 35.077225, 46.905060>,  <29.286041, 35.428318, 46.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105171, 35.077225, 46.905060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479435, -0.389049, -0.786628,
		0.752117, -0.279697, 0.596733,
		-0.452176, -0.877730, 0.158514,
		28.969519, 34.813904, 46.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748672, 34.926762, 46.575310>,  <29.286041, 35.428318, 46.841656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748672, 34.926762, 46.575310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435198, 34.687153, 46.641041>,  <29.247112, 34.543388, 46.680481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435198, 34.687153, 46.641041>,  <29.748672, 34.926762, 46.575310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435198, 34.687153, 46.641041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336872, -0.632142, -0.697792,
		0.521875, -0.491492, 0.697196,
		-0.783686, -0.599027, 0.164329,
		29.200092, 34.507446, 46.690338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962786, 34.265358, 46.753876>,  <29.748672, 34.926762, 46.575310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962786, 34.265358, 46.753876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603390, 34.230606, 46.581753>,  <29.387753, 34.209755, 46.478477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603390, 34.230606, 46.581753>,  <29.962786, 34.265358, 46.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603390, 34.230606, 46.581753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396515, -0.581264, -0.710568,
		-0.188392, -0.809064, 0.556709,
		-0.898490, -0.086878, -0.430311,
		29.333843, 34.204544, 46.452660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899887, 33.536510, 46.584068>,  <29.962786, 34.265358, 46.753876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899887, 33.536510, 46.584068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616789, 33.719906, 46.369076>,  <29.446930, 33.829945, 46.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616789, 33.719906, 46.369076>,  <29.899887, 33.536510, 46.584068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616789, 33.719906, 46.369076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321086, -0.468924, -0.822808,
		-0.629288, -0.754915, 0.184663,
		-0.707743, 0.458490, -0.537481,
		29.404465, 33.857452, 46.207832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588266, 32.937809, 46.165184>,  <29.899887, 33.536510, 46.584068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588266, 32.937809, 46.165184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535524, 33.289215, 45.981522>,  <29.503880, 33.500057, 45.871323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535524, 33.289215, 45.981522>,  <29.588266, 32.937809, 46.165184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535524, 33.289215, 45.981522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332027, -0.397305, -0.855516,
		-0.934009, -0.265257, -0.239304,
		-0.131854, 0.878515, -0.459159,
		29.495968, 33.552769, 45.843773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229645, 32.824497, 45.517029>,  <29.588266, 32.937809, 46.165184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229645, 32.824497, 45.517029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369368, 33.187546, 45.423893>,  <29.453201, 33.405373, 45.368011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369368, 33.187546, 45.423893>,  <29.229645, 32.824497, 45.517029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369368, 33.187546, 45.423893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175565, -0.307487, -0.935216,
		-0.920413, 0.285800, -0.266753,
		0.349308, 0.907618, -0.232838,
		29.474159, 33.459831, 45.354042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076225, 33.018906, 44.835766>,  <29.229645, 32.824497, 45.517029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076225, 33.018906, 44.835766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350580, 33.307087, 44.876755>,  <29.515194, 33.479996, 44.901348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350580, 33.307087, 44.876755>,  <29.076225, 33.018906, 44.835766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350580, 33.307087, 44.876755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210920, -0.062044, -0.975532,
		-0.696471, 0.690719, -0.194514,
		0.685887, 0.720456, 0.102475,
		29.556347, 33.523224, 44.907497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994093, 33.424770, 44.270432>,  <29.076225, 33.018906, 44.835766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994093, 33.424770, 44.270432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361385, 33.489407, 44.415062>,  <29.581760, 33.528187, 44.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361385, 33.489407, 44.415062>,  <28.994093, 33.424770, 44.270432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361385, 33.489407, 44.415062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380757, -0.108973, -0.918231,
		-0.108973, 0.980823, -0.161588,
		0.918231, 0.161588, 0.361581,
		29.636854, 33.537884, 44.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357662, 33.869267, 43.763279>,  <28.994093, 33.424770, 44.270432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357662, 33.869267, 43.763279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646688, 33.686272, 43.970585>,  <29.820105, 33.576473, 44.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646688, 33.686272, 43.970585>,  <29.357662, 33.869267, 43.763279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646688, 33.686272, 43.970585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569848, -0.030263, -0.821193,
		0.391368, 0.888702, 0.238830,
		0.722568, -0.457486, 0.518269,
		29.863459, 33.549026, 44.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004004, 34.250111, 43.587818>,  <29.357662, 33.869267, 43.763279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004004, 34.250111, 43.587818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109098, 33.879047, 43.693958>,  <30.172155, 33.656410, 43.757645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109098, 33.879047, 43.693958>,  <30.004004, 34.250111, 43.587818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109098, 33.879047, 43.693958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572938, -0.071283, -0.816493,
		0.776344, 0.366554, 0.512765,
		0.262738, -0.927662, 0.265353,
		30.187920, 33.600750, 43.773563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631136, 34.203255, 43.440525>,  <30.004004, 34.250111, 43.587818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631136, 34.203255, 43.440525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532614, 33.815758, 43.452274>,  <30.473499, 33.583260, 43.459324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532614, 33.815758, 43.452274>,  <30.631136, 34.203255, 43.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532614, 33.815758, 43.452274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414022, -0.132575, -0.900561,
		0.876310, -0.209653, 0.433736,
		-0.246308, -0.968747, 0.029376,
		30.458721, 33.525135, 43.461086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261686, 33.793777, 43.163097>,  <30.631136, 34.203255, 43.440525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261686, 33.793777, 43.163097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931002, 33.570538, 43.134602>,  <30.732590, 33.436596, 43.117504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931002, 33.570538, 43.134602>,  <31.261686, 33.793777, 43.163097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931002, 33.570538, 43.134602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263513, -0.272216, -0.925451,
		0.497099, -0.783854, 0.372110,
		-0.826712, -0.558097, -0.071237,
		30.682987, 33.403107, 43.113232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542364, 33.200592, 42.783852>,  <31.261686, 33.793777, 43.163097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542364, 33.200592, 42.783852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151482, 33.127472, 42.740669>,  <30.916952, 33.083599, 42.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151482, 33.127472, 42.740669>,  <31.542364, 33.200592, 42.783852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151482, 33.127472, 42.740669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160530, -0.303448, -0.939228,
		0.138934, -0.935148, 0.325876,
		-0.977204, -0.182804, -0.107960,
		30.858320, 33.072632, 42.708282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435873, 32.465641, 42.628197>,  <31.542364, 33.200592, 42.783852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435873, 32.465641, 42.628197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114958, 32.660679, 42.490452>,  <30.922409, 32.777702, 42.407806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114958, 32.660679, 42.490452>,  <31.435873, 32.465641, 42.628197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114958, 32.660679, 42.490452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155304, -0.386518, -0.909112,
		-0.576384, -0.782848, 0.234372,
		-0.802286, 0.487599, -0.344362,
		30.874271, 32.806957, 42.387142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011177, 31.967554, 42.296135>,  <31.435873, 32.465641, 42.628197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011177, 31.967554, 42.296135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896826, 32.321655, 42.149384>,  <30.828215, 32.534115, 42.061333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896826, 32.321655, 42.149384>,  <31.011177, 31.967554, 42.296135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896826, 32.321655, 42.149384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060773, -0.365338, -0.928889,
		-0.956337, -0.287845, 0.050642,
		-0.285877, 0.885253, -0.366880,
		30.811062, 32.587231, 42.039318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495272, 31.780537, 41.775429>,  <31.011177, 31.967554, 42.296135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495272, 31.780537, 41.775429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582968, 32.163807, 41.701859>,  <30.635586, 32.393768, 41.657715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582968, 32.163807, 41.701859>,  <30.495272, 31.780537, 41.775429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582968, 32.163807, 41.701859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042893, -0.178866, -0.982938,
		-0.974727, 0.223390, 0.001884,
		0.219242, 0.958177, -0.183927,
		30.648741, 32.451260, 41.646679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073429, 31.942646, 41.228062>,  <30.495272, 31.780537, 41.775429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073429, 31.942646, 41.228062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375820, 32.204430, 41.222679>,  <30.557255, 32.361500, 41.219448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375820, 32.204430, 41.222679>,  <30.073429, 31.942646, 41.228062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375820, 32.204430, 41.222679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134241, -0.175118, -0.975353,
		-0.640685, 0.735538, -0.220241,
		0.755978, 0.654459, -0.013456,
		30.602613, 32.400768, 41.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880850, 32.444263, 40.588818>,  <30.073429, 31.942646, 41.228062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880850, 32.444263, 40.588818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268446, 32.514496, 40.658367>,  <30.501003, 32.556637, 40.700096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268446, 32.514496, 40.658367>,  <29.880850, 32.444263, 40.588818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268446, 32.514496, 40.658367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171626, 0.028045, -0.984763,
		-0.177781, 0.984066, -0.002959,
		0.968989, 0.175580, 0.173877,
		30.559143, 32.567169, 40.710529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988750, 33.057777, 40.256001>,  <29.880850, 32.444263, 40.588818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988750, 33.057777, 40.256001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342306, 32.882511, 40.321426>,  <30.554440, 32.777351, 40.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342306, 32.882511, 40.321426>,  <29.988750, 33.057777, 40.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342306, 32.882511, 40.321426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211445, 0.062437, -0.975394,
		0.417172, 0.896723, 0.147835,
		0.883888, -0.438166, 0.163561,
		30.607473, 32.751060, 40.370495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379927, 33.341301, 39.759129>,  <29.988750, 33.057777, 40.256001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379927, 33.341301, 39.759129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571486, 33.005165, 39.860703>,  <30.686420, 32.803482, 39.921646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571486, 33.005165, 39.860703>,  <30.379927, 33.341301, 39.759129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571486, 33.005165, 39.860703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389077, -0.056122, -0.919494,
		0.786942, 0.539142, 0.300081,
		0.478896, -0.840343, 0.253933,
		30.715155, 32.753063, 39.936882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047934, 33.522552, 39.654163>,  <30.379927, 33.341301, 39.759129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047934, 33.522552, 39.654163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026579, 33.123192, 39.646683>,  <31.013765, 32.883575, 39.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026579, 33.123192, 39.646683>,  <31.047934, 33.522552, 39.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026579, 33.123192, 39.646683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518894, -0.011738, -0.854758,
		0.853170, -0.055335, 0.518690,
		-0.053386, -0.998399, -0.018698,
		31.010563, 32.823673, 39.641071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687347, 33.306114, 39.316334>,  <31.047934, 33.522552, 39.654163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687347, 33.306114, 39.316334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485970, 32.960663, 39.305794>,  <31.365143, 32.753391, 39.299469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485970, 32.960663, 39.305794>,  <31.687347, 33.306114, 39.316334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485970, 32.960663, 39.305794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287998, -0.138980, -0.947492,
		0.814616, -0.484599, 0.318692,
		-0.503446, -0.863625, -0.026348,
		31.334936, 32.701576, 39.297890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086273, 32.826462, 39.111027>,  <31.687347, 33.306114, 39.316334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086273, 32.826462, 39.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730471, 32.672386, 39.012722>,  <31.516989, 32.579941, 38.953739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730471, 32.672386, 39.012722>,  <32.086273, 32.826462, 39.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730471, 32.672386, 39.012722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339301, -0.196610, -0.919902,
		0.306019, -0.901649, 0.305582,
		-0.889509, -0.385192, -0.245765,
		31.463617, 32.556828, 38.938992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308018, 32.231167, 38.716591>,  <32.086273, 32.826462, 39.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308018, 32.231167, 38.716591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930983, 32.304546, 38.604969>,  <31.704762, 32.348572, 38.537994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930983, 32.304546, 38.604969>,  <32.308018, 32.231167, 38.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930983, 32.304546, 38.604969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225533, -0.266588, -0.937052,
		-0.246284, -0.946193, 0.209912,
		-0.942592, 0.183439, -0.279054,
		31.648205, 32.359581, 38.521252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110294, 31.710840, 38.245594>,  <32.308018, 32.231167, 38.716591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110294, 31.710840, 38.245594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850754, 31.999575, 38.149307>,  <31.695030, 32.172813, 38.091534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850754, 31.999575, 38.149307>,  <32.110294, 31.710840, 38.245594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850754, 31.999575, 38.149307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085571, -0.245130, -0.965706,
		-0.756090, -0.647197, 0.097284,
		-0.648849, 0.721836, -0.240722,
		31.656099, 32.216125, 38.077091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605667, 31.383190, 37.837444>,  <32.110294, 31.710840, 38.245594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605667, 31.383190, 37.837444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579967, 31.770916, 37.742531>,  <31.564548, 32.003551, 37.685581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579967, 31.770916, 37.742531>,  <31.605667, 31.383190, 37.837444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579967, 31.770916, 37.742531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114459, -0.229052, -0.966661,
		-0.991348, -0.089267, -0.096230,
		-0.064249, 0.969312, -0.237288,
		31.560692, 32.061710, 37.671345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106655, 31.444221, 37.236870>,  <31.605667, 31.383190, 37.837444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106655, 31.444221, 37.236870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319717, 31.782600, 37.226654>,  <31.447556, 31.985628, 37.220524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319717, 31.782600, 37.226654>,  <31.106655, 31.444221, 37.236870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319717, 31.782600, 37.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142034, -0.119101, -0.982670,
		-0.834327, 0.519799, -0.183593,
		0.532658, 0.845945, -0.025540,
		31.479515, 32.036385, 37.218990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859373, 31.830172, 36.633076>,  <31.106655, 31.444221, 37.236870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859373, 31.830172, 36.633076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213144, 31.978579, 36.746304>,  <31.425407, 32.067623, 36.814240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213144, 31.978579, 36.746304>,  <30.859373, 31.830172, 36.633076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213144, 31.978579, 36.746304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339978, -0.096725, -0.935446,
		-0.319686, 0.923575, -0.211684,
		0.884429, 0.371017, 0.283074,
		31.478474, 32.089882, 36.831226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998865, 32.419846, 36.166950>,  <30.859373, 31.830172, 36.633076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998865, 32.419846, 36.166950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350111, 32.295162, 36.312141>,  <31.560858, 32.220352, 36.399258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350111, 32.295162, 36.312141>,  <30.998865, 32.419846, 36.166950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350111, 32.295162, 36.312141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353856, -0.087512, -0.931197,
		0.322029, 0.946138, 0.033455,
		0.878113, -0.311711, 0.362979,
		31.613544, 32.201649, 36.421036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496218, 32.567680, 35.597408>,  <30.998865, 32.419846, 36.166950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496218, 32.567680, 35.597408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706264, 32.324799, 35.835922>,  <31.832293, 32.179070, 35.979031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706264, 32.324799, 35.835922>,  <31.496218, 32.567680, 35.597408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706264, 32.324799, 35.835922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525541, -0.319730, -0.788403,
		0.669373, 0.727375, 0.151216,
		0.525116, -0.607206, 0.596284,
		31.863800, 32.142635, 36.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165333, 32.787968, 35.397736>,  <31.496218, 32.567680, 35.597408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165333, 32.787968, 35.397736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140369, 32.421471, 35.556026>,  <32.125393, 32.201572, 35.651001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140369, 32.421471, 35.556026>,  <32.165333, 32.787968, 35.397736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140369, 32.421471, 35.556026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605041, -0.350069, -0.715106,
		0.793744, 0.194804, 0.576213,
		-0.062409, -0.916244, 0.395730,
		32.121647, 32.146599, 35.674744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946030, 32.552067, 35.440815>,  <32.165333, 32.787968, 35.397736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946030, 32.552067, 35.440815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717808, 32.223812, 35.453594>,  <32.580875, 32.026859, 35.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717808, 32.223812, 35.453594>,  <32.946030, 32.552067, 35.440815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717808, 32.223812, 35.453594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568128, -0.422487, -0.706212,
		0.593044, -0.384779, 0.707279,
		-0.570552, -0.820640, 0.031950,
		32.546642, 31.977621, 35.463181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428505, 31.953068, 35.699734>,  <32.946030, 32.552067, 35.440815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428505, 31.953068, 35.699734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113060, 31.776184, 35.528831>,  <32.923794, 31.670053, 35.426289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113060, 31.776184, 35.528831>,  <33.428505, 31.953068, 35.699734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113060, 31.776184, 35.528831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606498, -0.444941, -0.658929,
		0.101283, -0.778766, 0.619084,
		-0.788608, -0.442212, -0.427255,
		32.876476, 31.643520, 35.400654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640148, 31.285946, 35.574501>,  <33.428505, 31.953068, 35.699734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640148, 31.285946, 35.574501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318127, 31.315092, 35.339016>,  <33.124912, 31.332581, 35.197727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318127, 31.315092, 35.339016>,  <33.640148, 31.285946, 35.574501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318127, 31.315092, 35.339016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512578, -0.414084, -0.752196,
		-0.298583, -0.907317, 0.296012,
		-0.805054, 0.072864, -0.588709,
		33.076611, 31.336952, 35.162403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568661, 30.613838, 35.272404>,  <33.640148, 31.285946, 35.574501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568661, 30.613838, 35.272404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389847, 30.891737, 35.047020>,  <33.282558, 31.058477, 34.911789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389847, 30.891737, 35.047020>,  <33.568661, 30.613838, 35.272404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389847, 30.891737, 35.047020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587715, -0.246749, -0.770523,
		-0.674353, -0.675602, -0.298009,
		-0.447033, 0.694749, -0.563458,
		33.255737, 31.100163, 34.877983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851227, 30.090570, 35.673573>,  <33.568661, 30.613838, 35.272404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851227, 30.090570, 35.673573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214478, 29.923225, 35.666992>,  <34.432430, 29.822819, 35.663044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214478, 29.923225, 35.666992>,  <33.851227, 30.090570, 35.673573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214478, 29.923225, 35.666992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090665, 0.158138, 0.983246,
		-0.408754, -0.894406, 0.181541,
		0.908130, -0.418365, -0.016452,
		34.486916, 29.797716, 35.662056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828388, 29.659737, 36.229111>,  <33.851227, 30.090570, 35.673573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828388, 29.659737, 36.229111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221363, 29.703009, 36.168301>,  <34.457150, 29.728971, 36.131813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221363, 29.703009, 36.168301>,  <33.828388, 29.659737, 36.229111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221363, 29.703009, 36.168301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147208, 0.051240, 0.987777,
		0.114651, -0.992809, 0.034414,
		0.982438, 0.108184, -0.152024,
		34.516094, 29.735462, 36.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108276, 29.133770, 36.654072>,  <33.828388, 29.659737, 36.229111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108276, 29.133770, 36.654072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405754, 29.392992, 36.588409>,  <34.584240, 29.548525, 36.549011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405754, 29.392992, 36.588409>,  <34.108276, 29.133770, 36.654072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405754, 29.392992, 36.588409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147816, 0.080076, 0.985768,
		0.651977, -0.757372, -0.036241,
		0.743692, 0.648055, -0.164159,
		34.628860, 29.587408, 36.539162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751476, 28.870396, 36.841927>,  <34.108276, 29.133770, 36.654072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751476, 28.870396, 36.841927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758442, 29.269789, 36.862831>,  <34.762623, 29.509424, 36.875374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758442, 29.269789, 36.862831>,  <34.751476, 28.870396, 36.841927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758442, 29.269789, 36.862831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138220, -0.054168, 0.988919,
		0.990249, -0.009997, -0.138953,
		0.017413, 0.998482, 0.052258,
		34.763664, 29.569334, 36.878510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269577, 28.971966, 37.286167>,  <34.751476, 28.870396, 36.841927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269577, 28.971966, 37.286167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086246, 29.327467, 37.283115>,  <34.976250, 29.540768, 37.281284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086246, 29.327467, 37.283115>,  <35.269577, 28.971966, 37.286167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086246, 29.327467, 37.283115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068247, -0.026632, 0.997313,
		0.886160, 0.457615, 0.072861,
		-0.458325, 0.888752, -0.007630,
		34.948750, 29.594093, 37.280827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659184, 29.431067, 37.761406>,  <35.269577, 28.971966, 37.286167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659184, 29.431067, 37.761406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290722, 29.584677, 37.736115>,  <35.069645, 29.676844, 37.720940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290722, 29.584677, 37.736115>,  <35.659184, 29.431067, 37.761406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290722, 29.584677, 37.736115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030267, 0.091277, 0.995366,
		0.388018, 0.918799, -0.072457,
		-0.921155, 0.384027, -0.063227,
		35.014374, 29.699884, 37.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679443, 30.023451, 38.269695>,  <35.659184, 29.431067, 37.761406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679443, 30.023451, 38.269695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299641, 29.936325, 38.179371>,  <35.071758, 29.884050, 38.125175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299641, 29.936325, 38.179371>,  <35.679443, 30.023451, 38.269695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299641, 29.936325, 38.179371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269479, 0.197589, 0.942518,
		-0.160674, 0.955780, -0.246309,
		-0.949508, -0.217813, -0.225815,
		35.014790, 29.870981, 38.111626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209927, 30.609179, 38.442406>,  <35.679443, 30.023451, 38.269695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209927, 30.609179, 38.442406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996281, 30.271269, 38.455559>,  <34.868095, 30.068523, 38.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996281, 30.271269, 38.455559>,  <35.209927, 30.609179, 38.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996281, 30.271269, 38.455559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347141, 0.254612, 0.902588,
		-0.770855, 0.470670, -0.429247,
		-0.534113, -0.844774, 0.032880,
		34.836048, 30.017838, 38.465424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624546, 30.816498, 38.698952>,  <35.209927, 30.609179, 38.442406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624546, 30.816498, 38.698952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624077, 30.421280, 38.760620>,  <34.623795, 30.184149, 38.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624077, 30.421280, 38.760620>,  <34.624546, 30.816498, 38.698952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624077, 30.421280, 38.760620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414619, 0.140772, 0.899041,
		-0.909994, -0.062867, -0.409827,
		-0.001173, -0.988044, 0.154168,
		34.623726, 30.124866, 38.806870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972294, 30.590750, 38.844448>,  <34.624546, 30.816498, 38.698952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972294, 30.590750, 38.844448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198555, 30.307907, 39.014168>,  <34.334312, 30.138201, 39.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198555, 30.307907, 39.014168>,  <33.972294, 30.590750, 38.844448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198555, 30.307907, 39.014168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466244, 0.150158, 0.871819,
		-0.680183, -0.690977, -0.244747,
		0.565657, -0.707109, 0.424299,
		34.368252, 30.095774, 39.141457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533573, 30.294724, 39.242455>,  <33.972294, 30.590750, 38.844448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533573, 30.294724, 39.242455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868183, 30.147095, 39.404446>,  <34.068951, 30.058517, 39.501640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868183, 30.147095, 39.404446>,  <33.533573, 30.294724, 39.242455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868183, 30.147095, 39.404446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374272, 0.154921, 0.914286,
		-0.400178, -0.916398, -0.008539,
		0.836527, -0.369073, 0.404978,
		34.119141, 30.036373, 39.525940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309048, 29.931303, 39.702587>,  <33.533573, 30.294724, 39.242455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309048, 29.931303, 39.702587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694969, 29.959583, 39.803898>,  <33.926521, 29.976551, 39.864685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694969, 29.959583, 39.803898>,  <33.309048, 29.931303, 39.702587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694969, 29.959583, 39.803898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252842, -0.015189, 0.967388,
		0.072246, -0.997382, 0.003223,
		0.964806, 0.070705, 0.253277,
		33.984409, 29.980793, 39.879883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434349, 29.308372, 40.185299>,  <33.309048, 29.931303, 39.702587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434349, 29.308372, 40.185299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703274, 29.595102, 40.259235>,  <33.864628, 29.767139, 40.303596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703274, 29.595102, 40.259235>,  <33.434349, 29.308372, 40.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703274, 29.595102, 40.259235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379630, 0.119496, 0.917389,
		0.635518, -0.686939, 0.352466,
		0.672308, 0.716824, 0.184841,
		33.904964, 29.810150, 40.314686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689312, 29.065510, 40.811302>,  <33.434349, 29.308372, 40.185299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689312, 29.065510, 40.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775608, 29.454571, 40.776882>,  <33.827385, 29.688007, 40.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775608, 29.454571, 40.776882>,  <33.689312, 29.065510, 40.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775608, 29.454571, 40.776882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308095, 0.151430, 0.939227,
		0.926571, -0.176117, 0.332338,
		0.215739, 0.972652, -0.086050,
		33.840328, 29.746367, 40.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857712, 29.206707, 41.480759>,  <33.689312, 29.065510, 40.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857712, 29.206707, 41.480759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830135, 29.576872, 41.331703>,  <33.813591, 29.798971, 41.242268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830135, 29.576872, 41.331703>,  <33.857712, 29.206707, 41.480759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830135, 29.576872, 41.331703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224415, 0.349572, 0.909636,
		0.972052, 0.146334, 0.183577,
		-0.068937, 0.925411, -0.372642,
		33.809456, 29.854496, 41.219910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244926, 29.682964, 41.865585>,  <33.857712, 29.206707, 41.480759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244926, 29.682964, 41.865585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950413, 29.898289, 41.701584>,  <33.773705, 30.027483, 41.603184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950413, 29.898289, 41.701584>,  <34.244926, 29.682964, 41.865585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950413, 29.898289, 41.701584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249108, 0.347731, 0.903896,
		0.629149, 0.767662, -0.121931,
		-0.736286, 0.538311, -0.410005,
		33.729527, 30.059782, 41.578583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234047, 30.431505, 42.128788>,  <34.244926, 29.682964, 41.865585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234047, 30.431505, 42.128788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858452, 30.394537, 41.996265>,  <33.633095, 30.372356, 41.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858452, 30.394537, 41.996265>,  <34.234047, 30.431505, 42.128788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858452, 30.394537, 41.996265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335152, 0.462373, 0.820905,
		0.077318, 0.881856, -0.465137,
		-0.938986, -0.092420, -0.331306,
		33.576756, 30.366812, 41.896873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797413, 31.155603, 42.325081>,  <34.234047, 30.431505, 42.128788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797413, 31.155603, 42.325081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519299, 30.881779, 42.237484>,  <33.352432, 30.717484, 42.184925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519299, 30.881779, 42.237484>,  <33.797413, 31.155603, 42.325081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519299, 30.881779, 42.237484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633018, 0.438946, 0.637664,
		-0.340397, 0.581980, -0.738532,
		-0.695283, -0.684562, -0.218988,
		33.310715, 30.676411, 42.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259369, 31.552294, 42.196854>,  <33.797413, 31.155603, 42.325081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259369, 31.552294, 42.196854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123878, 31.200039, 42.329365>,  <33.042583, 30.988686, 42.408871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123878, 31.200039, 42.329365>,  <33.259369, 31.552294, 42.196854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123878, 31.200039, 42.329365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667406, 0.473059, 0.575138,
		-0.663201, -0.026282, -0.747979,
		-0.338722, -0.880639, 0.331274,
		33.022263, 30.935846, 42.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532913, 31.683252, 42.401112>,  <33.259369, 31.552294, 42.196854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532913, 31.683252, 42.401112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605049, 31.334326, 42.582897>,  <32.648331, 31.124969, 42.691971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605049, 31.334326, 42.582897>,  <32.532913, 31.683252, 42.401112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605049, 31.334326, 42.582897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576842, 0.280448, 0.767204,
		-0.796699, -0.400514, -0.452613,
		0.180342, -0.872317, 0.454466,
		32.659153, 31.072630, 42.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886679, 31.594265, 42.763332>,  <32.532913, 31.683252, 42.401112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886679, 31.594265, 42.763332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127415, 31.330528, 42.943581>,  <32.271858, 31.172287, 43.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127415, 31.330528, 42.943581>,  <31.886679, 31.594265, 42.763332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127415, 31.330528, 42.943581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443303, 0.193521, 0.875233,
		-0.664281, -0.726511, -0.175820,
		0.601841, -0.659342, 0.450617,
		32.307968, 31.132727, 43.078766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479313, 31.230860, 43.204063>,  <31.886679, 31.594265, 42.763332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479313, 31.230860, 43.204063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854548, 31.196415, 43.338276>,  <32.079689, 31.175747, 43.418804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854548, 31.196415, 43.338276>,  <31.479313, 31.230860, 43.204063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854548, 31.196415, 43.338276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300147, 0.281491, 0.911413,
		-0.172934, -0.955692, 0.238216,
		0.938086, -0.086115, 0.335528,
		32.135975, 31.170580, 43.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401596, 31.033573, 43.979652>,  <31.479313, 31.230860, 43.204063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401596, 31.033573, 43.979652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748455, 31.213625, 43.894386>,  <31.956570, 31.321657, 43.843227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748455, 31.213625, 43.894386>,  <31.401596, 31.033573, 43.979652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748455, 31.213625, 43.894386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141365, 0.632841, 0.761268,
		0.477569, -0.629997, 0.612398,
		0.867147, 0.450130, -0.213166,
		32.008598, 31.348663, 43.830437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890909, 30.985947, 44.695095>,  <31.401596, 31.033573, 43.979652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890909, 30.985947, 44.695095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039944, 31.279465, 44.467857>,  <32.129364, 31.455576, 44.331516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039944, 31.279465, 44.467857>,  <31.890909, 30.985947, 44.695095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039944, 31.279465, 44.467857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101747, 0.640779, 0.760953,
		0.922402, -0.225721, 0.313408,
		0.372588, 0.733793, -0.568090,
		32.151722, 31.499603, 44.297432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436886, 31.370228, 45.122620>,  <31.890909, 30.985947, 44.695095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436886, 31.370228, 45.122620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326214, 31.607973, 44.820580>,  <32.259811, 31.750620, 44.639355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326214, 31.607973, 44.820580>,  <32.436886, 31.370228, 45.122620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326214, 31.607973, 44.820580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002770, 0.785282, 0.619133,
		0.960958, 0.173394, -0.215626,
		-0.276681, 0.594363, -0.755103,
		32.243210, 31.786282, 44.594048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985138, 31.816706, 44.991146>,  <32.436886, 31.370228, 45.122620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985138, 31.816706, 44.991146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665962, 32.012672, 44.850700>,  <32.474457, 32.130253, 44.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665962, 32.012672, 44.850700>,  <32.985138, 31.816706, 44.991146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665962, 32.012672, 44.850700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004706, 0.577441, 0.816419,
		0.602723, 0.653103, -0.458456,
		-0.797936, 0.489917, -0.351111,
		32.426582, 32.159649, 44.745369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196697, 32.605598, 45.072281>,  <32.985138, 31.816706, 44.991146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196697, 32.605598, 45.072281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802620, 32.537128, 45.068573>,  <32.566174, 32.496048, 45.066349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802620, 32.537128, 45.068573>,  <33.196697, 32.605598, 45.072281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802620, 32.537128, 45.068573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117741, 0.636392, 0.762327,
		-0.124589, 0.752134, -0.647126,
		-0.985198, -0.171171, -0.009269,
		32.507061, 32.485779, 45.065792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896339, 33.318924, 45.077042>,  <33.196697, 32.605598, 45.072281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896339, 33.318924, 45.077042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592491, 33.075291, 45.168251>,  <32.410183, 32.929111, 45.222977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592491, 33.075291, 45.168251>,  <32.896339, 33.318924, 45.077042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592491, 33.075291, 45.168251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329111, 0.662396, 0.672992,
		-0.560949, 0.436174, -0.703626,
		-0.759620, -0.609085, 0.228020,
		32.364605, 32.892567, 45.236656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204815, 33.680714, 44.950783>,  <32.896339, 33.318924, 45.077042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204815, 33.680714, 44.950783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183159, 33.413944, 45.248047>,  <32.170166, 33.253883, 45.426403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183159, 33.413944, 45.248047>,  <32.204815, 33.680714, 44.950783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183159, 33.413944, 45.248047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303706, 0.719987, 0.624005,
		-0.951226, -0.191919, -0.241527,
		-0.054137, -0.666923, 0.743157,
		32.166916, 33.213867, 45.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542997, 33.871506, 45.382256>,  <32.204815, 33.680714, 44.950783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542997, 33.871506, 45.382256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759308, 33.617336, 45.602726>,  <31.889093, 33.464836, 45.735008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759308, 33.617336, 45.602726>,  <31.542997, 33.871506, 45.382256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759308, 33.617336, 45.602726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098091, 0.603148, 0.791575,
		-0.835427, -0.482131, 0.263839,
		0.540777, -0.635423, 0.551179,
		31.921541, 33.426708, 45.768082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316851, 34.005508, 46.080906>,  <31.542997, 33.871506, 45.382256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316851, 34.005508, 46.080906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642525, 33.788406, 46.163395>,  <31.837929, 33.658146, 46.212887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642525, 33.788406, 46.163395>,  <31.316851, 34.005508, 46.080906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642525, 33.788406, 46.163395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053588, 0.283417, 0.957498,
		-0.578130, -0.790630, 0.201668,
		0.814183, -0.542752, 0.206220,
		31.886780, 33.625580, 46.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139711, 33.773758, 46.732712>,  <31.316851, 34.005508, 46.080906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139711, 33.773758, 46.732712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535906, 33.729141, 46.700478>,  <31.773623, 33.702374, 46.681137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535906, 33.729141, 46.700478>,  <31.139711, 33.773758, 46.732712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535906, 33.729141, 46.700478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102457, 0.206828, 0.972998,
		-0.091860, -0.971998, 0.216289,
		0.990487, -0.111540, -0.080589,
		31.833052, 33.695679, 46.676300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403662, 33.133457, 47.209980>,  <31.139711, 33.773758, 46.732712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403662, 33.133457, 47.209980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720289, 33.365845, 47.134201>,  <31.910265, 33.505280, 47.088734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720289, 33.365845, 47.134201>,  <31.403662, 33.133457, 47.209980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720289, 33.365845, 47.134201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268452, -0.052098, 0.961883,
		0.548958, -0.812254, -0.197203,
		0.791567, 0.580973, -0.189452,
		31.957760, 33.540138, 47.077366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915905, 32.918461, 47.624134>,  <31.403662, 33.133457, 47.209980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915905, 32.918461, 47.624134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997816, 33.298649, 47.530602>,  <32.046963, 33.526760, 47.474480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997816, 33.298649, 47.530602>,  <31.915905, 32.918461, 47.624134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997816, 33.298649, 47.530602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238096, 0.183352, 0.953778,
		0.949408, -0.250989, -0.188755,
		0.204779, 0.950467, -0.233835,
		32.059250, 33.583790, 47.460449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476025, 33.123486, 48.156929>,  <31.915905, 32.918461, 47.624134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476025, 33.123486, 48.156929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369774, 33.473225, 47.994465>,  <32.306023, 33.683067, 47.896984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369774, 33.473225, 47.994465>,  <32.476025, 33.123486, 48.156929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369774, 33.473225, 47.994465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317035, 0.477086, 0.819682,
		0.910458, 0.088959, -0.403922,
		-0.265623, 0.874343, -0.406163,
		32.290089, 33.735527, 47.872616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071266, 33.605888, 48.316425>,  <32.476025, 33.123486, 48.156929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071266, 33.605888, 48.316425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747452, 33.831577, 48.251545>,  <32.553165, 33.966991, 48.212616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747452, 33.831577, 48.251545>,  <33.071266, 33.605888, 48.316425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747452, 33.831577, 48.251545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229502, 0.558443, 0.797164,
		0.540359, 0.608104, -0.581568,
		-0.809531, 0.564225, -0.162199,
		32.504593, 34.000847, 48.202885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309174, 34.276543, 48.379791>,  <33.071266, 33.605888, 48.316425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309174, 34.276543, 48.379791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913795, 34.279842, 48.440338>,  <32.676571, 34.281822, 48.476665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913795, 34.279842, 48.440338>,  <33.309174, 34.276543, 48.379791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913795, 34.279842, 48.440338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139483, 0.440602, 0.886800,
		-0.059378, 0.897664, -0.436661,
		-0.988443, 0.008250, 0.151371,
		32.617264, 34.282318, 48.485748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151852, 34.837318, 48.438148>,  <33.309174, 34.276543, 48.379791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151852, 34.837318, 48.438148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841225, 34.687141, 48.640530>,  <32.654850, 34.597034, 48.761959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841225, 34.687141, 48.640530>,  <33.151852, 34.837318, 48.438148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841225, 34.687141, 48.640530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350726, 0.409515, 0.842193,
		-0.523394, 0.831467, -0.186335,
		-0.776563, -0.375446, 0.505955,
		32.608257, 34.574509, 48.792316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361080, 35.473179, 48.713596>,  <33.151852, 34.837318, 48.438148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361080, 35.473179, 48.713596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573177, 35.810154, 48.751839>,  <33.700436, 36.012341, 48.774784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573177, 35.810154, 48.751839>,  <33.361080, 35.473179, 48.713596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573177, 35.810154, 48.751839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546004, -0.253029, -0.798659,
		-0.648629, 0.475685, -0.594141,
		0.530245, 0.842437, 0.095604,
		33.732250, 36.062885, 48.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199795, 35.870975, 48.040520>,  <33.361080, 35.473179, 48.713596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199795, 35.870975, 48.040520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524796, 36.016865, 48.222427>,  <33.719795, 36.104397, 48.331573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524796, 36.016865, 48.222427>,  <33.199795, 35.870975, 48.040520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524796, 36.016865, 48.222427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515890, -0.086571, -0.852269,
		-0.271472, 0.927083, -0.258497,
		0.812502, 0.364723, 0.454771,
		33.768547, 36.126282, 48.358860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505161, 36.429222, 47.549469>,  <33.199795, 35.870975, 48.040520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505161, 36.429222, 47.549469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790802, 36.323990, 47.808960>,  <33.962185, 36.260853, 47.964653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790802, 36.323990, 47.808960>,  <33.505161, 36.429222, 47.549469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790802, 36.323990, 47.808960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650808, -0.091902, -0.753660,
		0.257890, 0.960388, 0.105585,
		0.714102, -0.263077, 0.648729,
		34.005032, 36.245068, 48.003578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235920, 36.875546, 47.437969>,  <33.505161, 36.429222, 47.549469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235920, 36.875546, 47.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325878, 36.522030, 47.602085>,  <34.379852, 36.309921, 47.700554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325878, 36.522030, 47.602085>,  <34.235920, 36.875546, 47.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325878, 36.522030, 47.602085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610802, -0.200200, -0.766055,
		0.759172, 0.422887, 0.494797,
		0.224897, -0.883791, 0.410286,
		34.393349, 36.256893, 47.725170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849506, 36.656643, 47.190647>,  <34.235920, 36.875546, 47.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849506, 36.656643, 47.190647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775620, 36.303200, 47.362751>,  <34.731289, 36.091133, 47.466011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775620, 36.303200, 47.362751>,  <34.849506, 36.656643, 47.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775620, 36.303200, 47.362751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615423, -0.445325, -0.650339,
		0.766247, 0.144662, 0.626050,
		-0.184717, -0.883606, 0.430257,
		34.720203, 36.038116, 47.491829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566212, 36.211605, 47.221226>,  <34.849506, 36.656643, 47.190647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566212, 36.211605, 47.221226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259151, 35.956806, 47.249355>,  <35.074917, 35.803928, 47.266232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259151, 35.956806, 47.249355>,  <35.566212, 36.211605, 47.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259151, 35.956806, 47.249355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369353, -0.529423, -0.763734,
		0.523728, -0.560307, 0.641689,
		-0.767650, -0.636999, 0.070323,
		35.028854, 35.765705, 47.270451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881752, 35.557457, 47.313171>,  <35.566212, 36.211605, 47.221226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881752, 35.557457, 47.313171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515923, 35.506641, 47.159595>,  <35.296425, 35.476154, 47.067451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515923, 35.506641, 47.159595>,  <35.881752, 35.557457, 47.313171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515923, 35.506641, 47.159595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390158, -0.526977, -0.755031,
		-0.106411, -0.840332, 0.531525,
		-0.914578, -0.127035, -0.383938,
		35.241550, 35.468533, 47.044415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950703, 34.865635, 47.088593>,  <35.881752, 35.557457, 47.313171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950703, 34.865635, 47.088593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600819, 34.978004, 46.930626>,  <35.390888, 35.045425, 46.835846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600819, 34.978004, 46.930626>,  <35.950703, 34.865635, 47.088593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600819, 34.978004, 46.930626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154397, -0.610883, -0.776520,
		-0.459390, -0.740206, 0.490974,
		-0.874713, 0.280921, -0.394919,
		35.338406, 35.062283, 46.812149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696968, 34.328407, 46.858089>,  <35.950703, 34.865635, 47.088593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696968, 34.328407, 46.858089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485268, 34.588505, 46.640072>,  <35.358246, 34.744564, 46.509262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485268, 34.588505, 46.640072>,  <35.696968, 34.328407, 46.858089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485268, 34.588505, 46.640072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009647, -0.637735, -0.770195,
		-0.848411, -0.412885, 0.331249,
		-0.529251, 0.650247, -0.545044,
		35.326492, 34.783577, 46.476559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095192, 33.950542, 46.508377>,  <35.696968, 34.328407, 46.858089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095192, 33.950542, 46.508377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158745, 34.276516, 46.285435>,  <35.196877, 34.472099, 46.151669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158745, 34.276516, 46.285435>,  <35.095192, 33.950542, 46.508377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158745, 34.276516, 46.285435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090926, -0.574207, -0.813646,
		-0.983102, 0.078597, -0.165330,
		0.158883, 0.814929, -0.557357,
		35.206409, 34.520996, 46.118229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586590, 33.895069, 46.025646>,  <35.095192, 33.950542, 46.508377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586590, 33.895069, 46.025646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816917, 34.178761, 45.862953>,  <34.955116, 34.348976, 45.765339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816917, 34.178761, 45.862953>,  <34.586590, 33.895069, 46.025646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816917, 34.178761, 45.862953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063960, -0.456880, -0.887226,
		-0.815070, 0.536898, -0.217719,
		0.575821, 0.709226, -0.406729,
		34.989662, 34.391529, 45.740936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328793, 33.939457, 45.394508>,  <34.586590, 33.895069, 46.025646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328793, 33.939457, 45.394508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686531, 34.116837, 45.370857>,  <34.901173, 34.223267, 45.356667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686531, 34.116837, 45.370857>,  <34.328793, 33.939457, 45.394508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686531, 34.116837, 45.370857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054171, -0.238532, -0.969623,
		-0.444085, 0.863975, -0.237352,
		0.894345, 0.443453, -0.059126,
		34.954834, 34.249874, 45.353119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256104, 34.375351, 44.823441>,  <34.328793, 33.939457, 45.394508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256104, 34.375351, 44.823441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634899, 34.269279, 44.895977>,  <34.862179, 34.205639, 44.939499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634899, 34.269279, 44.895977>,  <34.256104, 34.375351, 44.823441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634899, 34.269279, 44.895977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104122, -0.280655, -0.954144,
		0.303910, 0.922450, -0.238168,
		0.946994, -0.265176, 0.181342,
		34.918999, 34.189728, 44.950378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761627, 34.714363, 44.311211>,  <34.256104, 34.375351, 44.823441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761627, 34.714363, 44.311211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940079, 34.380466, 44.440311>,  <35.047150, 34.180126, 44.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940079, 34.380466, 44.440311>,  <34.761627, 34.714363, 44.311211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940079, 34.380466, 44.440311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246875, -0.231849, -0.940903,
		0.860243, 0.499446, 0.102642,
		0.446133, -0.834745, 0.322748,
		35.073917, 34.130043, 44.537136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327885, 34.617981, 43.791679>,  <34.761627, 34.714363, 44.311211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327885, 34.617981, 43.791679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303837, 34.277317, 43.999935>,  <35.289410, 34.072918, 44.124889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303837, 34.277317, 43.999935>,  <35.327885, 34.617981, 43.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303837, 34.277317, 43.999935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299262, -0.512966, -0.804555,
		0.952275, 0.107442, 0.285706,
		-0.060115, -0.851658, 0.520638,
		35.285801, 34.021820, 44.156128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927780, 34.263378, 43.692131>,  <35.327885, 34.617981, 43.791679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927780, 34.263378, 43.692131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651215, 33.996048, 43.801888>,  <35.485275, 33.835651, 43.867741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651215, 33.996048, 43.801888>,  <35.927780, 34.263378, 43.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651215, 33.996048, 43.801888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235912, -0.567838, -0.788610,
		0.682854, -0.480527, 0.550277,
		-0.691416, -0.668322, 0.274388,
		35.443790, 33.795551, 43.884205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269886, 33.633877, 43.764641>,  <35.927780, 34.263378, 43.692131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269886, 33.633877, 43.764641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885464, 33.548756, 43.694111>,  <35.654812, 33.497681, 43.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885464, 33.548756, 43.694111>,  <36.269886, 33.633877, 43.764641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885464, 33.548756, 43.694111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271122, -0.602344, -0.750782,
		0.053566, -0.769347, 0.636582,
		-0.961054, -0.212807, -0.176321,
		35.597149, 33.484913, 43.641216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261543, 32.977200, 43.474339>,  <36.269886, 33.633877, 43.764641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261543, 32.977200, 43.474339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886765, 33.059399, 43.361271>,  <35.661896, 33.108719, 43.293430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886765, 33.059399, 43.361271>,  <36.261543, 32.977200, 43.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886765, 33.059399, 43.361271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062836, -0.696598, -0.714704,
		-0.343777, -0.687401, 0.639763,
		-0.936946, 0.205499, -0.282668,
		35.605682, 33.121048, 43.276470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974316, 32.392548, 43.432018>,  <36.261543, 32.977200, 43.474339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974316, 32.392548, 43.432018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782047, 32.632759, 43.176418>,  <35.666687, 32.776886, 43.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782047, 32.632759, 43.176418>,  <35.974316, 32.392548, 43.432018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782047, 32.632759, 43.176418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003162, -0.729884, -0.683563,
		-0.876898, -0.326546, 0.352730,
		-0.480667, 0.600531, -0.639001,
		35.637848, 32.812920, 42.984718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480068, 31.928234, 43.174934>,  <35.974316, 32.392548, 43.432018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480068, 31.928234, 43.174934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512577, 32.222202, 42.905628>,  <35.532082, 32.398582, 42.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512577, 32.222202, 42.905628>,  <35.480068, 31.928234, 43.174934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512577, 32.222202, 42.905628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093086, -0.666949, -0.739266,
		-0.992336, 0.122752, 0.014207,
		0.081271, 0.734922, -0.673264,
		35.536957, 32.442680, 42.703648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930313, 31.903122, 42.763763>,  <35.480068, 31.928234, 43.174934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930313, 31.903122, 42.763763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190540, 32.097286, 42.530136>,  <35.346676, 32.213783, 42.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190540, 32.097286, 42.530136>,  <34.930313, 31.903122, 42.763763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190540, 32.097286, 42.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257035, -0.582953, -0.770778,
		-0.714632, 0.651568, -0.254481,
		0.650565, 0.485412, -0.584073,
		35.385708, 32.242908, 42.354916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706249, 31.834904, 42.013851>,  <34.930313, 31.903122, 42.763763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706249, 31.834904, 42.013851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072605, 31.979321, 41.943649>,  <35.292419, 32.065971, 41.901527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072605, 31.979321, 41.943649>,  <34.706249, 31.834904, 42.013851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072605, 31.979321, 41.943649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061245, -0.306413, -0.949926,
		-0.396740, 0.880773, -0.258527,
		0.915886, 0.361040, -0.175509,
		35.347370, 32.087631, 41.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671341, 32.037048, 41.337074>,  <34.706249, 31.834904, 42.013851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671341, 32.037048, 41.337074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065689, 32.056438, 41.401218>,  <35.302296, 32.068073, 41.439705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065689, 32.056438, 41.401218>,  <34.671341, 32.037048, 41.337074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065689, 32.056438, 41.401218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167261, -0.338679, -0.925916,
		0.009428, 0.939653, -0.342000,
		0.985868, 0.048474, 0.160360,
		35.361450, 32.070980, 41.449326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891197, 32.411236, 40.766670>,  <34.671341, 32.037048, 41.337074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891197, 32.411236, 40.766670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206539, 32.195831, 40.885666>,  <35.395744, 32.066589, 40.957066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206539, 32.195831, 40.885666>,  <34.891197, 32.411236, 40.766670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206539, 32.195831, 40.885666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242167, -0.172890, -0.954706,
		0.565549, 0.824694, -0.005891,
		0.788359, -0.538507, 0.297491,
		35.443047, 32.034279, 40.974915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388924, 32.522202, 40.291969>,  <34.891197, 32.411236, 40.766670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388924, 32.522202, 40.291969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546574, 32.196079, 40.461651>,  <35.641163, 32.000408, 40.563461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546574, 32.196079, 40.461651>,  <35.388924, 32.522202, 40.291969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546574, 32.196079, 40.461651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400618, -0.263003, -0.877687,
		0.827148, 0.515860, 0.222969,
		0.394122, -0.815302, 0.424205,
		35.664810, 31.951488, 40.588913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142300, 32.429867, 40.180740>,  <35.388924, 32.522202, 40.291969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142300, 32.429867, 40.180740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045734, 32.050797, 40.264290>,  <35.987797, 31.823353, 40.314419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045734, 32.050797, 40.264290>,  <36.142300, 32.429867, 40.180740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045734, 32.050797, 40.264290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602579, -0.315104, -0.733217,
		0.760671, -0.051143, 0.647120,
		-0.241409, -0.947678, 0.208873,
		35.973312, 31.766493, 40.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687519, 32.067757, 40.035500>,  <36.142300, 32.429867, 40.180740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687519, 32.067757, 40.035500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428158, 31.764112, 40.012455>,  <36.272541, 31.581926, 39.998627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428158, 31.764112, 40.012455>,  <36.687519, 32.067757, 40.035500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428158, 31.764112, 40.012455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579948, -0.443507, -0.683346,
		0.493183, -0.476500, 0.727818,
		-0.648406, -0.759111, -0.057616,
		36.233635, 31.536379, 39.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173103, 31.381653, 40.169685>,  <36.687519, 32.067757, 40.035500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173103, 31.381653, 40.169685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830921, 31.279879, 39.989265>,  <36.625610, 31.218813, 39.881012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830921, 31.279879, 39.989265>,  <37.173103, 31.381653, 40.169685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830921, 31.279879, 39.989265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515747, -0.339828, -0.786461,
		0.046824, -0.905416, 0.421934,
		-0.855460, -0.254437, -0.451054,
		36.574284, 31.203548, 39.853951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293411, 30.760067, 40.032635>,  <37.173103, 31.381653, 40.169685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293411, 30.760067, 40.032635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024330, 30.920523, 39.783939>,  <36.862881, 31.016796, 39.634724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024330, 30.920523, 39.783939>,  <37.293411, 30.760067, 40.032635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024330, 30.920523, 39.783939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583849, -0.228402, -0.779072,
		-0.454522, -0.887085, -0.080558,
		-0.672703, 0.401139, -0.621737,
		36.822517, 31.040865, 39.597420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225353, 30.281982, 39.511021>,  <37.293411, 30.760067, 40.032635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225353, 30.281982, 39.511021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029469, 30.589308, 39.346157>,  <36.911938, 30.773703, 39.247238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029469, 30.589308, 39.346157>,  <37.225353, 30.281982, 39.511021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029469, 30.589308, 39.346157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518390, -0.123510, -0.846178,
		-0.701036, -0.628043, -0.337802,
		-0.489714, 0.768314, -0.412157,
		36.882553, 30.819801, 39.222511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127342, 30.145027, 38.839714>,  <37.225353, 30.281982, 39.511021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127342, 30.145027, 38.839714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076550, 30.541721, 38.832378>,  <37.046074, 30.779737, 38.827976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076550, 30.541721, 38.832378>,  <37.127342, 30.145027, 38.839714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076550, 30.541721, 38.832378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564893, 0.057106, -0.823186,
		-0.815335, -0.114890, -0.567476,
		-0.126982, 0.991736, -0.018340,
		37.038456, 30.839243, 38.826878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880016, 30.328934, 38.177708>,  <37.127342, 30.145027, 38.839714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880016, 30.328934, 38.177708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055206, 30.646080, 38.347195>,  <37.160320, 30.836369, 38.448887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055206, 30.646080, 38.347195>,  <36.880016, 30.328934, 38.177708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055206, 30.646080, 38.347195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584409, 0.107043, -0.804368,
		-0.683113, 0.599920, -0.416477,
		0.437975, 0.792867, 0.423721,
		37.186600, 30.883940, 38.474312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830513, 30.879747, 37.672478>,  <36.880016, 30.328934, 38.177708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830513, 30.879747, 37.672478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126957, 30.991430, 37.916706>,  <37.304825, 31.058439, 38.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126957, 30.991430, 37.916706>,  <36.830513, 30.879747, 37.672478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126957, 30.991430, 37.916706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540709, 0.290869, -0.789322,
		-0.397980, 0.915117, 0.064597,
		0.741111, 0.279206, 0.610572,
		37.349289, 31.075191, 38.099876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025650, 31.528410, 37.426064>,  <36.830513, 30.879747, 37.672478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025650, 31.528410, 37.426064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347443, 31.421312, 37.638145>,  <37.540520, 31.357054, 37.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347443, 31.421312, 37.638145>,  <37.025650, 31.528410, 37.426064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347443, 31.421312, 37.638145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593928, 0.351669, -0.723587,
		0.007280, 0.897018, 0.441934,
		0.804485, -0.267744, 0.530204,
		37.588787, 31.340988, 37.797207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645489, 31.979912, 37.368198>,  <37.025650, 31.528410, 37.426064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645489, 31.979912, 37.368198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856133, 31.682316, 37.532715>,  <37.982521, 31.503759, 37.631424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856133, 31.682316, 37.532715>,  <37.645489, 31.979912, 37.368198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856133, 31.682316, 37.532715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794264, 0.258147, -0.550005,
		0.303024, 0.616313, 0.726867,
		0.526614, -0.743988, 0.411290,
		38.014118, 31.459120, 37.656101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269279, 32.325085, 37.468876>,  <37.645489, 31.979912, 37.368198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269279, 32.325085, 37.468876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323883, 31.928871, 37.474590>,  <38.356644, 31.691143, 37.478020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323883, 31.928871, 37.474590>,  <38.269279, 32.325085, 37.468876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323883, 31.928871, 37.474590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730734, 0.090946, -0.676577,
		0.668874, 0.102801, 0.736233,
		0.136511, -0.990536, 0.014289,
		38.364838, 31.631710, 37.478878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028408, 32.154716, 37.586811>,  <38.269279, 32.325085, 37.468876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028408, 32.154716, 37.586811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865448, 31.827286, 37.424843>,  <38.767673, 31.630827, 37.327663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865448, 31.827286, 37.424843>,  <39.028408, 32.154716, 37.586811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865448, 31.827286, 37.424843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791830, -0.095706, -0.603196,
		0.455010, -0.566366, 0.687165,
		-0.407396, -0.818578, -0.404918,
		38.743229, 31.581713, 37.303368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599575, 31.732447, 37.514595>,  <39.028408, 32.154716, 37.586811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599575, 31.732447, 37.514595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328991, 31.614370, 37.244701>,  <39.166641, 31.543524, 37.082764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328991, 31.614370, 37.244701>,  <39.599575, 31.732447, 37.514595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328991, 31.614370, 37.244701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699893, 0.027524, -0.713717,
		0.229254, -0.955042, 0.187983,
		-0.676456, -0.295190, -0.674737,
		39.126053, 31.525814, 37.042282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977924, 31.290340, 37.171173>,  <39.599575, 31.732447, 37.514595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977924, 31.290340, 37.171173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665829, 31.405306, 36.948959>,  <39.478573, 31.474285, 36.815632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665829, 31.405306, 36.948959>,  <39.977924, 31.290340, 37.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665829, 31.405306, 36.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619498, 0.232529, -0.749769,
		-0.086316, -0.929152, -0.359481,
		-0.780239, 0.287414, -0.555537,
		39.431759, 31.491529, 36.782299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082554, 30.942228, 36.601944>,  <39.977924, 31.290340, 37.171173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082554, 30.942228, 36.601944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818398, 31.221357, 36.490997>,  <39.659904, 31.388836, 36.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818398, 31.221357, 36.490997>,  <40.082554, 30.942228, 36.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818398, 31.221357, 36.490997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610929, 0.284506, -0.738798,
		-0.436640, -0.657342, -0.614205,
		-0.660387, 0.697824, -0.277363,
		39.620281, 31.430704, 36.407787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952015, 30.858112, 35.891743>,  <40.082554, 30.942228, 36.601944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952015, 30.858112, 35.891743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875095, 31.238045, 35.990410>,  <39.828945, 31.466003, 36.049610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875095, 31.238045, 35.990410>,  <39.952015, 30.858112, 35.891743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875095, 31.238045, 35.990410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537740, 0.312249, -0.783158,
		-0.820889, -0.017956, -0.570806,
		-0.192296, 0.949831, 0.246666,
		39.817406, 31.522993, 36.064411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650085, 31.265160, 35.331005>,  <39.952015, 30.858112, 35.891743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650085, 31.265160, 35.331005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843269, 31.523666, 35.567341>,  <39.959179, 31.678770, 35.709141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843269, 31.523666, 35.567341>,  <39.650085, 31.265160, 35.331005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843269, 31.523666, 35.567341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569088, 0.281155, -0.772716,
		-0.665498, 0.709430, -0.231996,
		0.482961, 0.646267, 0.590836,
		39.988159, 31.717546, 35.744591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892227, 31.951487, 35.016525>,  <39.650085, 31.265160, 35.331005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892227, 31.951487, 35.016525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142563, 31.930988, 35.327831>,  <40.292763, 31.918690, 35.514614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142563, 31.930988, 35.327831>,  <39.892227, 31.951487, 35.016525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142563, 31.930988, 35.327831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739165, 0.357433, -0.570856,
		-0.248925, 0.932532, 0.261574,
		0.625837, -0.051246, 0.778269,
		40.330315, 31.915615, 35.561314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380310, 32.445377, 34.825706>,  <39.892227, 31.951487, 35.016525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380310, 32.445377, 34.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 32.172207, 35.069958>,  <40.636909, 32.008305, 35.216507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 32.172207, 35.069958>,  <40.380310, 32.445377, 34.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540684, 32.172207, 35.069958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819041, -0.031383, -0.572876,
		0.410395, 0.729813, 0.546762,
		0.400933, -0.682926, 0.610626,
		40.660965, 31.967329, 35.253147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018490, 32.597347, 34.805218>,  <40.380310, 32.445377, 34.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018490, 32.597347, 34.805218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040009, 32.237999, 34.979588>,  <41.052917, 32.022388, 35.084209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040009, 32.237999, 34.979588>,  <41.018490, 32.597347, 34.805218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040009, 32.237999, 34.979588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846745, -0.190356, -0.496778,
		0.529273, 0.395843, 0.750452,
		0.053793, -0.898373, 0.435928,
		41.056145, 31.968487, 35.110367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699955, 32.651630, 34.613922>,  <41.018490, 32.597347, 34.805218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699955, 32.651630, 34.613922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 32.282463, 34.664013>,  <41.466953, 32.060963, 34.694069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 32.282463, 34.664013>,  <41.699955, 32.651630, 34.613922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554329, 32.282463, 34.664013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733735, -0.367024, -0.571775,
		0.573660, -0.116283, 0.810797,
		-0.364070, -0.922915, 0.125226,
		41.445107, 32.005589, 34.701580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238255, 32.264610, 34.772202>,  <41.699955, 32.651630, 34.613922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238255, 32.264610, 34.772202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972221, 32.046677, 34.567917>,  <41.812603, 31.915916, 34.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972221, 32.046677, 34.567917>,  <42.238255, 32.264610, 34.772202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972221, 32.046677, 34.567917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715814, -0.270235, -0.643882,
		0.212793, -0.793809, 0.569725,
		-0.665079, -0.544830, -0.510715,
		41.772697, 31.883228, 34.414703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039146, 32.595005, 35.420376>,  <42.238255, 32.264610, 34.772202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039146, 32.595005, 35.420376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322491, 32.873699, 35.375164>,  <42.492496, 33.040916, 35.348038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322491, 32.873699, 35.375164>,  <42.039146, 32.595005, 35.420376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322491, 32.873699, 35.375164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582659, 0.667579, 0.463515,
		0.398407, -0.262478, 0.878850,
		0.708365, 0.696737, -0.113033,
		42.535000, 33.082722, 35.341255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869690, 33.031570, 36.009907>,  <42.039146, 32.595005, 35.420376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869690, 33.031570, 36.009907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089989, 33.226562, 35.738895>,  <42.222168, 33.343559, 35.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089989, 33.226562, 35.738895>,  <41.869690, 33.031570, 36.009907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089989, 33.226562, 35.738895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498830, 0.843049, 0.201090,
		0.669215, 0.227220, 0.707476,
		0.550746, 0.487483, -0.677525,
		42.255211, 33.372807, 35.535637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085457, 33.678551, 36.330990>,  <41.869690, 33.031570, 36.009907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085457, 33.678551, 36.330990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107147, 33.765591, 35.941177>,  <42.120159, 33.817814, 35.707291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107147, 33.765591, 35.941177>,  <42.085457, 33.678551, 36.330990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107147, 33.765591, 35.941177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501574, 0.849841, 0.161847,
		0.863414, 0.480024, 0.155222,
		0.054223, 0.217596, -0.974532,
		42.123413, 33.830868, 35.648819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404350, 34.365234, 36.340126>,  <42.085457, 33.678551, 36.330990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404350, 34.365234, 36.340126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222790, 34.340290, 35.984577>,  <42.113853, 34.325321, 35.771248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222790, 34.340290, 35.984577>,  <42.404350, 34.365234, 36.340126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222790, 34.340290, 35.984577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390504, 0.910571, 0.135523,
		0.800926, 0.408621, -0.437661,
		-0.453899, -0.062364, -0.888868,
		42.086620, 34.321579, 35.717918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403965, 35.042969, 36.112850>,  <42.404350, 34.365234, 36.340126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403965, 35.042969, 36.112850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159615, 34.856571, 35.856823>,  <42.013004, 34.744732, 35.703209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159615, 34.856571, 35.856823>,  <42.403965, 35.042969, 36.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159615, 34.856571, 35.856823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539493, 0.836697, -0.094263,
		0.579467, 0.287728, -0.762516,
		-0.610872, -0.465994, -0.640066,
		41.976353, 34.716774, 35.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209431, 35.501244, 35.618729>,  <42.403965, 35.042969, 36.112850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209431, 35.501244, 35.618729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913059, 35.236969, 35.570530>,  <41.735237, 35.078403, 35.541611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913059, 35.236969, 35.570530>,  <42.209431, 35.501244, 35.618729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913059, 35.236969, 35.570530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621584, 0.742575, -0.249433,
		0.254275, -0.109912, -0.960866,
		-0.740931, -0.660683, -0.120498,
		41.690781, 35.038765, 35.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892059, 35.558506, 34.888733>,  <42.209431, 35.501244, 35.618729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892059, 35.558506, 34.888733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617577, 35.422710, 35.146061>,  <41.452888, 35.341232, 35.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617577, 35.422710, 35.146061>,  <41.892059, 35.558506, 34.888733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617577, 35.422710, 35.146061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641741, 0.698936, -0.315684,
		-0.342472, -0.629473, -0.697479,
		-0.686208, -0.339488, 0.643324,
		41.411713, 35.320866, 35.339058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193623, 35.871567, 34.695702>,  <41.892059, 35.558506, 34.888733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193623, 35.871567, 34.695702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065868, 35.735359, 35.049435>,  <40.989216, 35.653633, 35.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065868, 35.735359, 35.049435>,  <41.193623, 35.871567, 34.695702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065868, 35.735359, 35.049435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734562, 0.678529, -0.004017,
		-0.598676, -0.650878, -0.466846,
		-0.319383, -0.340522, 0.884330,
		40.970055, 35.633202, 35.314735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500309, 36.052010, 34.668884>,  <41.193623, 35.871567, 34.695702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500309, 36.052010, 34.668884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546982, 35.966869, 35.056919>,  <40.574986, 35.915783, 35.289742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546982, 35.966869, 35.056919>,  <40.500309, 36.052010, 34.668884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546982, 35.966869, 35.056919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754600, 0.616060, 0.225940,
		-0.645727, -0.758395, -0.088735,
		0.116686, -0.212855, 0.970091,
		40.581989, 35.903011, 35.347946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808041, 35.849892, 34.853268>,  <40.500309, 36.052010, 34.668884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808041, 35.849892, 34.853268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017281, 35.968243, 35.172974>,  <40.142822, 36.039253, 35.364799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017281, 35.968243, 35.172974>,  <39.808041, 35.849892, 34.853268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017281, 35.968243, 35.172974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720672, 0.654193, 0.229487,
		-0.454976, -0.696053, 0.555434,
		0.523096, 0.295875, 0.799268,
		40.174210, 36.057007, 35.412754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275433, 35.868298, 35.344532>,  <39.808041, 35.849892, 34.853268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275433, 35.868298, 35.344532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598961, 36.082874, 35.440899>,  <39.793076, 36.211620, 35.498718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598961, 36.082874, 35.440899>,  <39.275433, 35.868298, 35.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598961, 36.082874, 35.440899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578618, 0.799098, 0.163226,
		-0.104958, -0.271421, 0.956720,
		0.808817, 0.536444, 0.240921,
		39.841606, 36.243809, 35.513176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118729, 36.187073, 35.952599>,  <39.275433, 35.868298, 35.344532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118729, 36.187073, 35.952599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440559, 36.391869, 35.832253>,  <39.633656, 36.514748, 35.760044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440559, 36.391869, 35.832253>,  <39.118729, 36.187073, 35.952599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440559, 36.391869, 35.832253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441028, 0.854442, 0.274634,
		0.397686, -0.088272, 0.913266,
		0.804575, 0.511994, -0.300869,
		39.681931, 36.545467, 35.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217804, 36.681435, 36.525448>,  <39.118729, 36.187073, 35.952599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217804, 36.681435, 36.525448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383858, 36.812218, 36.185856>,  <39.483490, 36.890686, 35.982101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383858, 36.812218, 36.185856>,  <39.217804, 36.681435, 36.525448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383858, 36.812218, 36.185856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458892, 0.881030, 0.114912,
		0.785547, 0.341886, 0.515781,
		0.415132, 0.326957, -0.848979,
		39.508396, 36.910305, 35.931164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436138, 37.380604, 36.651653>,  <39.217804, 36.681435, 36.525448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436138, 37.380604, 36.651653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478325, 37.374771, 36.253925>,  <39.503635, 37.371273, 36.015289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478325, 37.374771, 36.253925>,  <39.436138, 37.380604, 36.651653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478325, 37.374771, 36.253925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345541, 0.937050, -0.050391,
		0.932458, 0.348892, 0.093789,
		0.105466, -0.014580, -0.994316,
		39.509964, 37.370396, 35.955631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617409, 38.104252, 36.511307>,  <39.436138, 37.380604, 36.651653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617409, 38.104252, 36.511307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492435, 37.946106, 36.165806>,  <39.417454, 37.851219, 35.958504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492435, 37.946106, 36.165806>,  <39.617409, 38.104252, 36.511307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492435, 37.946106, 36.165806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258648, 0.910325, -0.323123,
		0.914052, 0.122457, -0.386670,
		-0.312427, -0.395363, -0.863758,
		39.398708, 37.827496, 35.906677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942101, 38.519188, 35.941715>,  <39.617409, 38.104252, 36.511307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942101, 38.519188, 35.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629906, 38.330318, 35.777813>,  <39.442589, 38.216999, 35.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629906, 38.330318, 35.777813>,  <39.942101, 38.519188, 35.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629906, 38.330318, 35.777813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358680, 0.875017, -0.325107,
		0.512047, -0.106771, -0.852296,
		-0.780485, -0.472171, -0.409753,
		39.395760, 38.188667, 35.654888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859604, 38.817165, 35.243557>,  <39.942101, 38.519188, 35.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859604, 38.817165, 35.243557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511791, 38.638645, 35.328152>,  <39.303104, 38.531532, 35.378910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511791, 38.638645, 35.328152>,  <39.859604, 38.817165, 35.243557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511791, 38.638645, 35.328152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491599, 0.823224, -0.283960,
		-0.047370, -0.350879, -0.935222,
		-0.869532, -0.446303, 0.211488,
		39.250931, 38.504753, 35.391598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364429, 38.696232, 34.600616>,  <39.859604, 38.817165, 35.243557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364429, 38.696232, 34.600616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125809, 38.699436, 34.921631>,  <38.982635, 38.701359, 35.114239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125809, 38.699436, 34.921631>,  <39.364429, 38.696232, 34.600616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125809, 38.699436, 34.921631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503475, 0.774981, -0.381990,
		-0.625010, -0.631933, -0.458282,
		-0.596552, 0.008014, 0.802534,
		38.946842, 38.701839, 35.162392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654243, 38.832344, 34.344608>,  <39.364429, 38.696232, 34.600616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654243, 38.832344, 34.344608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652832, 38.929478, 34.732632>,  <38.651985, 38.987759, 34.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652832, 38.929478, 34.732632>,  <38.654243, 38.832344, 34.344608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652832, 38.929478, 34.732632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577191, 0.791668, -0.200280,
		-0.816602, -0.560618, 0.137365,
		-0.003533, 0.242835, 0.970061,
		38.651772, 39.002327, 35.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964001, 38.944977, 34.469742>,  <38.654243, 38.832344, 34.344608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964001, 38.944977, 34.469742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164043, 39.141609, 34.754906>,  <38.284069, 39.259586, 34.926006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164043, 39.141609, 34.754906>,  <37.964001, 38.944977, 34.469742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164043, 39.141609, 34.754906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467155, 0.846343, -0.255872,
		-0.729148, -0.205076, 0.652906,
		0.500109, 0.491577, 0.712911,
		38.314075, 39.289082, 34.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380726, 39.227158, 34.850334>,  <37.964001, 38.944977, 34.469742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380726, 39.227158, 34.850334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742138, 39.397652, 34.868031>,  <37.958984, 39.499947, 34.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742138, 39.397652, 34.868031>,  <37.380726, 39.227158, 34.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742138, 39.397652, 34.868031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387762, 0.857170, -0.338970,
		-0.182403, 0.289115, 0.939756,
		0.903532, 0.426231, 0.044242,
		38.013199, 39.525520, 34.881302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090580, 39.901623, 35.108135>,  <37.380726, 39.227158, 34.850334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090580, 39.901623, 35.108135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461628, 39.876900, 34.960781>,  <37.684258, 39.862064, 34.872368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461628, 39.876900, 34.960781>,  <37.090580, 39.901623, 35.108135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461628, 39.876900, 34.960781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216312, 0.715125, -0.664685,
		0.304523, 0.696259, 0.649992,
		0.927618, -0.061810, -0.368381,
		37.739914, 39.858356, 34.850266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456665, 40.523003, 35.000893>,  <37.090580, 39.901623, 35.108135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456665, 40.523003, 35.000893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655907, 40.317223, 34.721687>,  <37.775452, 40.193752, 34.554165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655907, 40.317223, 34.721687>,  <37.456665, 40.523003, 35.000893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655907, 40.317223, 34.721687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122557, 0.755137, -0.644009,
		0.858410, 0.406333, 0.313091,
		0.498109, -0.514452, -0.698016,
		37.805340, 40.162888, 34.512283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561138, 41.241760, 34.645641>,  <37.456665, 40.523003, 35.000893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561138, 41.241760, 34.645641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761639, 40.908478, 34.552246>,  <37.881939, 40.708508, 34.496208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761639, 40.908478, 34.552246>,  <37.561138, 41.241760, 34.645641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761639, 40.908478, 34.552246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326750, 0.432120, -0.840540,
		0.801235, 0.345033, 0.488851,
		0.501256, -0.833202, -0.233490,
		37.912014, 40.658516, 34.482201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359119, 41.290047, 34.760437>,  <37.561138, 41.241760, 34.645641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359119, 41.290047, 34.760437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216137, 41.073601, 34.455959>,  <38.130348, 40.943733, 34.273273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216137, 41.073601, 34.455959>,  <38.359119, 41.290047, 34.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216137, 41.073601, 34.455959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270957, 0.719900, -0.639004,
		0.893762, -0.434665, -0.110710,
		-0.357453, -0.541120, -0.761194,
		38.108902, 40.911266, 34.227600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924721, 41.143650, 34.349991>,  <38.359119, 41.290047, 34.760437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924721, 41.143650, 34.349991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596645, 41.115410, 34.122902>,  <38.399799, 41.098465, 33.986649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596645, 41.115410, 34.122902>,  <38.924721, 41.143650, 34.349991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596645, 41.115410, 34.122902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356990, 0.712286, -0.604323,
		0.447047, -0.698329, -0.559003,
		-0.820187, -0.070603, -0.567722,
		38.350590, 41.094231, 33.952583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994530, 41.966755, 34.236847>,  <38.924721, 41.143650, 34.349991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994530, 41.966755, 34.236847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915871, 42.102085, 33.868744>,  <38.868675, 42.183281, 33.647884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915871, 42.102085, 33.868744>,  <38.994530, 41.966755, 34.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915871, 42.102085, 33.868744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860753, -0.389872, -0.327268,
		-0.469503, -0.856468, -0.214544,
		-0.196650, 0.338322, -0.920254,
		38.856876, 42.203583, 33.592667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907726, 41.440418, 33.665596>,  <38.994530, 41.966755, 34.236847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907726, 41.440418, 33.665596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079437, 41.761429, 33.499859>,  <39.182465, 41.954037, 33.400417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079437, 41.761429, 33.499859>,  <38.907726, 41.440418, 33.665596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079437, 41.761429, 33.499859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811584, -0.544052, -0.212929,
		-0.396304, -0.244867, -0.884864,
		0.429273, 0.802525, -0.414340,
		39.208218, 42.002186, 33.375557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189720, 41.128052, 33.178493>,  <38.907726, 41.440418, 33.665596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189720, 41.128052, 33.178493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395397, 40.920715, 33.451824>,  <39.518803, 40.796314, 33.615822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395397, 40.920715, 33.451824>,  <39.189720, 41.128052, 33.178493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395397, 40.920715, 33.451824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856525, 0.269129, -0.440379,
		0.044363, 0.811724, 0.582354,
		0.514195, -0.518337, 0.683323,
		39.549656, 40.765213, 33.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534225, 40.721569, 32.598099>,  <39.189720, 41.128052, 33.178493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534225, 40.721569, 32.598099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396389, 40.590164, 32.949856>,  <39.313686, 40.511322, 33.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396389, 40.590164, 32.949856>,  <39.534225, 40.721569, 32.598099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396389, 40.590164, 32.949856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924960, -0.278809, 0.258293,
		0.160330, 0.902410, 0.399939,
		-0.344593, -0.328515, 0.879394,
		39.293011, 40.491611, 33.213673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036396, 41.030376, 33.089470>,  <39.534225, 40.721569, 32.598099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036396, 41.030376, 33.089470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835400, 40.715260, 33.231956>,  <39.714802, 40.526192, 33.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835400, 40.715260, 33.231956>,  <40.036396, 41.030376, 33.089470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835400, 40.715260, 33.231956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848457, -0.370125, 0.378324,
		-0.166195, 0.492339, 0.854389,
		-0.502495, -0.787788, 0.356216,
		39.684650, 40.478924, 33.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418102, 40.891033, 33.625774>,  <40.036396, 41.030376, 33.089470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418102, 40.891033, 33.625774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201473, 40.559685, 33.568504>,  <40.071495, 40.360874, 33.534142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201473, 40.559685, 33.568504>,  <40.418102, 40.891033, 33.625774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201473, 40.559685, 33.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728459, -0.547439, 0.411897,
		-0.419583, 0.118776, 0.899913,
		-0.541570, -0.828374, -0.143172,
		40.039001, 40.311172, 33.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661362, 40.503426, 34.108219>,  <40.418102, 40.891033, 33.625774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661362, 40.503426, 34.108219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481342, 40.265278, 33.841988>,  <40.373333, 40.122387, 33.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481342, 40.265278, 33.841988>,  <40.661362, 40.503426, 34.108219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481342, 40.265278, 33.841988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702561, -0.696136, 0.147658,
		-0.551242, -0.401155, 0.731578,
		-0.450044, -0.595374, -0.665575,
		40.346329, 40.086666, 33.642315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547886, 39.891689, 34.432484>,  <40.661362, 40.503426, 34.108219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547886, 39.891689, 34.432484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541935, 39.776382, 34.049511>,  <40.538364, 39.707199, 33.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541935, 39.776382, 34.049511>,  <40.547886, 39.891689, 34.432484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541935, 39.776382, 34.049511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727719, -0.659794, 0.187346,
		-0.685715, -0.693957, 0.219589,
		-0.014873, -0.288265, -0.957435,
		40.537472, 39.689903, 33.762280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469818, 39.144108, 34.392681>,  <40.547886, 39.891689, 34.432484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469818, 39.144108, 34.392681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638977, 39.243340, 34.044056>,  <40.740471, 39.302879, 33.834881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638977, 39.243340, 34.044056>,  <40.469818, 39.144108, 34.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638977, 39.243340, 34.044056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678808, -0.723886, 0.123323,
		-0.600316, -0.643775, -0.474526,
		0.422895, 0.248079, -0.871560,
		40.765846, 39.317764, 33.782589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610001, 38.549351, 34.114048>,  <40.469818, 39.144108, 34.392681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610001, 38.549351, 34.114048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828270, 38.790905, 33.881649>,  <40.959232, 38.935837, 33.742210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828270, 38.790905, 33.881649>,  <40.610001, 38.549351, 34.114048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828270, 38.790905, 33.881649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765356, -0.641498, 0.052056,
		-0.341271, -0.473075, -0.812240,
		0.545677, 0.603888, -0.580996,
		40.991974, 38.972073, 33.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751621, 38.304752, 33.373943>,  <40.610001, 38.549351, 34.114048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751621, 38.304752, 33.373943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067642, 38.541828, 33.436600>,  <41.257256, 38.684074, 33.474194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067642, 38.541828, 33.436600>,  <40.751621, 38.304752, 33.373943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067642, 38.541828, 33.436600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605068, -0.794965, -0.043854,
		0.098530, 0.129423, -0.986682,
		0.790053, 0.592689, 0.156637,
		41.304657, 38.719635, 33.483589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440205, 38.135040, 33.049660>,  <40.751621, 38.304752, 33.373943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440205, 38.135040, 33.049660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645611, 38.387192, 33.282528>,  <41.768856, 38.538483, 33.422249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645611, 38.387192, 33.282528>,  <41.440205, 38.135040, 33.049660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645611, 38.387192, 33.282528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811527, -0.577215, -0.090806,
		0.278794, 0.519075, -0.807982,
		0.513515, 0.630383, 0.582168,
		41.799664, 38.576305, 33.457180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169250, 38.206810, 32.750000>,  <41.440205, 38.135040, 33.049660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169250, 38.206810, 32.750000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195312, 38.323460, 33.131725>,  <42.210949, 38.393452, 33.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195312, 38.323460, 33.131725>,  <42.169250, 38.206810, 32.750000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195312, 38.323460, 33.131725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826863, -0.551144, 0.111972,
		0.558616, 0.781789, -0.277046,
		0.065154, 0.291628, 0.954310,
		42.214859, 38.410950, 33.418018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814293, 38.230743, 32.765694>,  <42.169250, 38.206810, 32.750000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814293, 38.230743, 32.765694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689823, 38.210529, 33.145298>,  <42.615143, 38.198402, 33.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689823, 38.210529, 33.145298>,  <42.814293, 38.230743, 32.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689823, 38.210529, 33.145298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822742, -0.514143, 0.242391,
		0.475678, 0.856215, 0.201562,
		-0.311170, -0.050533, 0.949010,
		42.596474, 38.195370, 33.430000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404709, 38.455711, 33.201969>,  <42.814293, 38.230743, 32.765694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404709, 38.455711, 33.201969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173027, 38.221893, 33.429241>,  <43.034019, 38.081600, 33.565605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173027, 38.221893, 33.429241>,  <43.404709, 38.455711, 33.201969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173027, 38.221893, 33.429241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753197, -0.650344, 0.098732,
		0.311798, 0.485136, 0.816961,
		-0.579204, -0.584548, 0.568179,
		42.999268, 38.046528, 33.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885544, 38.290264, 33.749538>,  <43.404709, 38.455711, 33.201969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885544, 38.290264, 33.749538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595245, 38.015614, 33.766712>,  <43.421066, 37.850822, 33.777016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595245, 38.015614, 33.766712>,  <43.885544, 38.290264, 33.749538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595245, 38.015614, 33.766712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634542, -0.643969, 0.427389,
		-0.265805, 0.337420, 0.903048,
		-0.725744, -0.686624, 0.042937,
		43.377522, 37.809628, 33.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118229, 37.847973, 34.358070>,  <43.885544, 38.290264, 33.749538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118229, 37.847973, 34.358070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873772, 37.610878, 34.148247>,  <43.727097, 37.468620, 34.022350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873772, 37.610878, 34.148247>,  <44.118229, 37.847973, 34.358070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873772, 37.610878, 34.148247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435581, -0.805207, 0.402381,
		-0.660887, 0.017424, 0.750283,
		-0.611144, -0.592737, -0.524562,
		43.690430, 37.433056, 33.990879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798565, 37.332275, 34.874458>,  <44.118229, 37.847973, 34.358070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798565, 37.332275, 34.874458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748055, 37.167797, 34.513355>,  <43.717751, 37.069111, 34.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748055, 37.167797, 34.513355>,  <43.798565, 37.332275, 34.874458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748055, 37.167797, 34.513355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262954, -0.891362, 0.369228,
		-0.956509, -0.190760, 0.220682,
		-0.126274, -0.411200, -0.902757,
		43.710171, 37.044437, 34.242527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349323, 36.764763, 34.918938>,  <43.798565, 37.332275, 34.874458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349323, 36.764763, 34.918938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586628, 36.734703, 34.598343>,  <43.729012, 36.716667, 34.405987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586628, 36.734703, 34.598343>,  <43.349323, 36.764763, 34.918938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586628, 36.734703, 34.598343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304658, -0.900617, 0.309956,
		-0.745131, -0.428066, -0.511409,
		0.593265, -0.075153, -0.801491,
		43.764606, 36.712158, 34.357895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385551, 36.056767, 34.809811>,  <43.349323, 36.764763, 34.918938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385551, 36.056767, 34.809811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683853, 36.159809, 34.564049>,  <43.862835, 36.221634, 34.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683853, 36.159809, 34.564049>,  <43.385551, 36.056767, 34.809811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683853, 36.159809, 34.564049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464401, -0.862244, 0.202154,
		-0.477691, -0.436087, -0.762653,
		0.745750, 0.257610, -0.614405,
		43.907578, 36.237091, 34.379726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446278, 35.454407, 34.380817>,  <43.385551, 36.056767, 34.809811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446278, 35.454407, 34.380817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788685, 35.656605, 34.337551>,  <43.994129, 35.777924, 34.311592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788685, 35.656605, 34.337551>,  <43.446278, 35.454407, 34.380817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788685, 35.656605, 34.337551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516598, -0.844139, 0.143374,
		-0.018829, -0.178607, -0.983740,
		0.856021, 0.505498, -0.108162,
		44.045490, 35.808254, 34.305103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865383, 35.114883, 33.937027>,  <43.446278, 35.454407, 34.380817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865383, 35.114883, 33.937027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142910, 35.335087, 34.122738>,  <44.309425, 35.467209, 34.234165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142910, 35.335087, 34.122738>,  <43.865383, 35.114883, 33.937027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142910, 35.335087, 34.122738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612720, -0.790019, 0.021097,
		0.378402, 0.269834, -0.885439,
		0.693820, 0.550509, 0.464277,
		44.351055, 35.500240, 34.262020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441929, 34.858692, 33.603359>,  <43.865383, 35.114883, 33.937027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441929, 34.858692, 33.603359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562309, 35.036991, 33.940578>,  <44.634537, 35.143970, 34.142910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562309, 35.036991, 33.940578>,  <44.441929, 34.858692, 33.603359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562309, 35.036991, 33.940578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526795, -0.814617, 0.242665,
		0.794933, 0.371086, -0.479976,
		0.300947, 0.445751, 0.843052,
		44.652592, 35.170715, 34.193493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212784, 34.715214, 33.649796>,  <44.441929, 34.858692, 33.603359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212784, 34.715214, 33.649796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093254, 34.807758, 34.020130>,  <45.021534, 34.863285, 34.242332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093254, 34.807758, 34.020130>,  <45.212784, 34.715214, 33.649796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093254, 34.807758, 34.020130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516737, -0.776405, 0.360804,
		0.802300, 0.586232, 0.112459,
		-0.298829, 0.231361, 0.925837,
		45.003605, 34.877167, 34.297882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824688, 34.620369, 34.174515>,  <45.212784, 34.715214, 33.649796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824688, 34.620369, 34.174515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469635, 34.583549, 34.355019>,  <45.256603, 34.561459, 34.463322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469635, 34.583549, 34.355019>,  <45.824688, 34.620369, 34.174515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469635, 34.583549, 34.355019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321755, -0.824997, 0.464601,
		0.329522, 0.557590, 0.761911,
		-0.887631, -0.092053, 0.451262,
		45.203346, 34.555935, 34.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696301, 34.521465, 35.039509>,  <45.824688, 34.620369, 34.174515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696301, 34.521465, 35.039509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044540, 34.651070, 34.891415>,  <46.253483, 34.728832, 34.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044540, 34.651070, 34.891415>,  <45.696301, 34.521465, 35.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044540, 34.651070, 34.891415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272570, 0.308838, 0.911221,
		0.409586, -0.894225, 0.180559,
		0.870600, 0.324008, -0.370235,
		46.305721, 34.748272, 34.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279800, 34.096947, 35.137882>,  <45.696301, 34.521465, 35.039509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279800, 34.096947, 35.137882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368233, 34.487049, 35.138386>,  <46.421291, 34.721111, 35.138687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368233, 34.487049, 35.138386>,  <46.279800, 34.096947, 35.137882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368233, 34.487049, 35.138386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091079, -0.021933, 0.995602,
		0.970992, -0.219998, -0.093675,
		0.221085, 0.975254, 0.001259,
		46.434559, 34.779625, 35.138763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920086, 34.373615, 35.431183>,  <46.279800, 34.096947, 35.137882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920086, 34.373615, 35.431183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644871, 34.658871, 35.484917>,  <46.479744, 34.830025, 35.517159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.644871, 34.658871, 35.484917>,  <46.920086, 34.373615, 35.431183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.644871, 34.658871, 35.484917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189096, -0.002537, 0.981955,
		0.700609, 0.701021, -0.133106,
		-0.688034, 0.713136, 0.134337,
		46.438461, 34.872810, 35.525219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398495, 34.880856, 35.913109>,  <46.920086, 34.373615, 35.431183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398495, 34.880856, 35.913109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013012, 34.840832, 35.814110>,  <46.781723, 34.816818, 35.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013012, 34.840832, 35.814110>,  <47.398495, 34.880856, 35.913109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013012, 34.840832, 35.814110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008281, -0.937861, 0.346913,
		-0.266834, 0.332272, 0.904652,
		-0.963707, -0.100060, -0.247502,
		46.723900, 34.810814, 35.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.782307, 35.267368, 35.410740>,  <47.398495, 34.880856, 35.913109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.782307, 35.267368, 35.410740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641159, 35.264191, 35.036484>,  <47.556473, 35.262283, 34.811932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641159, 35.264191, 35.036484>,  <47.782307, 35.267368, 35.410740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641159, 35.264191, 35.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476692, 0.861987, 0.172464,
		0.805139, 0.506869, -0.307952,
		-0.352867, -0.007941, -0.935640,
		47.535297, 35.261806, 34.755791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.913712, 36.930428, 42.155529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545212, 37.038910, 42.043999>,  <34.324112, 37.104000, 41.977081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545212, 37.038910, 42.043999>,  <34.913712, 36.930428, 42.155529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545212, 37.038910, 42.043999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224777, -0.213826, -0.950660,
		-0.317446, -0.938469, 0.136026,
		-0.921251, 0.271208, -0.278824,
		34.268837, 37.120270, 41.960350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597973, 36.372425, 41.846291>,  <34.913712, 36.930428, 42.155529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597973, 36.372425, 41.846291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365025, 36.660305, 41.695103>,  <34.225254, 36.833035, 41.604389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.365025, 36.660305, 41.695103>,  <34.597973, 36.372425, 41.846291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365025, 36.660305, 41.695103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174310, -0.343587, -0.922802,
		-0.794012, -0.603302, 0.074645,
		-0.582375, 0.719705, -0.377974,
		34.190311, 36.876217, 41.581711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329903, 36.049305, 41.292233>,  <34.597973, 36.372425, 41.846291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329903, 36.049305, 41.292233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.231274, 36.430256, 41.220478>,  <34.172096, 36.658825, 41.177425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.231274, 36.430256, 41.220478>,  <34.329903, 36.049305, 41.292233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231274, 36.430256, 41.220478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114123, -0.155280, -0.981257,
		-0.962381, -0.262426, -0.070400,
		-0.246575, 0.952377, -0.179387,
		34.157303, 36.715969, 41.166660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770977, 36.015694, 40.793945>,  <34.329903, 36.049305, 41.292233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770977, 36.015694, 40.793945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930714, 36.381073, 40.762600>,  <34.026558, 36.600300, 40.743793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930714, 36.381073, 40.762600>,  <33.770977, 36.015694, 40.793945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930714, 36.381073, 40.762600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108710, -0.132050, -0.985264,
		-0.910332, 0.384943, -0.152034,
		0.399346, 0.913445, -0.078362,
		34.050518, 36.655106, 40.739090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301559, 36.385845, 40.303234>,  <33.770977, 36.015694, 40.793945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301559, 36.385845, 40.303234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669380, 36.542988, 40.306919>,  <33.890072, 36.637272, 40.309132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669380, 36.542988, 40.306919>,  <33.301559, 36.385845, 40.303234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669380, 36.542988, 40.306919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057301, -0.110860, -0.992183,
		-0.388761, 0.912895, -0.124452,
		0.919555, 0.392853, 0.009212,
		33.945248, 36.660843, 40.309681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212337, 36.809944, 39.679768>,  <33.301559, 36.385845, 40.303234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212337, 36.809944, 39.679768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605034, 36.778305, 39.748970>,  <33.840652, 36.759323, 39.790493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605034, 36.778305, 39.748970>,  <33.212337, 36.809944, 39.679768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605034, 36.778305, 39.748970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159326, -0.155003, -0.974982,
		0.103934, 0.984743, -0.139570,
		0.981740, -0.079097, 0.173005,
		33.899555, 36.754578, 39.800873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511059, 37.225021, 39.175449>,  <33.212337, 36.809944, 39.679768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511059, 37.225021, 39.175449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813316, 37.006493, 39.319969>,  <33.994671, 36.875374, 39.406681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813316, 37.006493, 39.319969>,  <33.511059, 37.225021, 39.175449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813316, 37.006493, 39.319969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196077, -0.337643, -0.920625,
		0.624949, 0.766505, -0.148015,
		0.755640, -0.546322, 0.361303,
		34.040009, 36.842598, 39.428360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079197, 37.393742, 38.781460>,  <33.511059, 37.225021, 39.175449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079197, 37.393742, 38.781460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202572, 37.038258, 38.917145>,  <34.276596, 36.824966, 38.998554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202572, 37.038258, 38.917145>,  <34.079197, 37.393742, 38.781460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202572, 37.038258, 38.917145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315337, -0.240907, -0.917892,
		0.897457, 0.390078, 0.205939,
		0.308437, -0.888709, 0.339209,
		34.295101, 36.771645, 39.018909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705044, 37.260605, 38.312363>,  <34.079197, 37.393742, 38.781460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705044, 37.260605, 38.312363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604755, 36.911083, 38.479027>,  <34.544582, 36.701370, 38.579025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604755, 36.911083, 38.479027>,  <34.705044, 37.260605, 38.312363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604755, 36.911083, 38.479027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315722, -0.480685, -0.818084,
		0.915127, -0.073565, 0.396398,
		-0.250725, -0.873802, 0.416661,
		34.529537, 36.648941, 38.604027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271221, 36.809055, 38.178867>,  <34.705044, 37.260605, 38.312363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271221, 36.809055, 38.178867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994907, 36.543095, 38.292522>,  <34.829121, 36.383518, 38.360714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994907, 36.543095, 38.292522>,  <35.271221, 36.809055, 38.178867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994907, 36.543095, 38.292522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300770, -0.621574, -0.723315,
		0.657541, -0.414192, 0.629352,
		-0.690780, -0.664899, 0.284134,
		34.787674, 36.343624, 38.377762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561069, 36.157925, 38.280128>,  <35.271221, 36.809055, 38.178867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561069, 36.157925, 38.280128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176624, 36.105396, 38.182953>,  <34.945957, 36.073879, 38.124649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176624, 36.105396, 38.182953>,  <35.561069, 36.157925, 38.280128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176624, 36.105396, 38.182953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269004, -0.644144, -0.716042,
		-0.062457, -0.753547, 0.654420,
		-0.961112, -0.131319, -0.242939,
		34.888290, 36.066002, 38.110073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494438, 35.506031, 38.260799>,  <35.561069, 36.157925, 38.280128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494438, 35.506031, 38.260799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181625, 35.635895, 38.048004>,  <34.993938, 35.713814, 37.920326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181625, 35.635895, 38.048004>,  <35.494438, 35.506031, 38.260799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181625, 35.635895, 38.048004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134410, -0.745654, -0.652636,
		-0.608568, -0.581890, 0.539490,
		-0.782035, 0.324660, -0.531993,
		34.947014, 35.733292, 37.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056767, 34.983902, 38.140965>,  <35.494438, 35.506031, 38.260799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056767, 34.983902, 38.140965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940228, 35.220821, 37.840485>,  <34.870304, 35.362972, 37.660194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940228, 35.220821, 37.840485>,  <35.056767, 34.983902, 38.140965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940228, 35.220821, 37.840485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143832, -0.749220, -0.646515,
		-0.945743, -0.296406, 0.133090,
		-0.291344, 0.592295, -0.751203,
		34.852825, 35.398510, 37.615124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623074, 34.629093, 37.756893>,  <35.056767, 34.983902, 38.140965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623074, 34.629093, 37.756893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713627, 34.910179, 37.487095>,  <34.767960, 35.078831, 37.325214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.713627, 34.910179, 37.487095>,  <34.623074, 34.629093, 37.756893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713627, 34.910179, 37.487095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169386, -0.710324, -0.683189,
		-0.959197, 0.040411, -0.279834,
		0.226382, 0.702714, -0.674496,
		34.781540, 35.120995, 37.284744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226242, 34.409355, 37.174633>,  <34.623074, 34.629093, 37.756893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226242, 34.409355, 37.174633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.522892, 34.638401, 37.034859>,  <34.700882, 34.775829, 36.950993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.522892, 34.638401, 37.034859>,  <34.226242, 34.409355, 37.174633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522892, 34.638401, 37.034859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165338, -0.660875, -0.732057,
		-0.650117, 0.485138, -0.584797,
		0.741627, 0.572612, -0.349435,
		34.745380, 34.810184, 36.930027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175331, 34.269112, 36.443626>,  <34.226242, 34.409355, 37.174633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175331, 34.269112, 36.443626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532028, 34.428280, 36.529839>,  <34.746048, 34.523781, 36.581566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532028, 34.428280, 36.529839>,  <34.175331, 34.269112, 36.443626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532028, 34.428280, 36.529839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427670, -0.585310, -0.688848,
		-0.147958, 0.706450, -0.692125,
		0.891744, 0.397921, 0.215526,
		34.799553, 34.547657, 36.594498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502159, 34.433559, 35.799892>,  <34.175331, 34.269112, 36.443626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502159, 34.433559, 35.799892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822121, 34.429695, 36.039913>,  <35.014095, 34.427376, 36.183926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822121, 34.429695, 36.039913>,  <34.502159, 34.433559, 35.799892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822121, 34.429695, 36.039913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535233, -0.440771, -0.720588,
		0.271448, 0.897567, -0.347402,
		0.799901, -0.009661, 0.600054,
		35.062092, 34.426796, 36.219929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023632, 34.644093, 35.368698>,  <34.502159, 34.433559, 35.799892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023632, 34.644093, 35.368698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175434, 34.430305, 35.670776>,  <35.266518, 34.302032, 35.852024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175434, 34.430305, 35.670776>,  <35.023632, 34.644093, 35.368698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175434, 34.430305, 35.670776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507205, -0.562477, -0.652964,
		0.773768, 0.630844, 0.057620,
		0.379509, -0.534468, 0.755194,
		35.289288, 34.269966, 35.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653522, 34.575790, 35.196045>,  <35.023632, 34.644093, 35.368698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653522, 34.575790, 35.196045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657288, 34.279709, 35.464973>,  <35.659546, 34.102058, 35.626331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657288, 34.279709, 35.464973>,  <35.653522, 34.575790, 35.196045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657288, 34.279709, 35.464973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560088, -0.553079, -0.616769,
		0.828379, 0.382364, 0.409372,
		0.009415, -0.740203, 0.672317,
		35.660110, 34.057648, 35.666668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295902, 34.428848, 35.145447>,  <35.653522, 34.575790, 35.196045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295902, 34.428848, 35.145447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101810, 34.117565, 35.304920>,  <35.985355, 33.930794, 35.400604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101810, 34.117565, 35.304920>,  <36.295902, 34.428848, 35.145447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101810, 34.117565, 35.304920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579408, -0.627644, -0.519951,
		0.654861, -0.021295, 0.755450,
		-0.485226, -0.778209, 0.398681,
		35.956242, 33.884102, 35.424526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831970, 33.985710, 35.184425>,  <36.295902, 34.428848, 35.145447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831970, 33.985710, 35.184425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516113, 33.744366, 35.229004>,  <36.326599, 33.599560, 35.255753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516113, 33.744366, 35.229004>,  <36.831970, 33.985710, 35.184425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516113, 33.744366, 35.229004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459953, -0.702312, -0.543324,
		0.406091, -0.377772, 0.832093,
		-0.789641, -0.603363, 0.111445,
		36.279221, 33.563358, 35.262436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118923, 33.298210, 35.425117>,  <36.831970, 33.985710, 35.184425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118923, 33.298210, 35.425117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761456, 33.257416, 35.250324>,  <36.546974, 33.232941, 35.145451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761456, 33.257416, 35.250324>,  <37.118923, 33.298210, 35.425117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761456, 33.257416, 35.250324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400177, -0.621710, -0.673301,
		-0.203007, -0.776579, 0.596417,
		-0.893670, -0.101988, -0.436981,
		36.493355, 33.226818, 35.119228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647713, 33.689327, 35.377945>,  <37.118923, 33.298210, 35.425117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647713, 33.689327, 35.377945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042793, 33.677074, 35.439266>,  <38.279842, 33.669724, 35.476059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042793, 33.677074, 35.439266>,  <37.647713, 33.689327, 35.377945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042793, 33.677074, 35.439266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136763, 0.305788, 0.942226,
		-0.075743, -0.951607, 0.297839,
		0.987704, -0.030634, 0.153306,
		38.339104, 33.667885, 35.485256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843353, 33.304111, 36.040020>,  <37.647713, 33.689327, 35.377945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843353, 33.304111, 36.040020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170860, 33.525749, 35.979889>,  <38.367363, 33.658733, 35.943810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170860, 33.525749, 35.979889>,  <37.843353, 33.304111, 36.040020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170860, 33.525749, 35.979889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044099, 0.200366, 0.978728,
		0.572432, -0.807978, 0.139618,
		0.818766, 0.554098, -0.150327,
		38.416489, 33.691978, 35.934792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189434, 33.089001, 36.604538>,  <37.843353, 33.304111, 36.040020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189434, 33.089001, 36.604538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335529, 33.434284, 36.465130>,  <38.423187, 33.641457, 36.381485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335529, 33.434284, 36.465130>,  <38.189434, 33.089001, 36.604538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335529, 33.434284, 36.465130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107874, 0.332617, 0.936872,
		0.924641, -0.379781, 0.028367,
		0.365242, 0.863211, -0.348519,
		38.445103, 33.693249, 36.360573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768478, 33.214722, 36.980423>,  <38.189434, 33.089001, 36.604538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768478, 33.214722, 36.980423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667816, 33.572224, 36.831898>,  <38.607418, 33.786724, 36.742783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667816, 33.572224, 36.831898>,  <38.768478, 33.214722, 36.980423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667816, 33.572224, 36.831898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102487, 0.406116, 0.908056,
		0.962376, 0.190458, -0.193797,
		-0.251651, 0.893753, -0.371317,
		38.592319, 33.840351, 36.720501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283169, 33.735317, 37.203133>,  <38.768478, 33.214722, 36.980423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283169, 33.735317, 37.203133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944530, 33.927799, 37.112164>,  <38.741348, 34.043289, 37.057583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.944530, 33.927799, 37.112164>,  <39.283169, 33.735317, 37.203133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944530, 33.927799, 37.112164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081869, 0.539947, 0.837708,
		0.525909, 0.690577, -0.496511,
		-0.846592, 0.481207, -0.227426,
		38.690552, 34.072163, 37.043934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460800, 34.466167, 37.292793>,  <39.283169, 33.735317, 37.203133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460800, 34.466167, 37.292793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060879, 34.474106, 37.293839>,  <38.820927, 34.478867, 37.294464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060879, 34.474106, 37.293839>,  <39.460800, 34.466167, 37.292793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060879, 34.474106, 37.293839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014534, 0.630185, 0.776310,
		0.013760, 0.776192, -0.630347,
		-0.999800, 0.019844, 0.002610,
		38.760941, 34.480061, 37.294621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295864, 35.235752, 37.431858>,  <39.460800, 34.466167, 37.292793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295864, 35.235752, 37.431858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986446, 34.997051, 37.517193>,  <38.800797, 34.853832, 37.568394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986446, 34.997051, 37.517193>,  <39.295864, 35.235752, 37.431858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986446, 34.997051, 37.517193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161203, 0.510835, 0.844429,
		-0.612893, 0.618816, -0.491354,
		-0.773547, -0.596753, 0.213332,
		38.754383, 34.818024, 37.581192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672043, 35.705700, 37.558018>,  <39.295864, 35.235752, 37.431858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672043, 35.705700, 37.558018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594643, 35.357738, 37.739491>,  <38.548203, 35.148964, 37.848373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594643, 35.357738, 37.739491>,  <38.672043, 35.705700, 37.558018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594643, 35.357738, 37.739491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194241, 0.487238, 0.851393,
		-0.961680, 0.076621, -0.263252,
		-0.193501, -0.869901, 0.453684,
		38.536591, 35.096767, 37.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969074, 35.836407, 37.815632>,  <38.672043, 35.705700, 37.558018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969074, 35.836407, 37.815632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157276, 35.544399, 38.013901>,  <38.270199, 35.369194, 38.132862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157276, 35.544399, 38.013901>,  <37.969074, 35.836407, 37.815632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157276, 35.544399, 38.013901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260139, 0.422011, 0.868466,
		-0.843180, -0.537561, 0.008651,
		0.470505, -0.730023, 0.495672,
		38.298428, 35.325394, 38.162601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510113, 35.864105, 38.469582>,  <37.969074, 35.836407, 37.815632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510113, 35.864105, 38.469582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845825, 35.668194, 38.564011>,  <38.047253, 35.550648, 38.620670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845825, 35.668194, 38.564011>,  <37.510113, 35.864105, 38.469582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845825, 35.668194, 38.564011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102676, 0.283611, 0.953427,
		-0.533920, -0.824429, 0.187740,
		0.839277, -0.489777, 0.236075,
		38.097607, 35.521259, 38.634834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410786, 35.388554, 39.073662>,  <37.510113, 35.864105, 38.469582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410786, 35.388554, 39.073662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805187, 35.452286, 39.054001>,  <38.041828, 35.490524, 39.042206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805187, 35.452286, 39.054001>,  <37.410786, 35.388554, 39.073662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805187, 35.452286, 39.054001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001230, 0.301704, 0.953401,
		0.166737, -0.939994, 0.297676,
		0.986001, 0.159333, -0.049149,
		38.100986, 35.500088, 39.039257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743942, 34.943634, 39.598423>,  <37.410786, 35.388554, 39.073662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743942, 34.943634, 39.598423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965805, 35.262852, 39.504208>,  <38.098923, 35.454384, 39.447678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965805, 35.262852, 39.504208>,  <37.743942, 34.943634, 39.598423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965805, 35.262852, 39.504208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051332, 0.249713, 0.966958,
		0.830491, -0.548425, 0.097541,
		0.554662, 0.798044, -0.235536,
		38.132202, 35.502266, 39.433548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111546, 35.091755, 40.194538>,  <37.743942, 34.943634, 39.598423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111546, 35.091755, 40.194538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186237, 35.422668, 39.982601>,  <38.231052, 35.621216, 39.855438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186237, 35.422668, 39.982601>,  <38.111546, 35.091755, 40.194538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186237, 35.422668, 39.982601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075187, 0.525715, 0.847331,
		0.979530, -0.198058, 0.035965,
		0.186728, 0.827282, -0.529846,
		38.242256, 35.670853, 39.823647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780006, 35.396862, 40.272243>,  <38.111546, 35.091755, 40.194538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780006, 35.396862, 40.272243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512608, 35.676811, 40.171608>,  <38.352169, 35.844780, 40.111225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512608, 35.676811, 40.171608>,  <38.780006, 35.396862, 40.272243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512608, 35.676811, 40.171608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003494, 0.341238, 0.939971,
		0.743708, 0.627487, -0.230561,
		-0.668495, 0.699869, -0.251589,
		38.312057, 35.886772, 40.096130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669991, 35.704037, 40.923603>,  <38.780006, 35.396862, 40.272243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669991, 35.704037, 40.923603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406757, 35.910469, 40.704304>,  <38.248817, 36.034328, 40.572723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406757, 35.910469, 40.704304>,  <38.669991, 35.704037, 40.923603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406757, 35.910469, 40.704304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255539, 0.531840, 0.807370,
		0.708253, 0.671419, -0.218117,
		-0.658087, 0.516084, -0.548251,
		38.209332, 36.065296, 40.539829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765831, 36.436420, 41.082806>,  <38.669991, 35.704037, 40.923603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765831, 36.436420, 41.082806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401157, 36.365963, 40.934319>,  <38.182354, 36.323689, 40.845226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401157, 36.365963, 40.934319>,  <38.765831, 36.436420, 41.082806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401157, 36.365963, 40.934319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409622, 0.460380, 0.787566,
		0.032179, 0.870072, -0.491873,
		-0.911688, -0.176139, -0.371215,
		38.127651, 36.313122, 40.822952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478905, 36.915703, 41.406418>,  <38.765831, 36.436420, 41.082806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478905, 36.915703, 41.406418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167522, 36.708260, 41.264965>,  <37.980694, 36.583794, 41.180096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167522, 36.708260, 41.264965>,  <38.478905, 36.915703, 41.406418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167522, 36.708260, 41.264965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544734, 0.278229, 0.791109,
		-0.311886, 0.808476, -0.499093,
		-0.778455, -0.518609, -0.353628,
		37.933987, 36.552677, 41.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876030, 37.340881, 41.495628>,  <38.478905, 36.915703, 41.406418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876030, 37.340881, 41.495628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746281, 36.965290, 41.449856>,  <37.668430, 36.739933, 41.422394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746281, 36.965290, 41.449856>,  <37.876030, 37.340881, 41.495628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746281, 36.965290, 41.449856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717361, 0.165334, 0.676800,
		-0.616584, 0.301625, -0.727219,
		-0.324373, -0.938982, -0.114432,
		37.648968, 36.683594, 41.415527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.148975, 37.362560, 41.453465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192802, 36.979698, 41.560677>,  <37.219101, 36.749981, 41.625004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192802, 36.979698, 41.560677>,  <37.148975, 37.362560, 41.453465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192802, 36.979698, 41.560677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655877, 0.132995, 0.743060,
		-0.746873, -0.257213, -0.613206,
		0.109572, -0.957159, 0.268030,
		37.225674, 36.692551, 41.641087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415016, 37.162434, 41.567242>,  <37.148975, 37.362560, 41.453465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415016, 37.162434, 41.567242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674511, 36.914722, 41.744160>,  <36.830208, 36.766094, 41.850311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674511, 36.914722, 41.744160>,  <36.415016, 37.162434, 41.567242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674511, 36.914722, 41.744160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574788, -0.017827, 0.818108,
		-0.498753, -0.784967, -0.367521,
		0.648740, -0.619281, 0.442299,
		36.869133, 36.728939, 41.876850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968754, 36.747723, 42.022316>,  <36.415016, 37.162434, 41.567242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968754, 36.747723, 42.022316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328190, 36.680092, 42.184280>,  <36.543850, 36.639515, 42.281460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328190, 36.680092, 42.184280>,  <35.968754, 36.747723, 42.022316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328190, 36.680092, 42.184280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412376, -0.010031, 0.910959,
		-0.149961, -0.985552, -0.078738,
		0.898587, -0.169078, 0.404913,
		36.597767, 36.629368, 42.305756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833603, 36.229912, 42.613968>,  <35.968754, 36.747723, 42.022316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833603, 36.229912, 42.613968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170124, 36.427200, 42.702461>,  <36.372036, 36.545574, 42.755558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170124, 36.427200, 42.702461>,  <35.833603, 36.229912, 42.613968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170124, 36.427200, 42.702461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310305, 0.105528, 0.944762,
		0.442627, -0.863481, 0.241829,
		0.841304, 0.493218, 0.221233,
		36.422516, 36.575165, 42.768829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044052, 36.011913, 43.287910>,  <35.833603, 36.229912, 42.613968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044052, 36.011913, 43.287910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245583, 36.353535, 43.236145>,  <36.366501, 36.558510, 43.205086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245583, 36.353535, 43.236145>,  <36.044052, 36.011913, 43.287910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245583, 36.353535, 43.236145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200103, 0.261139, 0.944333,
		0.840309, -0.449883, 0.302468,
		0.503825, 0.854056, -0.129414,
		36.396729, 36.609753, 43.197319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514137, 36.059319, 43.936554>,  <36.044052, 36.011913, 43.287910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514137, 36.059319, 43.936554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467468, 36.418644, 43.767124>,  <36.439468, 36.634239, 43.665466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467468, 36.418644, 43.767124>,  <36.514137, 36.059319, 43.936554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467468, 36.418644, 43.767124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140974, 0.407194, 0.902396,
		0.983115, 0.164997, 0.079131,
		-0.116670, 0.898314, -0.423579,
		36.432468, 36.688137, 43.640049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857891, 36.518429, 44.377949>,  <36.514137, 36.059319, 43.936554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857891, 36.518429, 44.377949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571369, 36.712353, 44.177204>,  <36.399456, 36.828705, 44.056759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571369, 36.712353, 44.177204>,  <36.857891, 36.518429, 44.377949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571369, 36.712353, 44.177204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217498, 0.528266, 0.820750,
		0.663022, 0.697063, -0.272957,
		-0.716308, 0.484807, -0.501861,
		36.356476, 36.857796, 44.026646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948524, 37.207268, 44.617176>,  <36.857891, 36.518429, 44.377949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948524, 37.207268, 44.617176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586517, 37.174248, 44.450264>,  <36.369312, 37.154434, 44.350117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586517, 37.174248, 44.450264>,  <36.948524, 37.207268, 44.617176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586517, 37.174248, 44.450264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393714, 0.533911, 0.748284,
		0.161021, 0.841502, -0.515701,
		-0.905020, -0.082549, -0.417281,
		36.315010, 37.149483, 44.325081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717705, 37.839977, 44.689789>,  <36.948524, 37.207268, 44.617176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717705, 37.839977, 44.689789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384533, 37.637299, 44.600807>,  <36.184628, 37.515694, 44.547421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384533, 37.637299, 44.600807>,  <36.717705, 37.839977, 44.689789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384533, 37.637299, 44.600807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509254, 0.544574, 0.666408,
		-0.216525, 0.668357, -0.711630,
		-0.832933, -0.506694, -0.222450,
		36.134651, 37.485291, 44.534073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246918, 38.344986, 44.619156>,  <36.717705, 37.839977, 44.689789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246918, 38.344986, 44.619156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073689, 38.000957, 44.727024>,  <35.969753, 37.794540, 44.791744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073689, 38.000957, 44.727024>,  <36.246918, 38.344986, 44.619156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073689, 38.000957, 44.727024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494762, 0.476906, 0.726478,
		-0.753432, 0.181195, -0.632067,
		-0.433071, -0.860075, 0.269668,
		35.943768, 37.742935, 44.807926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688980, 38.642731, 44.821018>,  <36.246918, 38.344986, 44.619156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688980, 38.642731, 44.821018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635529, 38.272789, 44.963448>,  <35.603458, 38.050823, 45.048904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635529, 38.272789, 44.963448>,  <35.688980, 38.642731, 44.821018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635529, 38.272789, 44.963448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454785, 0.376455, 0.807126,
		-0.880519, -0.054079, -0.470916,
		-0.133630, -0.924855, 0.356070,
		35.595440, 37.995331, 45.070271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090965, 38.697754, 45.181065>,  <35.688980, 38.642731, 44.821018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090965, 38.697754, 45.181065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218956, 38.348209, 45.327477>,  <35.295750, 38.138481, 45.415325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218956, 38.348209, 45.327477>,  <35.090965, 38.697754, 45.181065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218956, 38.348209, 45.327477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520207, 0.160847, 0.838757,
		-0.791835, -0.458790, -0.403124,
		0.319972, -0.873865, 0.366030,
		35.314949, 38.086048, 45.437286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599228, 38.320850, 45.345745>,  <35.090965, 38.697754, 45.181065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599228, 38.320850, 45.345745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890053, 38.184837, 45.584328>,  <35.064548, 38.103230, 45.727478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890053, 38.184837, 45.584328>,  <34.599228, 38.320850, 45.345745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890053, 38.184837, 45.584328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571975, 0.180549, 0.800155,
		-0.379767, -0.922920, -0.063219,
		0.727064, -0.340031, 0.596453,
		35.108173, 38.082829, 45.763264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301090, 37.738831, 45.673424>,  <34.599228, 38.320850, 45.345745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301090, 37.738831, 45.673424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611050, 37.874268, 45.886925>,  <34.797024, 37.955528, 46.015026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611050, 37.874268, 45.886925>,  <34.301090, 37.738831, 45.673424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611050, 37.874268, 45.886925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611011, 0.185017, 0.769698,
		0.161856, -0.922566, 0.350249,
		0.774899, 0.338586, 0.533752,
		34.843517, 37.975845, 46.047050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047096, 37.687664, 46.342743>,  <34.301090, 37.738831, 45.673424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047096, 37.687664, 46.342743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373180, 37.903881, 46.425926>,  <34.568832, 38.033611, 46.475838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373180, 37.903881, 46.425926>,  <34.047096, 37.687664, 46.342743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373180, 37.903881, 46.425926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427421, 0.319202, 0.845826,
		0.390828, -0.778408, 0.491257,
		0.815208, 0.540546, 0.207955,
		34.617744, 38.066044, 46.488312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208580, 37.665752, 47.069771>,  <34.047096, 37.687664, 46.342743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208580, 37.665752, 47.069771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416428, 37.994614, 46.976768>,  <34.541138, 38.191929, 46.920967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416428, 37.994614, 46.976768>,  <34.208580, 37.665752, 47.069771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416428, 37.994614, 46.976768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157112, 0.359433, 0.919850,
		0.839826, -0.441446, 0.315940,
		0.519623, 0.822152, -0.232504,
		34.572315, 38.241261, 46.907017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633556, 37.817242, 47.715057>,  <34.208580, 37.665752, 47.069771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633556, 37.817242, 47.715057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635979, 38.152920, 47.497540>,  <34.637432, 38.354328, 47.367027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635979, 38.152920, 47.497540>,  <34.633556, 37.817242, 47.715057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635979, 38.152920, 47.497540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185404, 0.533436, 0.825271,
		0.982644, -0.105820, -0.152359,
		0.006056, 0.839195, -0.543797,
		34.637794, 38.404678, 47.334400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022972, 38.202839, 48.147209>,  <34.633556, 37.817242, 47.715057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022972, 38.202839, 48.147209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836842, 38.457764, 47.901508>,  <34.725163, 38.610718, 47.754089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836842, 38.457764, 47.901508>,  <35.022972, 38.202839, 48.147209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836842, 38.457764, 47.901508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007268, 0.696686, 0.717340,
		0.885108, 0.329334, -0.328819,
		-0.465328, 0.637313, -0.614249,
		34.697243, 38.648956, 47.717236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225304, 38.871418, 48.255295>,  <35.022972, 38.202839, 48.147209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225304, 38.871418, 48.255295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867142, 38.954037, 48.097511>,  <34.652245, 39.003609, 48.002842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867142, 38.954037, 48.097511>,  <35.225304, 38.871418, 48.255295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867142, 38.954037, 48.097511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121567, 0.738845, 0.662820,
		0.428344, 0.641443, -0.636453,
		-0.895401, 0.206543, -0.394458,
		34.598522, 39.015999, 47.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217442, 39.574001, 48.226780>,  <35.225304, 38.871418, 48.255295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217442, 39.574001, 48.226780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831261, 39.471943, 48.247955>,  <34.599552, 39.410709, 48.260658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831261, 39.471943, 48.247955>,  <35.217442, 39.574001, 48.226780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831261, 39.471943, 48.247955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066374, 0.437238, 0.896893,
		-0.251980, 0.862395, -0.439067,
		-0.965454, -0.255142, 0.052935,
		34.541626, 39.395401, 48.263836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739750, 40.262630, 48.306686>,  <35.217442, 39.574001, 48.226780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739750, 40.262630, 48.306686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494114, 39.962627, 48.404980>,  <34.346733, 39.782627, 48.463955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494114, 39.962627, 48.404980>,  <34.739750, 40.262630, 48.306686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494114, 39.962627, 48.404980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138505, 0.408933, 0.901992,
		-0.776987, 0.519870, -0.355002,
		-0.614091, -0.750006, 0.245731,
		34.309887, 39.737625, 48.478699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975739, 40.475159, 48.533772>,  <34.739750, 40.262630, 48.306686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975739, 40.475159, 48.533772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.104961, 40.141872, 48.713276>,  <34.182495, 39.941902, 48.820980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.104961, 40.141872, 48.713276>,  <33.975739, 40.475159, 48.533772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104961, 40.141872, 48.713276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110610, 0.437693, 0.892295,
		-0.939893, -0.337900, 0.049238,
		0.323058, -0.833216, 0.448760,
		34.201878, 39.891907, 48.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343990, 40.448997, 48.947231>,  <33.975739, 40.475159, 48.533772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343990, 40.448997, 48.947231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192074, 40.278419, 49.275597>,  <33.100925, 40.176071, 49.472618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.192074, 40.278419, 49.275597>,  <33.343990, 40.448997, 48.947231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192074, 40.278419, 49.275597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757486, -0.652753, 0.011354,
		0.531015, 0.626145, 0.570934,
		-0.379788, -0.426445, 0.820917,
		33.078136, 40.150486, 49.521873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747303, 40.824093, 48.781792>,  <33.343990, 40.448997, 48.947231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747303, 40.824093, 48.781792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361187, 40.813374, 48.885708>,  <32.129517, 40.806942, 48.948059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361187, 40.813374, 48.885708>,  <32.747303, 40.824093, 48.781792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361187, 40.813374, 48.885708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110742, -0.858868, -0.500083,
		0.236531, -0.511496, 0.826090,
		-0.965293, -0.026802, 0.259793,
		32.071598, 40.805332, 48.963646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574860, 40.104893, 48.897289>,  <32.747303, 40.824093, 48.781792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574860, 40.104893, 48.897289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249134, 40.314331, 48.797100>,  <32.053699, 40.439995, 48.736988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249134, 40.314331, 48.797100>,  <32.574860, 40.104893, 48.897289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249134, 40.314331, 48.797100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312036, -0.758792, -0.571724,
		-0.489406, -0.387410, 0.781278,
		-0.814319, 0.523593, -0.250471,
		32.004837, 40.471409, 48.721958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121635, 39.608410, 48.764854>,  <32.574860, 40.104893, 48.897289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121635, 39.608410, 48.764854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953733, 39.912903, 48.567135>,  <31.852993, 40.095596, 48.448502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953733, 39.912903, 48.567135>,  <32.121635, 39.608410, 48.764854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953733, 39.912903, 48.567135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310179, -0.632124, -0.710076,
		-0.852991, -0.144736, 0.501455,
		-0.419755, 0.761229, -0.494303,
		31.827806, 40.141273, 48.418842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537657, 39.351292, 48.500362>,  <32.121635, 39.608410, 48.764854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537657, 39.351292, 48.500362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.618698, 39.674557, 48.279160>,  <31.667324, 39.868515, 48.146439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.618698, 39.674557, 48.279160>,  <31.537657, 39.351292, 48.500362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618698, 39.674557, 48.279160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267303, -0.497636, -0.825171,
		-0.942072, 0.315006, 0.115202,
		0.202605, 0.808165, -0.553011,
		31.679480, 39.917007, 48.113255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049383, 39.408157, 47.942688>,  <31.537657, 39.351292, 48.500362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049383, 39.408157, 47.942688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365423, 39.596886, 47.786163>,  <31.555048, 39.710121, 47.692249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365423, 39.596886, 47.786163>,  <31.049383, 39.408157, 47.942688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365423, 39.596886, 47.786163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047691, -0.589133, -0.806628,
		-0.611119, 0.655979, -0.442973,
		0.790101, 0.471820, -0.391314,
		31.602453, 39.738430, 47.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921564, 39.432140, 47.207478>,  <31.049383, 39.408157, 47.942688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921564, 39.432140, 47.207478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314322, 39.505711, 47.225624>,  <31.549976, 39.549854, 47.236511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314322, 39.505711, 47.225624>,  <30.921564, 39.432140, 47.207478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314322, 39.505711, 47.225624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136870, -0.523211, -0.841140,
		-0.130975, 0.832118, -0.538911,
		0.981892, 0.183929, 0.045364,
		31.608889, 39.560890, 47.239235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167599, 39.705849, 46.473370>,  <30.921564, 39.432140, 47.207478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167599, 39.705849, 46.473370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472008, 39.538757, 46.671902>,  <31.654654, 39.438503, 46.791023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472008, 39.538757, 46.671902>,  <31.167599, 39.705849, 46.473370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472008, 39.538757, 46.671902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183106, -0.595666, -0.782083,
		0.622350, 0.686064, -0.376826,
		0.761021, -0.417730, 0.496335,
		31.700314, 39.413437, 46.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652115, 39.750385, 45.882610>,  <31.167599, 39.705849, 46.473370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652115, 39.750385, 45.882610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805998, 39.499836, 46.153801>,  <31.898327, 39.349506, 46.316517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805998, 39.499836, 46.153801>,  <31.652115, 39.750385, 45.882610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805998, 39.499836, 46.153801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494871, -0.480058, -0.724325,
		0.779169, 0.614164, 0.125295,
		0.384705, -0.626377, 0.677978,
		31.921410, 39.311924, 46.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268055, 39.659489, 45.608440>,  <31.652115, 39.750385, 45.882610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268055, 39.659489, 45.608440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226391, 39.362080, 45.872662>,  <32.201393, 39.183636, 46.031193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226391, 39.362080, 45.872662>,  <32.268055, 39.659489, 45.608440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226391, 39.362080, 45.872662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458859, -0.625175, -0.631352,
		0.882383, 0.237340, 0.406288,
		-0.104156, -0.743523, 0.660549,
		32.195145, 39.139023, 46.070827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896591, 39.344440, 45.601631>,  <32.268055, 39.659489, 45.608440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896591, 39.344440, 45.601631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639858, 39.074017, 45.746399>,  <32.485817, 38.911762, 45.833260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639858, 39.074017, 45.746399>,  <32.896591, 39.344440, 45.601631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639858, 39.074017, 45.746399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462688, -0.717789, -0.520287,
		0.611530, -0.166482, 0.773508,
		-0.641834, -0.676064, 0.361920,
		32.447308, 38.871197, 45.854977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367340, 38.898994, 45.831898>,  <32.896591, 39.344440, 45.601631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367340, 38.898994, 45.831898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008018, 38.728371, 45.789757>,  <32.792427, 38.625996, 45.764473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008018, 38.728371, 45.789757>,  <33.367340, 38.898994, 45.831898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008018, 38.728371, 45.789757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399734, -0.693886, -0.598945,
		0.182385, -0.580146, 0.793830,
		-0.898303, -0.426559, -0.105350,
		32.738529, 38.600403, 45.758152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520691, 38.183552, 45.798534>,  <33.367340, 38.898994, 45.831898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520691, 38.183552, 45.798534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158165, 38.176067, 45.629658>,  <32.940651, 38.171577, 45.528332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158165, 38.176067, 45.629658>,  <33.520691, 38.183552, 45.798534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158165, 38.176067, 45.629658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369984, -0.517910, -0.771286,
		-0.204227, -0.855230, 0.476311,
		-0.906313, -0.018710, -0.422192,
		32.886272, 38.170456, 45.502998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456600, 37.494362, 45.633633>,  <33.520691, 38.183552, 45.798534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456600, 37.494362, 45.633633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.185707, 37.702072, 45.425129>,  <33.023170, 37.826698, 45.300026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.185707, 37.702072, 45.425129>,  <33.456600, 37.494362, 45.633633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185707, 37.702072, 45.425129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139277, -0.605172, -0.783817,
		-0.722468, -0.603425, 0.337518,
		-0.677231, 0.519274, -0.521260,
		32.982536, 37.857853, 45.268749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080288, 37.038239, 45.195354>,  <33.456600, 37.494362, 45.633633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080288, 37.038239, 45.195354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051178, 37.394569, 45.015965>,  <33.033710, 37.608368, 44.908329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051178, 37.394569, 45.015965>,  <33.080288, 37.038239, 45.195354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051178, 37.394569, 45.015965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204111, -0.426849, -0.880987,
		-0.976239, -0.155657, -0.150762,
		-0.072779, 0.890826, -0.448478,
		33.029343, 37.661816, 44.881420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759064, 36.972145, 44.607380>,  <33.080288, 37.038239, 45.195354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759064, 36.972145, 44.607380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944897, 37.318806, 44.534637>,  <33.056396, 37.526802, 44.490993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944897, 37.318806, 44.534637>,  <32.759064, 36.972145, 44.607380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944897, 37.318806, 44.534637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301541, -0.347915, -0.887709,
		-0.832607, 0.357580, -0.422968,
		0.464584, 0.866656, -0.181852,
		33.084270, 37.578804, 44.480083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558708, 37.157326, 43.919273>,  <32.759064, 36.972145, 44.607380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558708, 37.157326, 43.919273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882278, 37.379868, 43.995293>,  <33.076420, 37.513393, 44.040905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882278, 37.379868, 43.995293>,  <32.558708, 37.157326, 43.919273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882278, 37.379868, 43.995293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407645, -0.297849, -0.863198,
		-0.423636, 0.775733, -0.467730,
		0.808924, 0.556350, 0.190044,
		33.124954, 37.546772, 44.052307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708023, 37.576923, 43.330925>,  <32.558708, 37.157326, 43.919273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708023, 37.576923, 43.330925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057590, 37.573685, 43.525322>,  <33.267330, 37.571739, 43.641960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057590, 37.573685, 43.525322>,  <32.708023, 37.576923, 43.330925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057590, 37.573685, 43.525322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484630, -0.062227, -0.872503,
		0.037311, 0.998029, -0.050456,
		0.873923, -0.008101, 0.485997,
		33.319767, 37.571255, 43.671120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128368, 38.103153, 43.021484>,  <32.708023, 37.576923, 43.330925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128368, 38.103153, 43.021484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364479, 37.817848, 43.172657>,  <33.506145, 37.646667, 43.263359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.364479, 37.817848, 43.172657>,  <33.128368, 38.103153, 43.021484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364479, 37.817848, 43.172657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617377, 0.097302, -0.780627,
		0.520014, 0.694115, 0.497785,
		0.590280, -0.713258, 0.377932,
		33.541565, 37.603870, 43.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675190, 38.356819, 42.713276>,  <33.128368, 38.103153, 43.021484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675190, 38.356819, 42.713276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.710480, 37.982124, 42.848770>,  <33.731655, 37.757309, 42.930065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.710480, 37.982124, 42.848770>,  <33.675190, 38.356819, 42.713276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710480, 37.982124, 42.848770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409875, -0.275797, -0.869447,
		0.907864, 0.215549, 0.359612,
		0.088229, -0.936736, 0.338734,
		33.736950, 37.701103, 42.950390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395817, 38.194405, 42.614502>,  <33.675190, 38.356819, 42.713276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395817, 38.194405, 42.614502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209335, 37.842461, 42.651398>,  <34.097446, 37.631294, 42.673534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209335, 37.842461, 42.651398>,  <34.395817, 38.194405, 42.614502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209335, 37.842461, 42.651398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303701, -0.257100, -0.917423,
		0.830916, -0.399692, 0.387073,
		-0.466203, -0.879856, 0.092242,
		34.069473, 37.578503, 42.679070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822376, 37.621632, 42.370235>,  <34.395817, 38.194405, 42.614502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822376, 37.621632, 42.370235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449539, 37.482147, 42.331039>,  <34.225838, 37.398457, 42.307522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449539, 37.482147, 42.331039>,  <34.822376, 37.621632, 42.370235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449539, 37.482147, 42.331039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253682, -0.435351, -0.863780,
		0.258546, -0.829983, 0.494249,
		-0.932094, -0.348709, -0.097994,
		34.169910, 37.377533, 42.301640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.987759, 40.222214, 35.466770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645100, 40.027760, 35.397686>,  <38.439503, 39.911087, 35.356236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645100, 40.027760, 35.397686>,  <38.987759, 40.222214, 35.466770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645100, 40.027760, 35.397686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444198, -0.865285, 0.232314,
		-0.262380, 0.122294, 0.957184,
		-0.856647, -0.486134, -0.172711,
		38.388107, 39.881920, 35.345871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911293, 39.743885, 36.051525>,  <38.987759, 40.222214, 35.466770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911293, 39.743885, 36.051525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720757, 39.614262, 35.724579>,  <38.606434, 39.536488, 35.528412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720757, 39.614262, 35.724579>,  <38.911293, 39.743885, 36.051525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720757, 39.614262, 35.724579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353218, -0.921821, 0.159630,
		-0.805193, -0.212669, 0.553567,
		-0.476342, -0.324063, -0.817363,
		38.577854, 39.517044, 35.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496613, 39.177689, 36.282505>,  <38.911293, 39.743885, 36.051525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496613, 39.177689, 36.282505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567207, 39.124866, 35.892345>,  <38.609566, 39.093174, 35.658249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567207, 39.124866, 35.892345>,  <38.496613, 39.177689, 36.282505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567207, 39.124866, 35.892345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266383, -0.947571, 0.176490,
		-0.947571, -0.290980, -0.132059,
		-0.176490, 0.132059, 0.975403,
		38.620155, 39.085247, 35.599724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259453, 38.569172, 36.229626>,  <38.496613, 39.177689, 36.282505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259453, 38.569172, 36.229626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455151, 38.609482, 35.883102>,  <38.572571, 38.633667, 35.675190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455151, 38.609482, 35.883102>,  <38.259453, 38.569172, 36.229626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455151, 38.609482, 35.883102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434979, -0.889138, 0.142218,
		-0.755932, -0.446404, -0.478842,
		0.489244, 0.100779, -0.866305,
		38.601925, 38.639717, 35.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106659, 37.993305, 35.690739>,  <38.259453, 38.569172, 36.229626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106659, 37.993305, 35.690739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465107, 38.145649, 35.599594>,  <38.680176, 38.237053, 35.544907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465107, 38.145649, 35.599594>,  <38.106659, 37.993305, 35.690739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465107, 38.145649, 35.599594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405404, -0.911373, 0.071048,
		-0.180609, -0.156043, -0.971098,
		0.896119, 0.380855, -0.227862,
		38.733944, 38.259907, 35.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348770, 37.582985, 35.217251>,  <38.106659, 37.993305, 35.690739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348770, 37.582985, 35.217251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672859, 37.750290, 35.381489>,  <38.867313, 37.850674, 35.480030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672859, 37.750290, 35.381489>,  <38.348770, 37.582985, 35.217251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672859, 37.750290, 35.381489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432265, -0.899520, 0.063337,
		0.395831, 0.126168, -0.909615,
		0.810226, 0.418265, 0.410596,
		38.915928, 37.875771, 35.504669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845947, 37.350082, 34.814812>,  <38.348770, 37.582985, 35.217251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845947, 37.350082, 34.814812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048405, 37.492138, 35.129185>,  <39.169880, 37.577370, 35.317810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048405, 37.492138, 35.129185>,  <38.845947, 37.350082, 34.814812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048405, 37.492138, 35.129185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575493, -0.817806, -0.001081,
		0.642359, 0.452848, -0.618307,
		0.506145, 0.355137, 0.785936,
		39.200249, 37.598679, 35.364967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607342, 37.400951, 34.623882>,  <38.845947, 37.350082, 34.814812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607342, 37.400951, 34.623882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561333, 37.374313, 35.020332>,  <39.533726, 37.358330, 35.258202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561333, 37.374313, 35.020332>,  <39.607342, 37.400951, 34.623882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561333, 37.374313, 35.020332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538598, -0.842542, 0.005896,
		0.834675, 0.534498, 0.132776,
		-0.115021, -0.066592, 0.991129,
		39.526825, 37.354336, 35.317673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227051, 37.331169, 34.900463>,  <39.607342, 37.400951, 34.623882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227051, 37.331169, 34.900463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008919, 37.223446, 35.217976>,  <39.878040, 37.158813, 35.408482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008919, 37.223446, 35.217976>,  <40.227051, 37.331169, 34.900463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008919, 37.223446, 35.217976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591954, -0.794204, 0.137226,
		0.593466, 0.544714, 0.592524,
		-0.545334, -0.269308, 0.793778,
		39.845318, 37.142654, 35.456108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701706, 37.311829, 35.425083>,  <40.227051, 37.331169, 34.900463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701706, 37.311829, 35.425083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382687, 37.077862, 35.484123>,  <40.191273, 36.937481, 35.519547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382687, 37.077862, 35.484123>,  <40.701706, 37.311829, 35.425083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382687, 37.077862, 35.484123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602699, -0.783070, 0.153479,
		0.025812, 0.211367, 0.977066,
		-0.797551, -0.584915, 0.147603,
		40.143421, 36.902386, 35.528404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873337, 36.932446, 35.974400>,  <40.701706, 37.311829, 35.425083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873337, 36.932446, 35.974400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576496, 36.733749, 35.794384>,  <40.398392, 36.614532, 35.686375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576496, 36.733749, 35.794384>,  <40.873337, 36.932446, 35.974400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576496, 36.733749, 35.794384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524747, -0.848290, 0.071019,
		-0.417040, -0.183453, 0.890181,
		-0.742104, -0.496738, -0.450037,
		40.353867, 36.584728, 35.659374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858490, 36.402805, 36.444065>,  <40.873337, 36.932446, 35.974400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858490, 36.402805, 36.444065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661366, 36.308163, 36.109127>,  <40.543091, 36.251377, 35.908165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661366, 36.308163, 36.109127>,  <40.858490, 36.402805, 36.444065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661366, 36.308163, 36.109127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494496, -0.867974, -0.045769,
		-0.715967, -0.436621, 0.544751,
		-0.492813, -0.236608, -0.837348,
		40.513523, 36.237179, 35.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579899, 35.873219, 36.672623>,  <40.858490, 36.402805, 36.444065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579899, 35.873219, 36.672623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583118, 35.837196, 36.274261>,  <40.585052, 35.815582, 36.035244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583118, 35.837196, 36.274261>,  <40.579899, 35.873219, 36.672623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583118, 35.837196, 36.274261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618798, -0.781893, 0.075703,
		-0.785509, -0.616874, 0.049428,
		0.008052, -0.090051, -0.995905,
		40.585533, 35.810181, 35.975491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779507, 35.205704, 36.518291>,  <40.579899, 35.873219, 36.672623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779507, 35.205704, 36.518291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839741, 35.340618, 36.146580>,  <40.875881, 35.421566, 35.923553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.839741, 35.340618, 36.146580>,  <40.779507, 35.205704, 36.518291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839741, 35.340618, 36.146580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618146, -0.765702, -0.177749,
		-0.771505, -0.547664, -0.323797,
		0.150585, 0.337288, -0.929280,
		40.884918, 35.441803, 35.867794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598637, 34.690720, 36.109051>,  <40.779507, 35.205704, 36.518291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598637, 34.690720, 36.109051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853947, 34.891846, 35.875889>,  <41.007133, 35.012524, 35.735992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.853947, 34.891846, 35.875889>,  <40.598637, 34.690720, 36.109051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853947, 34.891846, 35.875889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618023, -0.786159, -0.001417,
		-0.458967, -0.359342, -0.812541,
		0.638277, 0.502819, -0.582902,
		41.045429, 35.042690, 35.701019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681137, 34.219379, 35.432804>,  <40.598637, 34.690720, 36.109051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681137, 34.219379, 35.432804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989296, 34.473728, 35.451378>,  <41.174191, 34.626335, 35.462521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989296, 34.473728, 35.451378>,  <40.681137, 34.219379, 35.432804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989296, 34.473728, 35.451378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622731, -0.734867, -0.268657,
		-0.136710, 0.235887, -0.962116,
		0.770400, 0.635867, 0.046431,
		41.220417, 34.664490, 35.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093220, 34.203239, 34.887589>,  <40.681137, 34.219379, 35.432804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093220, 34.203239, 34.887589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349792, 34.359497, 35.151699>,  <41.503735, 34.453251, 35.310165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349792, 34.359497, 35.151699>,  <41.093220, 34.203239, 34.887589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349792, 34.359497, 35.151699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661530, -0.717486, -0.218155,
		0.388515, 0.576722, -0.718643,
		0.641431, 0.390648, 0.660273,
		41.542221, 34.476692, 35.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621540, 34.198074, 34.547047>,  <41.093220, 34.203239, 34.887589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621540, 34.198074, 34.547047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.757767, 34.219826, 34.922504>,  <41.839504, 34.232876, 35.147778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.757767, 34.219826, 34.922504>,  <41.621540, 34.198074, 34.547047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757767, 34.219826, 34.922504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606385, -0.775657, -0.175080,
		0.718546, 0.628807, -0.297140,
		0.340571, 0.054378, 0.938645,
		41.859940, 34.236137, 35.204098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341389, 34.156578, 34.423931>,  <41.621540, 34.198074, 34.547047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341389, 34.156578, 34.423931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255802, 34.051872, 34.800377>,  <42.204449, 33.989048, 35.026245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255802, 34.051872, 34.800377>,  <42.341389, 34.156578, 34.423931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255802, 34.051872, 34.800377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700683, -0.712414, -0.038844,
		0.680632, 0.651112, 0.335846,
		-0.213970, -0.261761, 0.941115,
		42.191612, 33.973343, 35.082710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908878, 34.115211, 34.689312>,  <42.341389, 34.156578, 34.423931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908878, 34.115211, 34.689312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722160, 33.888775, 34.961090>,  <42.610130, 33.752911, 35.124157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722160, 33.888775, 34.961090>,  <42.908878, 34.115211, 34.689312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722160, 33.888775, 34.961090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672724, -0.726000, -0.142711,
		0.574063, 0.390461, 0.719716,
		-0.466791, -0.566096, 0.679443,
		42.582123, 33.718945, 35.164925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488976, 33.893902, 35.139511>,  <42.908878, 34.115211, 34.689312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488976, 33.893902, 35.139511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189735, 33.637409, 35.207821>,  <43.010189, 33.483513, 35.248806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189735, 33.637409, 35.207821>,  <43.488976, 33.893902, 35.139511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189735, 33.637409, 35.207821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627852, -0.767290, -0.130647,
		0.214806, 0.009482, 0.976611,
		-0.748105, -0.641230, 0.170772,
		42.965305, 33.445042, 35.259052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188683, 33.966526, 34.824921>,  <43.488976, 33.893902, 35.139511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188683, 33.966526, 34.824921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544155, 34.112823, 34.935535>,  <44.757439, 34.200603, 35.001904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544155, 34.112823, 34.935535>,  <44.188683, 33.966526, 34.824921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544155, 34.112823, 34.935535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200702, 0.852544, -0.482584,
		-0.412266, 0.373361, 0.831046,
		0.888682, 0.365745, 0.276541,
		44.810760, 34.222546, 35.018497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265278, 34.567146, 35.317440>,  <44.188683, 33.966526, 34.824921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265278, 34.567146, 35.317440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571728, 34.551731, 35.060825>,  <44.755596, 34.542484, 34.906857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571728, 34.551731, 35.060825>,  <44.265278, 34.567146, 35.317440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571728, 34.551731, 35.060825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167701, 0.951634, -0.257429,
		0.620428, 0.304809, 0.722607,
		0.766124, -0.038534, -0.641537,
		44.801563, 34.540173, 34.868362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598587, 35.172962, 35.504383>,  <44.265278, 34.567146, 35.317440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598587, 35.172962, 35.504383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737930, 35.088509, 35.139072>,  <44.821537, 35.037834, 34.919888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737930, 35.088509, 35.139072>,  <44.598587, 35.172962, 35.504383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737930, 35.088509, 35.139072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252934, 0.916989, -0.308474,
		0.902592, 0.338457, 0.266035,
		0.348356, -0.211136, -0.913274,
		44.842438, 35.025169, 34.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139061, 35.733463, 35.235126>,  <44.598587, 35.172962, 35.504383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139061, 35.733463, 35.235126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980690, 35.560078, 34.911312>,  <44.885666, 35.456047, 34.717022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980690, 35.560078, 34.911312>,  <45.139061, 35.733463, 35.235126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980690, 35.560078, 34.911312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198596, 0.901135, -0.385376,
		0.896548, 0.008188, -0.442872,
		-0.395932, -0.433461, -0.809537,
		44.861912, 35.430038, 34.668449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269791, 36.306290, 34.782372>,  <45.139061, 35.733463, 35.235126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269791, 36.306290, 34.782372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997402, 36.053638, 34.634140>,  <44.833969, 35.902046, 34.545200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997402, 36.053638, 34.634140>,  <45.269791, 36.306290, 34.782372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997402, 36.053638, 34.634140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536407, 0.774721, -0.334776,
		0.498548, -0.029191, -0.866370,
		-0.680968, -0.631629, -0.370578,
		44.793114, 35.864151, 34.522968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142704, 36.482723, 34.151306>,  <45.269791, 36.306290, 34.782372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142704, 36.482723, 34.151306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800472, 36.282379, 34.203648>,  <44.595135, 36.162174, 34.235054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800472, 36.282379, 34.203648>,  <45.142704, 36.482723, 34.151306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800472, 36.282379, 34.203648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500082, 0.734327, -0.459001,
		0.133804, -0.458150, -0.878746,
		-0.855579, -0.500862, 0.130857,
		44.543800, 36.132122, 34.242905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853115, 36.593616, 33.545250>,  <45.142704, 36.482723, 34.151306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853115, 36.593616, 33.545250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556702, 36.483501, 33.790226>,  <44.378853, 36.417431, 33.937210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556702, 36.483501, 33.790226>,  <44.853115, 36.593616, 33.545250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556702, 36.483501, 33.790226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622862, 0.622515, -0.473834,
		-0.250812, -0.732592, -0.632773,
		-0.741038, -0.275287, 0.612437,
		44.334389, 36.400917, 33.973957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330570, 36.567890, 33.166374>,  <44.853115, 36.593616, 33.545250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330570, 36.567890, 33.166374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173473, 36.584030, 33.533878>,  <44.079216, 36.593716, 33.754383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173473, 36.584030, 33.533878>,  <44.330570, 36.567890, 33.166374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173473, 36.584030, 33.533878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673768, 0.667340, -0.317323,
		-0.625933, -0.743659, -0.234901,
		-0.392739, 0.040354, 0.918764,
		44.055653, 36.596138, 33.809509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623390, 36.543995, 33.073357>,  <44.330570, 36.567890, 33.166374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623390, 36.543995, 33.073357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.660927, 36.706509, 33.436924>,  <43.683449, 36.804016, 33.655064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.660927, 36.706509, 33.436924>,  <43.623390, 36.543995, 33.073357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660927, 36.706509, 33.436924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735827, 0.643269, -0.211574,
		-0.670636, -0.648950, 0.359320,
		0.093838, 0.406287, 0.908914,
		43.689079, 36.828396, 33.709599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926723, 36.606140, 33.335705>,  <43.623390, 36.543995, 33.073357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926723, 36.606140, 33.335705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160290, 36.865971, 33.530476>,  <43.300430, 37.021870, 33.647339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160290, 36.865971, 33.530476>,  <42.926723, 36.606140, 33.335705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160290, 36.865971, 33.530476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757059, 0.652257, 0.037727,
		-0.293093, -0.390659, 0.872629,
		0.583917, 0.649574, 0.486924,
		43.335464, 37.060844, 33.676552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459419, 36.922131, 33.779522>,  <42.926723, 36.606140, 33.335705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459419, 36.922131, 33.779522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745831, 37.197495, 33.825817>,  <42.917675, 37.362713, 33.853596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745831, 37.197495, 33.825817>,  <42.459419, 36.922131, 33.779522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745831, 37.197495, 33.825817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693941, 0.719950, 0.010852,
		-0.075854, -0.088084, 0.993221,
		0.716025, 0.688413, 0.115737,
		42.960640, 37.404018, 33.860538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253895, 37.335606, 34.355919>,  <42.459419, 36.922131, 33.779522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253895, 37.335606, 34.355919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.484196, 37.558453, 34.116543>,  <42.622375, 37.692162, 33.972916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.484196, 37.558453, 34.116543>,  <42.253895, 37.335606, 34.355919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484196, 37.558453, 34.116543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680836, 0.731960, 0.026400,
		0.452741, 0.392239, 0.800733,
		0.575750, 0.557120, -0.598439,
		42.656921, 37.725590, 33.937012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264240, 37.993580, 34.707485>,  <42.253895, 37.335606, 34.355919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264240, 37.993580, 34.707485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349613, 38.053360, 34.321301>,  <42.400837, 38.089230, 34.089592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349613, 38.053360, 34.321301>,  <42.264240, 37.993580, 34.707485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349613, 38.053360, 34.321301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632156, 0.774587, -0.019842,
		0.744867, 0.614555, 0.259799,
		0.213431, 0.149454, -0.965459,
		42.413643, 38.098198, 34.031662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293835, 38.696068, 34.684097>,  <42.264240, 37.993580, 34.707485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293835, 38.696068, 34.684097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240257, 38.596931, 34.300301>,  <42.208111, 38.537449, 34.070023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240257, 38.596931, 34.300301>,  <42.293835, 38.696068, 34.684097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240257, 38.596931, 34.300301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674634, 0.732026, -0.094908,
		0.725898, 0.634597, -0.265252,
		-0.133943, -0.247841, -0.959497,
		42.200073, 38.522579, 34.012451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466507, 39.249439, 34.300331>,  <42.293835, 38.696068, 34.684097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466507, 39.249439, 34.300331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230137, 39.035397, 34.058846>,  <42.088314, 38.906971, 33.913952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230137, 39.035397, 34.058846>,  <42.466507, 39.249439, 34.300331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230137, 39.035397, 34.058846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551200, 0.814240, -0.182185,
		0.589058, 0.225112, -0.776103,
		-0.590922, -0.535105, -0.603716,
		42.052860, 38.874866, 33.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083336, 39.664928, 33.835243>,  <42.466507, 39.249439, 34.300331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083336, 39.664928, 33.835243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853218, 39.347595, 33.755585>,  <41.715145, 39.157196, 33.707790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853218, 39.347595, 33.755585>,  <42.083336, 39.664928, 33.835243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853218, 39.347595, 33.755585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730978, 0.607910, -0.310026,
		0.367017, -0.032784, -0.929636,
		-0.575299, -0.793329, -0.199149,
		41.680630, 39.109596, 33.695839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859375, 39.709049, 33.107117>,  <42.083336, 39.664928, 33.835243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859375, 39.709049, 33.107117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586803, 39.496593, 33.308529>,  <41.423260, 39.369122, 33.429375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586803, 39.496593, 33.308529>,  <41.859375, 39.709049, 33.107117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586803, 39.496593, 33.308529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726349, 0.575211, -0.376230,
		-0.089807, -0.622114, -0.777759,
		-0.681434, -0.531137, 0.503529,
		41.382374, 39.337254, 33.459587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212643, 39.680573, 32.628654>,  <41.859375, 39.709049, 33.107117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212643, 39.680573, 32.628654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074791, 39.577557, 32.989742>,  <40.992081, 39.515747, 33.206394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074791, 39.577557, 32.989742>,  <41.212643, 39.680573, 32.628654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074791, 39.577557, 32.989742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818358, 0.553553, -0.154499,
		-0.459913, -0.791993, -0.401531,
		-0.344631, -0.257539, 0.902720,
		40.971401, 39.500294, 33.260559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509670, 39.341499, 32.536781>,  <41.212643, 39.680573, 32.628654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509670, 39.341499, 32.536781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525326, 39.459576, 32.918636>,  <40.534718, 39.530422, 33.147751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.525326, 39.459576, 32.918636>,  <40.509670, 39.341499, 32.536781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525326, 39.459576, 32.918636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883867, 0.455864, -0.104727,
		-0.466099, -0.839674, 0.278747,
		0.039134, 0.295188, 0.954638,
		40.537067, 39.548134, 33.205029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848083, 39.180920, 32.830017>,  <40.509670, 39.341499, 32.536781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848083, 39.180920, 32.830017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991192, 39.470161, 33.066360>,  <40.077057, 39.643707, 33.208168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991192, 39.470161, 33.066360>,  <39.848083, 39.180920, 32.830017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991192, 39.470161, 33.066360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891430, 0.452926, -0.014523,
		-0.278118, -0.521516, 0.806642,
		0.357776, 0.723104, 0.590862,
		40.098526, 39.687092, 33.243618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352936, 39.259239, 33.138321>,  <39.848083, 39.180920, 32.830017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352936, 39.259239, 33.138321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562027, 39.576763, 33.262657>,  <39.687481, 39.767277, 33.337261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562027, 39.576763, 33.262657>,  <39.352936, 39.259239, 33.138321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562027, 39.576763, 33.262657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851700, 0.502073, 0.150101,
		-0.036916, -0.343209, 0.938533,
		0.522728, 0.793807, 0.310845,
		39.718845, 39.814907, 33.355911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.118473, 36.334755, 39.020153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820385, 36.098530, 39.144005>,  <38.641533, 35.956795, 39.218315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820385, 36.098530, 39.144005>,  <39.118473, 36.334755, 39.020153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820385, 36.098530, 39.144005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302344, -0.713130, -0.632482,
		0.594331, -0.377725, 0.709996,
		-0.745224, -0.590567, 0.309632,
		38.596817, 35.921360, 39.236893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372898, 35.659706, 38.991180>,  <39.118473, 36.334755, 39.020153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372898, 35.659706, 38.991180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977974, 35.597378, 39.003429>,  <38.741020, 35.559982, 39.010780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977974, 35.597378, 39.003429>,  <39.372898, 35.659706, 38.991180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977974, 35.597378, 39.003429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074584, -0.625275, -0.776832,
		0.140193, -0.764690, 0.628963,
		-0.987311, -0.155817, 0.030625,
		38.681782, 35.550632, 39.012615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353947, 34.931549, 38.944965>,  <39.372898, 35.659706, 38.991180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353947, 34.931549, 38.944965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996185, 35.082600, 38.849106>,  <38.781528, 35.173229, 38.791588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996185, 35.082600, 38.849106>,  <39.353947, 34.931549, 38.944965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996185, 35.082600, 38.849106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048913, -0.615204, -0.786849,
		-0.444572, -0.692041, 0.568713,
		-0.894407, 0.377629, -0.239652,
		38.727863, 35.195889, 38.777210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812138, 34.428230, 38.902832>,  <39.353947, 34.931549, 38.944965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812138, 34.428230, 38.902832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623608, 34.692211, 38.668804>,  <38.510490, 34.850601, 38.528385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623608, 34.692211, 38.668804>,  <38.812138, 34.428230, 38.902832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623608, 34.692211, 38.668804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068468, -0.688756, -0.721753,
		-0.879298, -0.300121, 0.369814,
		-0.471325, 0.659956, -0.585073,
		38.482208, 34.890198, 38.493282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310791, 33.973602, 38.515640>,  <38.812138, 34.428230, 38.902832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310791, 33.973602, 38.515640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345177, 34.317905, 38.314960>,  <38.365807, 34.524487, 38.194553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345177, 34.317905, 38.314960>,  <38.310791, 33.973602, 38.515640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345177, 34.317905, 38.314960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098655, -0.493732, -0.864000,
		-0.991402, 0.123766, 0.042477,
		0.085962, 0.860762, -0.501697,
		38.370964, 34.576134, 38.164452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809498, 34.000324, 38.040089>,  <38.310791, 33.973602, 38.515640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809498, 34.000324, 38.040089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074131, 34.263344, 37.895905>,  <38.232910, 34.421158, 37.809395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074131, 34.263344, 37.895905>,  <37.809498, 34.000324, 38.040089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074131, 34.263344, 37.895905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167006, -0.339415, -0.925693,
		-0.731035, 0.672624, -0.114737,
		0.661586, 0.657552, -0.360456,
		38.272606, 34.460609, 37.787769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512508, 34.396542, 37.411346>,  <37.809498, 34.000324, 38.040089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512508, 34.396542, 37.411346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911865, 34.392513, 37.389011>,  <38.151478, 34.390095, 37.375610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911865, 34.392513, 37.389011>,  <37.512508, 34.396542, 37.411346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911865, 34.392513, 37.389011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056636, -0.236378, -0.970009,
		-0.003426, 0.971609, -0.236568,
		0.998389, -0.010075, -0.055838,
		38.211384, 34.389492, 37.372261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599018, 34.727379, 36.756569>,  <37.512508, 34.396542, 37.411346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599018, 34.727379, 36.756569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930588, 34.528248, 36.858585>,  <38.129528, 34.408768, 36.919796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930588, 34.528248, 36.858585>,  <37.599018, 34.727379, 36.756569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930588, 34.528248, 36.858585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183629, -0.188497, -0.964754,
		0.528360, 0.846542, -0.064834,
		0.828925, -0.497831, 0.255044,
		38.179264, 34.378899, 36.935097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123276, 34.985550, 36.223492>,  <37.599018, 34.727379, 36.756569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123276, 34.985550, 36.223492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279686, 34.651989, 36.379292>,  <38.373531, 34.451851, 36.472771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279686, 34.651989, 36.379292>,  <38.123276, 34.985550, 36.223492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279686, 34.651989, 36.379292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248703, -0.311717, -0.917049,
		0.886143, 0.455455, 0.085506,
		0.391021, -0.833902, 0.389499,
		38.396992, 34.401817, 36.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707989, 34.851421, 35.876465>,  <38.123276, 34.985550, 36.223492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707989, 34.851421, 35.876465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633018, 34.492107, 36.035439>,  <38.588036, 34.276520, 36.130825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633018, 34.492107, 36.035439>,  <38.707989, 34.851421, 35.876465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633018, 34.492107, 36.035439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263375, -0.435750, -0.860671,
		0.946311, -0.056637, 0.318257,
		-0.187427, -0.898284, 0.397439,
		38.576790, 34.222622, 36.154671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372799, 34.476349, 35.792171>,  <38.707989, 34.851421, 35.876465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372799, 34.476349, 35.792171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081333, 34.206909, 35.841656>,  <38.906452, 34.045246, 35.871346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081333, 34.206909, 35.841656>,  <39.372799, 34.476349, 35.792171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081333, 34.206909, 35.841656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325909, -0.499919, -0.802411,
		0.602353, -0.544371, 0.583807,
		-0.728666, -0.673603, 0.123712,
		38.862732, 34.004829, 35.878769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658745, 33.814171, 35.671249>,  <39.372799, 34.476349, 35.792171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658745, 33.814171, 35.671249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266659, 33.779060, 35.600277>,  <39.031406, 33.757996, 35.557693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266659, 33.779060, 35.600277>,  <39.658745, 33.814171, 35.671249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266659, 33.779060, 35.600277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197324, -0.504741, -0.840416,
		-0.015787, -0.858797, 0.512073,
		-0.980211, -0.087776, -0.177430,
		38.972595, 33.752728, 35.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527855, 33.133244, 35.591801>,  <39.658745, 33.814171, 35.671249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527855, 33.133244, 35.591801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243710, 33.335571, 35.396030>,  <39.073223, 33.456966, 35.278568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243710, 33.335571, 35.396030>,  <39.527855, 33.133244, 35.591801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243710, 33.335571, 35.396030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284159, -0.430070, -0.856909,
		-0.643927, -0.747788, 0.161772,
		-0.710360, 0.505818, -0.489425,
		39.030602, 33.487316, 35.249203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465816, 32.651417, 36.146046>,  <39.527855, 33.133244, 35.591801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465816, 32.651417, 36.146046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465069, 32.271286, 36.021542>,  <39.464619, 32.043209, 35.946838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465069, 32.271286, 36.021542>,  <39.465816, 32.651417, 36.146046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465069, 32.271286, 36.021542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583988, -0.251631, 0.771777,
		-0.811760, 0.183217, -0.554506,
		-0.001872, -0.950323, -0.311261,
		39.464508, 31.986189, 35.928162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777428, 32.358181, 36.054558>,  <39.465816, 32.651417, 36.146046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777428, 32.358181, 36.054558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021854, 32.054855, 36.145390>,  <39.168510, 31.872860, 36.199886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021854, 32.054855, 36.145390>,  <38.777428, 32.358181, 36.054558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021854, 32.054855, 36.145390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614482, -0.273577, 0.739978,
		-0.499012, -0.591707, -0.633142,
		0.611063, -0.758313, 0.227076,
		39.205173, 31.827362, 36.213512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449276, 31.714420, 35.972839>,  <38.777428, 32.358181, 36.054558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449276, 31.714420, 35.972839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748440, 31.634432, 36.226025>,  <38.927940, 31.586439, 36.377934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748440, 31.634432, 36.226025>,  <38.449276, 31.714420, 35.972839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748440, 31.634432, 36.226025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663024, -0.179020, 0.726877,
		-0.032042, -0.963309, -0.266477,
		0.747912, -0.199971, 0.632961,
		38.972813, 31.574440, 36.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280167, 31.053118, 36.138798>,  <38.449276, 31.714420, 35.972839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280167, 31.053118, 36.138798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517578, 31.199644, 36.425442>,  <38.660027, 31.287560, 36.597427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517578, 31.199644, 36.425442>,  <38.280167, 31.053118, 36.138798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517578, 31.199644, 36.425442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665869, -0.276610, 0.692897,
		0.452041, -0.888425, 0.079742,
		0.593530, 0.366316, 0.716614,
		38.695637, 31.309538, 36.640427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115826, 30.656868, 36.698811>,  <38.280167, 31.053118, 36.138798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115826, 30.656868, 36.698811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337299, 30.937222, 36.878674>,  <38.470184, 31.105434, 36.986591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337299, 30.937222, 36.878674>,  <38.115826, 30.656868, 36.698811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337299, 30.937222, 36.878674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514850, -0.136273, 0.846380,
		0.654490, -0.700136, 0.285398,
		0.553689, 0.700884, 0.449655,
		38.503407, 31.147488, 37.013569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334457, 30.350538, 37.309151>,  <38.115826, 30.656868, 36.698811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334457, 30.350538, 37.309151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341228, 30.746126, 37.368015>,  <38.345291, 30.983479, 37.403332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341228, 30.746126, 37.368015>,  <38.334457, 30.350538, 37.309151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341228, 30.746126, 37.368015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418010, -0.126700, 0.899564,
		0.908285, -0.076740, 0.411254,
		0.016927, 0.988968, 0.147158,
		38.346306, 31.042816, 37.412163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527515, 30.381098, 38.012260>,  <38.334457, 30.350538, 37.309151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527515, 30.381098, 38.012260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357170, 30.722050, 37.890877>,  <38.254963, 30.926620, 37.818047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357170, 30.722050, 37.890877>,  <38.527515, 30.381098, 38.012260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357170, 30.722050, 37.890877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531192, 0.035964, 0.846488,
		0.732444, 0.521683, 0.437462,
		-0.425865, 0.852381, -0.303456,
		38.229412, 30.977764, 37.799839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567249, 30.899448, 38.628986>,  <38.527515, 30.381098, 38.012260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567249, 30.899448, 38.628986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288921, 31.039938, 38.378395>,  <38.121925, 31.124231, 38.228043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288921, 31.039938, 38.378395>,  <38.567249, 30.899448, 38.628986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288921, 31.039938, 38.378395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614866, 0.159479, 0.772338,
		0.371173, 0.922610, 0.104986,
		-0.695824, 0.351224, -0.626475,
		38.080173, 31.145306, 38.190453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236427, 31.453114, 38.982197>,  <38.567249, 30.899448, 38.628986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236427, 31.453114, 38.982197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977119, 31.325531, 38.705643>,  <37.821533, 31.248981, 38.539711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977119, 31.325531, 38.705643>,  <38.236427, 31.453114, 38.982197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977119, 31.325531, 38.705643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757325, 0.176169, 0.628827,
		-0.078769, 0.931252, -0.355760,
		-0.648270, -0.318958, -0.691384,
		37.782639, 31.229843, 38.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736229, 31.983170, 38.902508>,  <38.236427, 31.453114, 38.982197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736229, 31.983170, 38.902508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566410, 31.639351, 38.788708>,  <37.464520, 31.433060, 38.720428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566410, 31.639351, 38.788708>,  <37.736229, 31.983170, 38.902508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566410, 31.639351, 38.788708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724889, 0.134417, 0.675624,
		-0.542489, 0.493064, -0.680142,
		-0.424549, -0.859546, -0.284497,
		37.439045, 31.381487, 38.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073532, 32.134319, 39.008671>,  <37.736229, 31.983170, 38.902508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073532, 32.134319, 39.008671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040215, 31.741581, 38.940498>,  <37.020222, 31.505939, 38.899593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040215, 31.741581, 38.940498>,  <37.073532, 32.134319, 39.008671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040215, 31.741581, 38.940498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801698, -0.035559, 0.596671,
		-0.591897, 0.186337, -0.784179,
		-0.083297, -0.981843, -0.170433,
		37.015224, 31.447029, 38.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367588, 31.919937, 38.675007>,  <37.073532, 32.134319, 39.008671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367588, 31.919937, 38.675007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517822, 31.603642, 38.868362>,  <36.607964, 31.413864, 38.984375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517822, 31.603642, 38.868362>,  <36.367588, 31.919937, 38.675007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517822, 31.603642, 38.868362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845329, -0.078472, 0.528452,
		-0.379936, -0.607101, -0.697909,
		0.375590, -0.790741, 0.483385,
		36.630501, 31.366419, 39.013378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789082, 31.486891, 38.932812>,  <36.367588, 31.919937, 38.675007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789082, 31.486891, 38.932812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095814, 31.317928, 39.126118>,  <36.279854, 31.216551, 39.242100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095814, 31.317928, 39.126118>,  <35.789082, 31.486891, 38.932812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095814, 31.317928, 39.126118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560215, -0.072999, 0.825124,
		-0.313260, -0.903462, -0.292617,
		0.766829, -0.422407, 0.483266,
		36.325863, 31.191206, 39.271099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577332, 30.798708, 39.124496>,  <35.789082, 31.486891, 38.932812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577332, 30.798708, 39.124496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863968, 30.942362, 39.363670>,  <36.035950, 31.028555, 39.507175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863968, 30.942362, 39.363670>,  <35.577332, 30.798708, 39.124496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863968, 30.942362, 39.363670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631969, -0.028450, 0.774471,
		0.295151, -0.932852, 0.206575,
		0.716590, 0.359135, 0.597931,
		36.078945, 31.050102, 39.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529789, 30.491131, 39.803154>,  <35.577332, 30.798708, 39.124496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529789, 30.491131, 39.803154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733047, 30.827324, 39.878395>,  <35.855003, 31.029039, 39.923538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733047, 30.827324, 39.878395>,  <35.529789, 30.491131, 39.803154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733047, 30.827324, 39.878395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497043, 0.107814, 0.861002,
		0.703378, -0.531004, 0.472541,
		0.508142, 0.840483, 0.188098,
		35.885490, 31.079468, 39.934826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203274, 30.163097, 40.307831>,  <35.529789, 30.491131, 39.803154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203274, 30.163097, 40.307831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824299, 30.130064, 40.184196>,  <34.596912, 30.110243, 40.110016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824299, 30.130064, 40.184196>,  <35.203274, 30.163097, 40.307831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824299, 30.130064, 40.184196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318680, -0.328865, -0.888983,
		-0.028230, -0.940759, 0.337899,
		-0.947442, -0.082585, -0.309085,
		34.540066, 30.105289, 40.091473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197567, 29.517361, 40.010586>,  <35.203274, 30.163097, 40.307831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197567, 29.517361, 40.010586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872086, 29.691174, 39.856144>,  <34.676796, 29.795462, 39.763481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872086, 29.691174, 39.856144>,  <35.197567, 29.517361, 40.010586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872086, 29.691174, 39.856144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327432, -0.206184, -0.922104,
		-0.480291, -0.876738, 0.025492,
		-0.813701, 0.434532, -0.386100,
		34.627975, 29.821533, 39.740314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974281, 28.987825, 39.457539>,  <35.197567, 29.517361, 40.010586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974281, 28.987825, 39.457539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836700, 29.354301, 39.375278>,  <34.754150, 29.574186, 39.325920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836700, 29.354301, 39.375278>,  <34.974281, 28.987825, 39.457539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836700, 29.354301, 39.375278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055320, -0.198864, -0.978465,
		-0.937356, -0.347921, 0.017716,
		-0.343951, 0.916190, -0.205653,
		34.733517, 29.629158, 39.313583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446938, 28.871729, 38.939587>,  <34.974281, 28.987825, 39.457539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446938, 28.871729, 38.939587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515217, 29.264601, 38.908138>,  <34.556187, 29.500324, 38.889271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515217, 29.264601, 38.908138>,  <34.446938, 28.871729, 38.939587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515217, 29.264601, 38.908138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078878, -0.093158, -0.992522,
		-0.982160, 0.163225, -0.093375,
		0.170703, 0.982181, -0.078621,
		34.566429, 29.559256, 38.884552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931965, 29.039091, 38.440014>,  <34.446938, 28.871729, 38.939587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931965, 29.039091, 38.440014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212078, 29.323658, 38.463657>,  <34.380146, 29.494398, 38.477844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212078, 29.323658, 38.463657>,  <33.931965, 29.039091, 38.440014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212078, 29.323658, 38.463657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104294, -0.020044, -0.994344,
		-0.706207, 0.702486, -0.088233,
		0.700281, 0.711416, 0.059109,
		34.422161, 29.537083, 38.481392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730625, 29.564922, 37.889927>,  <33.931965, 29.039091, 38.440014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730625, 29.564922, 37.889927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113724, 29.650908, 37.966354>,  <34.343582, 29.702499, 38.012211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113724, 29.650908, 37.966354>,  <33.730625, 29.564922, 37.889927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113724, 29.650908, 37.966354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137436, 0.241520, -0.960614,
		-0.252646, 0.946287, 0.201771,
		0.957748, 0.214965, 0.191073,
		34.401047, 29.715397, 38.023678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813366, 30.246023, 37.668961>,  <33.730625, 29.564922, 37.889927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813366, 30.246023, 37.668961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176350, 30.078396, 37.680962>,  <34.394138, 29.977819, 37.688160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176350, 30.078396, 37.680962>,  <33.813366, 30.246023, 37.668961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176350, 30.078396, 37.680962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183036, 0.330061, -0.926044,
		0.378174, 0.845838, 0.376221,
		0.907459, -0.419067, 0.029999,
		34.448589, 29.952675, 37.689960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225410, 30.689716, 37.353451>,  <33.813366, 30.246023, 37.668961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225410, 30.689716, 37.353451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435326, 30.351952, 37.310436>,  <34.561275, 30.149292, 37.284626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435326, 30.351952, 37.310436>,  <34.225410, 30.689716, 37.353451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435326, 30.351952, 37.310436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227912, 0.261104, -0.938020,
		0.820156, 0.467750, 0.329476,
		0.524786, -0.844414, -0.107540,
		34.592762, 30.098627, 37.278175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798588, 30.855345, 36.921898>,  <34.225410, 30.689716, 37.353451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798588, 30.855345, 36.921898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786160, 30.455830, 36.906612>,  <34.778702, 30.216122, 36.897442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786160, 30.455830, 36.906612>,  <34.798588, 30.855345, 36.921898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786160, 30.455830, 36.906612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168262, 0.032462, -0.985207,
		0.985252, -0.037044, 0.167050,
		-0.031073, -0.998786, -0.038216,
		34.776836, 30.156193, 36.895149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464943, 30.564056, 36.458244>,  <34.798588, 30.855345, 36.921898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464943, 30.564056, 36.458244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206997, 30.258762, 36.474339>,  <35.052227, 30.075586, 36.483994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206997, 30.258762, 36.474339>,  <35.464943, 30.564056, 36.458244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206997, 30.258762, 36.474339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182799, -0.205132, -0.961512,
		0.742113, -0.612693, 0.271802,
		-0.644867, -0.763235, 0.040232,
		35.013538, 30.029791, 36.486408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769398, 29.974745, 36.102783>,  <35.464943, 30.564056, 36.458244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769398, 29.974745, 36.102783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378624, 29.889418, 36.106861>,  <35.144161, 29.838223, 36.109306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378624, 29.889418, 36.106861>,  <35.769398, 29.974745, 36.102783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378624, 29.889418, 36.106861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058367, -0.312608, -0.948087,
		0.205430, -0.925620, 0.317847,
		-0.976930, -0.213317, 0.010193,
		35.085545, 29.825422, 36.109921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664089, 29.267982, 35.859100>,  <35.769398, 29.974745, 36.102783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664089, 29.267982, 35.859100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308769, 29.438555, 35.790894>,  <35.095577, 29.540897, 35.749969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308769, 29.438555, 35.790894>,  <35.664089, 29.267982, 35.859100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308769, 29.438555, 35.790894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044240, -0.290098, -0.955974,
		-0.457124, -0.856737, 0.238829,
		-0.888303, 0.426432, -0.170513,
		35.042278, 29.566484, 35.739738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.010593, 30.280083, 43.732616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774178, 30.515812, 43.512299>,  <32.632328, 30.657249, 43.380108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774178, 30.515812, 43.512299>,  <33.010593, 30.280083, 43.732616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774178, 30.515812, 43.512299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404313, -0.374421, -0.834470,
		-0.698001, -0.715896, -0.016975,
		-0.591038, 0.589324, -0.550792,
		32.596867, 30.692610, 43.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727066, 29.859058, 43.240765>,  <33.010593, 30.280083, 43.732616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727066, 29.859058, 43.240765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715988, 30.227633, 43.085751>,  <32.709343, 30.448778, 42.992741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715988, 30.227633, 43.085751>,  <32.727066, 29.859058, 43.240765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715988, 30.227633, 43.085751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412062, -0.342693, -0.844254,
		-0.910735, -0.183072, -0.370199,
		-0.027695, 0.921437, -0.387540,
		32.707680, 30.504065, 42.969490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452629, 29.753475, 42.611927>,  <32.727066, 29.859058, 43.240765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452629, 29.753475, 42.611927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622490, 30.114811, 42.587765>,  <32.724407, 30.331612, 42.573269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622490, 30.114811, 42.587765>,  <32.452629, 29.753475, 42.611927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622490, 30.114811, 42.587765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452485, -0.269554, -0.850058,
		-0.784173, 0.333646, -0.523214,
		0.424652, 0.903339, -0.060407,
		32.749886, 30.385813, 42.569641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412556, 29.769623, 41.939743>,  <32.452629, 29.753475, 42.611927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412556, 29.769623, 41.939743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677532, 30.058006, 42.021118>,  <32.836517, 30.231037, 42.069942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677532, 30.058006, 42.021118>,  <32.412556, 29.769623, 41.939743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677532, 30.058006, 42.021118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427211, -0.140501, -0.893169,
		-0.615354, 0.678586, -0.401075,
		0.662443, 0.720958, 0.203442,
		32.876266, 30.274294, 42.082150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411400, 30.273497, 41.376945>,  <32.412556, 29.769623, 41.939743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411400, 30.273497, 41.376945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777870, 30.287766, 41.536621>,  <32.997753, 30.296328, 41.632427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777870, 30.287766, 41.536621>,  <32.411400, 30.273497, 41.376945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777870, 30.287766, 41.536621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398395, -0.189618, -0.897400,
		0.043682, 0.981210, -0.187935,
		0.916173, 0.035672, 0.399192,
		33.052723, 30.298468, 41.656380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826008, 30.657743, 40.942123>,  <32.411400, 30.273497, 41.376945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826008, 30.657743, 40.942123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127415, 30.484060, 41.139576>,  <33.308258, 30.379850, 41.258049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127415, 30.484060, 41.139576>,  <32.826008, 30.657743, 40.942123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127415, 30.484060, 41.139576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549002, 0.002523, -0.835817,
		0.361672, 0.900810, 0.240281,
		0.753519, -0.434207, 0.493634,
		33.353470, 30.353798, 41.287666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408958, 30.972912, 40.607380>,  <32.826008, 30.657743, 40.942123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408958, 30.972912, 40.607380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555119, 30.652716, 40.797409>,  <33.642815, 30.460598, 40.911427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.555119, 30.652716, 40.797409>,  <33.408958, 30.972912, 40.607380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555119, 30.652716, 40.797409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616988, -0.173878, -0.767524,
		0.697002, 0.573567, 0.430359,
		0.365396, -0.800492, 0.475077,
		33.664738, 30.412567, 40.939934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217411, 31.009630, 40.730736>,  <33.408958, 30.972912, 40.607380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217411, 31.009630, 40.730736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101723, 30.627222, 40.711254>,  <34.032310, 30.397778, 40.699566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.101723, 30.627222, 40.711254>,  <34.217411, 31.009630, 40.730736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101723, 30.627222, 40.711254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543123, -0.121988, -0.830744,
		0.788268, -0.266724, 0.554519,
		-0.289224, -0.956022, -0.048704,
		34.014954, 30.340416, 40.696644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840675, 30.806458, 40.459641>,  <34.217411, 31.009630, 40.730736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840675, 30.806458, 40.459641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554726, 30.531746, 40.407051>,  <34.383156, 30.366919, 40.375500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554726, 30.531746, 40.407051>,  <34.840675, 30.806458, 40.459641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554726, 30.531746, 40.407051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330609, -0.166294, -0.929002,
		0.616158, -0.707586, 0.345935,
		-0.714876, -0.686781, -0.131471,
		34.340263, 30.325712, 40.367611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594730, 30.622934, 40.698311>,  <34.840675, 30.806458, 40.459641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594730, 30.622934, 40.698311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712391, 30.980974, 40.564281>,  <35.782986, 31.195797, 40.483864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712391, 30.980974, 40.564281>,  <35.594730, 30.622934, 40.698311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712391, 30.980974, 40.564281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316034, 0.421957, 0.849750,
		0.901997, -0.144057, 0.406999,
		0.294148, 0.895098, -0.335077,
		35.800636, 31.249504, 40.463757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167362, 30.859737, 41.096199>,  <35.594730, 30.622934, 40.698311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167362, 30.859737, 41.096199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022091, 31.203279, 40.951721>,  <35.934929, 31.409405, 40.865032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022091, 31.203279, 40.951721>,  <36.167362, 30.859737, 41.096199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022091, 31.203279, 40.951721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061706, 0.364647, 0.929099,
		0.929673, 0.359719, -0.079436,
		-0.363181, 0.858857, -0.361199,
		35.913136, 31.460938, 40.843361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400024, 31.313951, 41.549519>,  <36.167362, 30.859737, 41.096199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400024, 31.313951, 41.549519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125980, 31.532576, 41.356895>,  <35.961555, 31.663750, 41.241322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.125980, 31.532576, 41.356895>,  <36.400024, 31.313951, 41.549519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125980, 31.532576, 41.356895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055676, 0.619858, 0.782736,
		0.726312, 0.563069, -0.394238,
		-0.685106, 0.546562, -0.481560,
		35.920448, 31.696545, 41.212429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665852, 32.007206, 41.516220>,  <36.400024, 31.313951, 41.549519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665852, 32.007206, 41.516220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267612, 32.037258, 41.493816>,  <36.028667, 32.055290, 41.480373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267612, 32.037258, 41.493816>,  <36.665852, 32.007206, 41.516220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267612, 32.037258, 41.493816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015967, 0.452958, 0.891389,
		0.092343, 0.888360, -0.449765,
		-0.995599, 0.075132, -0.056012,
		35.968933, 32.059799, 41.477013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541725, 32.678726, 41.746269>,  <36.665852, 32.007206, 41.516220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541725, 32.678726, 41.746269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194855, 32.483147, 41.784103>,  <35.986732, 32.365799, 41.806805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194855, 32.483147, 41.784103>,  <36.541725, 32.678726, 41.746269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194855, 32.483147, 41.784103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232134, 0.564884, 0.791846,
		-0.440599, 0.664710, -0.603352,
		-0.867171, -0.488945, 0.094585,
		35.934704, 32.336464, 41.812481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082363, 33.126205, 41.695393>,  <36.541725, 32.678726, 41.746269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082363, 33.126205, 41.695393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876217, 32.840679, 41.885071>,  <35.752529, 32.669361, 41.998878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876217, 32.840679, 41.885071>,  <36.082363, 33.126205, 41.695393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876217, 32.840679, 41.885071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277090, 0.662416, 0.696007,
		-0.810939, 0.227301, -0.539177,
		-0.515363, -0.713820, 0.474196,
		35.721607, 32.626534, 42.027328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490131, 33.443344, 41.889256>,  <36.082363, 33.126205, 41.695393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490131, 33.443344, 41.889256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.518051, 33.133377, 42.140533>,  <35.534801, 32.947395, 42.291302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.518051, 33.133377, 42.140533>,  <35.490131, 33.443344, 41.889256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518051, 33.133377, 42.140533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365934, 0.565944, 0.738782,
		-0.928020, -0.281443, -0.244068,
		0.069796, -0.774917, 0.628197,
		35.538990, 32.900902, 42.328991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876629, 33.510090, 42.218792>,  <35.490131, 33.443344, 41.889256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876629, 33.510090, 42.218792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125778, 33.308239, 42.457916>,  <35.275269, 33.187130, 42.601391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125778, 33.308239, 42.457916>,  <34.876629, 33.510090, 42.218792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125778, 33.308239, 42.457916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163563, 0.663260, 0.730297,
		-0.765032, -0.552663, 0.330589,
		0.622875, -0.504629, 0.597810,
		35.312641, 33.156849, 42.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531250, 33.662788, 42.881508>,  <34.876629, 33.510090, 42.218792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531250, 33.662788, 42.881508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852459, 33.462387, 43.010593>,  <35.045185, 33.342148, 43.088043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852459, 33.462387, 43.010593>,  <34.531250, 33.662788, 42.881508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852459, 33.462387, 43.010593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138343, 0.370005, 0.918672,
		-0.579663, -0.782363, 0.227814,
		0.803027, -0.501004, 0.322712,
		35.093369, 33.312084, 43.107407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384907, 33.256912, 43.527657>,  <34.531250, 33.662788, 42.881508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384907, 33.256912, 43.527657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779148, 33.313957, 43.563976>,  <35.015694, 33.348183, 43.585766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779148, 33.313957, 43.563976>,  <34.384907, 33.256912, 43.527657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779148, 33.313957, 43.563976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127835, 0.277197, 0.952271,
		0.110634, -0.950171, 0.291437,
		0.985605, 0.142610, 0.090797,
		35.074829, 33.356739, 43.591217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576019, 32.905418, 44.216610>,  <34.384907, 33.256912, 43.527657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576019, 32.905418, 44.216610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855751, 33.172985, 44.115822>,  <35.023590, 33.333527, 44.055351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855751, 33.172985, 44.115822>,  <34.576019, 32.905418, 44.216610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855751, 33.172985, 44.115822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020589, 0.371203, 0.928323,
		0.714504, -0.644015, 0.273366,
		0.699328, 0.668919, -0.251966,
		35.065548, 33.373661, 44.040234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151073, 32.878803, 44.749393>,  <34.576019, 32.905418, 44.216610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151073, 32.878803, 44.749393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.207035, 33.238518, 44.583641>,  <35.240612, 33.454346, 44.484188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.207035, 33.238518, 44.583641>,  <35.151073, 32.878803, 44.749393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207035, 33.238518, 44.583641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072219, 0.426653, 0.901528,
		0.987528, -0.096202, 0.124636,
		0.139905, 0.899285, -0.414384,
		35.249008, 33.508305, 44.459328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690243, 33.176258, 45.188255>,  <35.151073, 32.878803, 44.749393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690243, 33.176258, 45.188255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475113, 33.453072, 44.995659>,  <35.346035, 33.619160, 44.880100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475113, 33.453072, 44.995659>,  <35.690243, 33.176258, 45.188255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475113, 33.453072, 44.995659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146943, 0.639330, 0.754762,
		0.830153, 0.335176, -0.445536,
		-0.537823, 0.692036, -0.481490,
		35.313766, 33.660683, 44.851212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113598, 33.717545, 45.140209>,  <35.690243, 33.176258, 45.188255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113598, 33.717545, 45.140209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751190, 33.881500, 45.098038>,  <35.533745, 33.979874, 45.072735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751190, 33.881500, 45.098038>,  <36.113598, 33.717545, 45.140209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751190, 33.881500, 45.098038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159096, 0.560685, 0.812601,
		0.392187, 0.719462, -0.573205,
		-0.906023, 0.409886, -0.105430,
		35.479382, 34.004467, 45.066410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.846239, 38.639183, 43.049866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.871651, 38.240047, 43.043144>,  <30.886898, 38.000565, 43.039112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.871651, 38.240047, 43.043144>,  <30.846239, 38.639183, 43.049866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871651, 38.240047, 43.043144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279890, 0.033972, -0.959431,
		0.957928, 0.056250, 0.281443,
		0.063529, -0.997839, -0.016799,
		30.890709, 37.940697, 43.038105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461281, 38.537067, 42.657074>,  <30.846239, 38.639183, 43.049866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461281, 38.537067, 42.657074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269114, 38.187580, 42.626587>,  <31.153814, 37.977886, 42.608295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269114, 38.187580, 42.626587>,  <31.461281, 38.537067, 42.657074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269114, 38.187580, 42.626587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340134, -0.105512, -0.934439,
		0.808399, -0.474843, 0.347873,
		-0.480416, -0.873723, -0.076214,
		31.124989, 37.925465, 42.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829676, 37.917278, 42.460674>,  <31.461281, 38.537067, 42.657074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829676, 37.917278, 42.460674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477560, 37.814419, 42.301193>,  <31.266291, 37.752705, 42.205505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477560, 37.814419, 42.301193>,  <31.829676, 37.917278, 42.460674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477560, 37.814419, 42.301193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439205, -0.123900, -0.889802,
		0.179413, -0.958396, 0.222009,
		-0.880290, -0.257150, -0.398703,
		31.213472, 37.737274, 42.181583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004524, 37.511497, 41.967693>,  <31.829676, 37.917278, 42.460674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004524, 37.511497, 41.967693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617493, 37.508495, 41.866718>,  <31.385273, 37.506695, 41.806133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617493, 37.508495, 41.866718>,  <32.004524, 37.511497, 41.967693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617493, 37.508495, 41.866718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250392, -0.159006, -0.954998,
		-0.032974, -0.987249, 0.155730,
		-0.967583, -0.007503, -0.252442,
		31.327217, 37.506245, 41.790985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823496, 36.837887, 41.695129>,  <32.004524, 37.511497, 41.967693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823496, 36.837887, 41.695129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532976, 37.077789, 41.560795>,  <31.358665, 37.221729, 41.480194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532976, 37.077789, 41.560795>,  <31.823496, 36.837887, 41.695129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532976, 37.077789, 41.560795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210907, -0.270565, -0.939315,
		-0.654225, -0.753052, 0.070018,
		-0.726298, 0.599756, -0.335834,
		31.315086, 37.257717, 41.460045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432880, 36.373417, 41.258636>,  <31.823496, 36.837887, 41.695129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432880, 36.373417, 41.258636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343285, 36.744568, 41.139385>,  <31.289528, 36.967258, 41.067833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343285, 36.744568, 41.139385>,  <31.432880, 36.373417, 41.258636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343285, 36.744568, 41.139385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106556, -0.280753, -0.953847,
		-0.968750, -0.245417, -0.035985,
		-0.223987, 0.927873, -0.298130,
		31.276089, 37.022930, 41.049946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951307, 36.254074, 40.727539>,  <31.432880, 36.373417, 41.258636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951307, 36.254074, 40.727539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097752, 36.623325, 40.680569>,  <31.185617, 36.844879, 40.652386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097752, 36.623325, 40.680569>,  <30.951307, 36.254074, 40.727539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097752, 36.623325, 40.680569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251845, -0.219766, -0.942484,
		-0.895844, 0.315481, -0.312945,
		0.366111, 0.923133, -0.117424,
		31.207584, 36.900265, 40.645340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605478, 36.574837, 40.113190>,  <30.951307, 36.254074, 40.727539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605478, 36.574837, 40.113190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951984, 36.760582, 40.186897>,  <31.159889, 36.872028, 40.231121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951984, 36.760582, 40.186897>,  <30.605478, 36.574837, 40.113190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951984, 36.760582, 40.186897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380083, -0.373219, -0.846312,
		-0.324221, 0.803168, -0.499802,
		0.866267, 0.464358, 0.184265,
		31.211864, 36.899891, 40.242176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706594, 36.999390, 39.502674>,  <30.605478, 36.574837, 40.113190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706594, 36.999390, 39.502674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074083, 36.976933, 39.659031>,  <31.294577, 36.963459, 39.752846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.074083, 36.976933, 39.659031>,  <30.706594, 36.999390, 39.502674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074083, 36.976933, 39.659031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388052, -0.055225, -0.919981,
		0.073237, 0.996894, -0.028950,
		0.918723, -0.056142, 0.390892,
		31.349701, 36.960091, 39.776299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069521, 37.422016, 39.064899>,  <30.706594, 36.999390, 39.502674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069521, 37.422016, 39.064899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320290, 37.161858, 39.236458>,  <31.470751, 37.005764, 39.339394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320290, 37.161858, 39.236458>,  <31.069521, 37.422016, 39.064899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320290, 37.161858, 39.236458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445751, -0.152059, -0.882147,
		0.638964, 0.744219, 0.194586,
		0.626922, -0.650397, 0.428897,
		31.508366, 36.966740, 39.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803543, 37.619492, 38.921349>,  <31.069521, 37.422016, 39.064899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803543, 37.619492, 38.921349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849566, 37.244308, 39.052193>,  <31.877178, 37.019199, 39.130699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849566, 37.244308, 39.052193>,  <31.803543, 37.619492, 38.921349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849566, 37.244308, 39.052193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, -0.234768, -0.843256,
		0.867732, 0.255188, 0.426521,
		0.115055, -0.937957, 0.327107,
		31.884083, 36.962921, 39.150326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485096, 37.485424, 38.640514>,  <31.803543, 37.619492, 38.921349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485096, 37.485424, 38.640514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325321, 37.129848, 38.730164>,  <32.229458, 36.916504, 38.783955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325321, 37.129848, 38.730164>,  <32.485096, 37.485424, 38.640514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325321, 37.129848, 38.730164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316992, -0.363317, -0.876080,
		0.860214, -0.278892, 0.426909,
		-0.399436, -0.888943, 0.224124,
		32.205490, 36.863167, 38.797401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999649, 36.970261, 38.576107>,  <32.485096, 37.485424, 38.640514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999649, 36.970261, 38.576107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669357, 36.745071, 38.562050>,  <32.471184, 36.609959, 38.553616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669357, 36.745071, 38.562050>,  <32.999649, 36.970261, 38.576107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669357, 36.745071, 38.562050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388241, -0.522036, -0.759439,
		0.409200, -0.640733, 0.649629,
		-0.825727, -0.562974, -0.035142,
		32.421638, 36.576180, 38.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230446, 36.289478, 38.476826>,  <32.999649, 36.970261, 38.576107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230446, 36.289478, 38.476826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855103, 36.293190, 38.338612>,  <32.629898, 36.295418, 38.255684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855103, 36.293190, 38.338612>,  <33.230446, 36.289478, 38.476826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855103, 36.293190, 38.338612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287421, -0.534359, -0.794889,
		-0.192020, -0.845206, 0.498753,
		-0.938359, 0.009282, -0.345538,
		32.573593, 36.295975, 38.234951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723202, 35.607849, 38.557056>,  <33.230446, 36.289478, 38.476826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723202, 35.607849, 38.557056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048641, 35.828953, 38.484928>,  <34.243904, 35.961617, 38.441650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048641, 35.828953, 38.484928>,  <33.723202, 35.607849, 38.557056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048641, 35.828953, 38.484928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058890, 0.386883, 0.920246,
		0.578441, -0.738089, 0.347319,
		0.813596, 0.552762, -0.180323,
		34.292721, 35.994781, 38.430832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169582, 35.471294, 39.149200>,  <33.723202, 35.607849, 38.557056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169582, 35.471294, 39.149200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280254, 35.816486, 38.980106>,  <34.346657, 36.023602, 38.878651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.280254, 35.816486, 38.980106>,  <34.169582, 35.471294, 39.149200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280254, 35.816486, 38.980106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066000, 0.455938, 0.887561,
		0.958694, -0.217667, 0.183104,
		0.276677, 0.862984, -0.422739,
		34.363258, 36.075382, 38.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682484, 35.701054, 39.566574>,  <34.169582, 35.471294, 39.149200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682484, 35.701054, 39.566574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553726, 36.041733, 39.401169>,  <34.476471, 36.246140, 39.301926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553726, 36.041733, 39.401169>,  <34.682484, 35.701054, 39.566574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553726, 36.041733, 39.401169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140231, 0.474828, 0.868835,
		0.936334, 0.221683, -0.272277,
		-0.321891, 0.851701, -0.413511,
		34.457157, 36.297245, 39.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049145, 36.207657, 39.883572>,  <34.682484, 35.701054, 39.566574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049145, 36.207657, 39.883572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743828, 36.414371, 39.728489>,  <34.560638, 36.538399, 39.635437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743828, 36.414371, 39.728489>,  <35.049145, 36.207657, 39.883572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743828, 36.414371, 39.728489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097814, 0.500761, 0.860041,
		0.638607, 0.694385, -0.331677,
		-0.763291, 0.516786, -0.387710,
		34.514839, 36.569408, 39.612175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187115, 36.885593, 39.883404>,  <35.049145, 36.207657, 39.883572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187115, 36.885593, 39.883404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787586, 36.866512, 39.887062>,  <34.547871, 36.855064, 39.889259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787586, 36.866512, 39.887062>,  <35.187115, 36.885593, 39.883404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787586, 36.866512, 39.887062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015696, 0.495243, 0.868613,
		-0.045969, 0.867444, -0.495407,
		-0.998820, -0.047705, 0.009150,
		34.487942, 36.852200, 39.889809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989830, 37.382660, 40.378807>,  <35.187115, 36.885593, 39.883404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989830, 37.382660, 40.378807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643120, 37.191757, 40.320934>,  <34.435093, 37.077217, 40.286209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643120, 37.191757, 40.320934>,  <34.989830, 37.382660, 40.378807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643120, 37.191757, 40.320934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246225, 0.157251, 0.956371,
		-0.433683, 0.864580, -0.253813,
		-0.866771, -0.477257, -0.144684,
		34.383087, 37.048580, 40.277531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512642, 37.835079, 40.627296>,  <34.989830, 37.382660, 40.378807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512642, 37.835079, 40.627296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345284, 37.471916, 40.637505>,  <34.244869, 37.254021, 40.643631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345284, 37.471916, 40.637505>,  <34.512642, 37.835079, 40.627296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345284, 37.471916, 40.637505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297929, 0.163735, 0.940441,
		-0.858009, 0.385877, -0.338997,
		-0.418400, -0.907904, 0.025522,
		34.219765, 37.199547, 40.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787640, 37.939705, 40.846710>,  <34.512642, 37.835079, 40.627296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787640, 37.939705, 40.846710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873051, 37.561558, 40.945251>,  <33.924297, 37.334671, 41.004375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873051, 37.561558, 40.945251>,  <33.787640, 37.939705, 40.846710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873051, 37.561558, 40.945251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347123, 0.162295, 0.923670,
		-0.913187, -0.282746, -0.293503,
		0.213530, -0.945365, 0.246354,
		33.937111, 37.277946, 41.019157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322353, 37.759491, 41.297970>,  <33.787640, 37.939705, 40.846710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322353, 37.759491, 41.297970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608601, 37.490623, 41.373943>,  <33.780350, 37.329304, 41.419529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608601, 37.490623, 41.373943>,  <33.322353, 37.759491, 41.297970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608601, 37.490623, 41.373943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239239, 0.019603, 0.970763,
		-0.656244, -0.740134, -0.146781,
		0.715617, -0.672173, 0.189933,
		33.823284, 37.288971, 41.430923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015694, 37.257458, 41.742012>,  <33.322353, 37.759491, 41.297970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015694, 37.257458, 41.742012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413204, 37.254761, 41.786491>,  <33.651711, 37.253143, 41.813179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413204, 37.254761, 41.786491>,  <33.015694, 37.257458, 41.742012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413204, 37.254761, 41.786491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108416, 0.170923, 0.979301,
		-0.025604, -0.985261, 0.169129,
		0.993776, -0.006738, 0.111194,
		33.711338, 37.252739, 41.819851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067150, 36.711346, 42.117756>,  <33.015694, 37.257458, 41.742012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067150, 36.711346, 42.117756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.404228, 36.916637, 42.182823>,  <33.606476, 37.039814, 42.221863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.404228, 36.916637, 42.182823>,  <33.067150, 36.711346, 42.117756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404228, 36.916637, 42.182823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180886, -0.014687, 0.983394,
		0.507095, -0.858126, 0.080459,
		0.842695, 0.513229, 0.162670,
		33.657036, 37.070606, 42.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454376, 36.427582, 42.683323>,  <33.067150, 36.711346, 42.117756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454376, 36.427582, 42.683323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640141, 36.781784, 42.677574>,  <33.751598, 36.994305, 42.674126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640141, 36.781784, 42.677574>,  <33.454376, 36.427582, 42.683323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640141, 36.781784, 42.677574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139435, 0.089136, 0.986211,
		0.874576, -0.456001, 0.164866,
		0.464408, 0.885504, -0.014373,
		33.779465, 37.047436, 42.673264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995235, 36.491283, 43.312462>,  <33.454376, 36.427582, 42.683323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995235, 36.491283, 43.312462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893284, 36.854950, 43.180733>,  <33.832111, 37.073151, 43.101696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893284, 36.854950, 43.180733>,  <33.995235, 36.491283, 43.312462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893284, 36.854950, 43.180733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059506, 0.325174, 0.943780,
		0.965140, 0.260148, -0.028779,
		-0.254881, 0.909167, -0.329319,
		33.816818, 37.127701, 43.081936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494331, 36.946846, 43.762486>,  <33.995235, 36.491283, 43.312462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494331, 36.946846, 43.762486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178028, 37.152458, 43.629539>,  <33.988247, 37.275826, 43.549770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178028, 37.152458, 43.629539>,  <34.494331, 36.946846, 43.762486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178028, 37.152458, 43.629539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356655, 0.054380, 0.932652,
		0.497489, 0.856044, 0.140332,
		-0.790760, 0.514034, -0.332365,
		33.940800, 37.306667, 43.529831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183990, 37.222927, 43.627476>,  <34.494331, 36.946846, 43.762486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183990, 37.222927, 43.627476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514835, 37.189800, 43.849834>,  <35.713341, 37.169926, 43.983250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514835, 37.189800, 43.849834>,  <35.183990, 37.222927, 43.627476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514835, 37.189800, 43.849834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539254, -0.161811, -0.826451,
		0.158392, 0.983341, -0.089179,
		0.827113, -0.082813, 0.555900,
		35.762970, 37.164955, 44.016605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617584, 37.650139, 43.258476>,  <35.183990, 37.222927, 43.627476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617584, 37.650139, 43.258476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838448, 37.410938, 43.490860>,  <35.970966, 37.267418, 43.630291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.838448, 37.410938, 43.490860>,  <35.617584, 37.650139, 43.258476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838448, 37.410938, 43.490860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703088, -0.040522, -0.709947,
		0.448093, 0.800468, 0.398075,
		0.552159, -0.598004, 0.580957,
		36.004097, 37.231537, 43.665146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280849, 37.859993, 43.039818>,  <35.617584, 37.650139, 43.258476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280849, 37.859993, 43.039818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306686, 37.504883, 43.222107>,  <36.322189, 37.291817, 43.331482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306686, 37.504883, 43.222107>,  <36.280849, 37.859993, 43.039818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306686, 37.504883, 43.222107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574773, -0.340220, -0.744235,
		0.815759, 0.310013, 0.488292,
		0.064596, -0.887774, 0.455725,
		36.326065, 37.238552, 43.358826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027786, 37.709606, 42.976574>,  <36.280849, 37.859993, 43.039818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027786, 37.709606, 42.976574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849049, 37.358669, 43.046547>,  <36.741806, 37.148109, 43.088531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849049, 37.358669, 43.046547>,  <37.027786, 37.709606, 42.976574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849049, 37.358669, 43.046547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547532, -0.422849, -0.722086,
		0.707487, -0.226878, 0.669320,
		-0.446847, -0.877340, 0.174937,
		36.714996, 37.095467, 43.099030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529568, 37.222950, 43.074673>,  <37.027786, 37.709606, 42.976574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529568, 37.222950, 43.074673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206749, 37.023579, 42.948021>,  <37.013058, 36.903957, 42.872032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.206749, 37.023579, 42.948021>,  <37.529568, 37.222950, 43.074673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206749, 37.023579, 42.948021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561764, -0.482858, -0.671766,
		0.181941, -0.720013, 0.669685,
		-0.807044, -0.498426, -0.316626,
		36.964638, 36.874050, 42.853035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672993, 36.527729, 42.971291>,  <37.529568, 37.222950, 43.074673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672993, 36.527729, 42.971291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349800, 36.572052, 42.739811>,  <37.155884, 36.598644, 42.600922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349800, 36.572052, 42.739811>,  <37.672993, 36.527729, 42.971291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349800, 36.572052, 42.739811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489049, -0.421688, -0.763551,
		-0.328633, -0.899945, 0.286528,
		-0.807979, 0.110802, -0.578698,
		37.107407, 36.605293, 42.566200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731209, 36.017193, 42.492714>,  <37.672993, 36.527729, 42.971291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731209, 36.017193, 42.492714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441635, 36.210464, 42.295757>,  <37.267891, 36.326427, 42.177582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441635, 36.210464, 42.295757>,  <37.731209, 36.017193, 42.492714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441635, 36.210464, 42.295757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325303, -0.390324, -0.861293,
		-0.608356, -0.783697, 0.125388,
		-0.723934, 0.483184, -0.492394,
		37.224453, 36.355419, 42.148041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382622, 35.479523, 42.019997>,  <37.731209, 36.017193, 42.492714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382622, 35.479523, 42.019997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340164, 35.858154, 41.898197>,  <37.314690, 36.085335, 41.825119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340164, 35.858154, 41.898197>,  <37.382622, 35.479523, 42.019997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340164, 35.858154, 41.898197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118146, -0.292050, -0.949078,
		-0.987307, -0.136712, -0.080836,
		-0.106142, 0.946582, -0.304495,
		37.308323, 36.142128, 41.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177326, 35.429901, 41.354675>,  <37.382622, 35.479523, 42.019997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177326, 35.429901, 41.354675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304962, 35.808819, 41.366135>,  <37.381542, 36.036167, 41.373009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304962, 35.808819, 41.366135>,  <37.177326, 35.429901, 41.354675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304962, 35.808819, 41.366135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349805, -0.089628, -0.932525,
		-0.880805, 0.307581, -0.359967,
		0.319091, 0.947291, 0.028648,
		37.400688, 36.093006, 41.374729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092182, 35.669029, 40.726460>,  <37.177326, 35.429901, 41.354675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092182, 35.669029, 40.726460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325180, 35.965012, 40.861019>,  <37.464977, 36.142601, 40.941753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325180, 35.965012, 40.861019>,  <37.092182, 35.669029, 40.726460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325180, 35.965012, 40.861019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392177, 0.106656, -0.913686,
		-0.711968, 0.664143, -0.228068,
		0.582494, 0.739958, 0.336397,
		37.499928, 36.187000, 40.961937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971466, 36.255322, 40.267654>,  <37.092182, 35.669029, 40.726460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971466, 36.255322, 40.267654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335064, 36.275284, 40.433178>,  <37.553223, 36.287262, 40.532494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335064, 36.275284, 40.433178>,  <36.971466, 36.255322, 40.267654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335064, 36.275284, 40.433178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401167, 0.164652, -0.901085,
		-0.113105, 0.985088, 0.129647,
		0.908995, 0.049907, 0.413807,
		37.607761, 36.290257, 40.557320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289207, 36.750378, 39.978336>,  <36.971466, 36.255322, 40.267654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289207, 36.750378, 39.978336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593063, 36.530296, 40.117027>,  <37.775375, 36.398247, 40.200241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593063, 36.530296, 40.117027>,  <37.289207, 36.750378, 39.978336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593063, 36.530296, 40.117027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373069, -0.068034, -0.925306,
		0.532698, 0.832253, 0.153583,
		0.759640, -0.550205, 0.346729,
		37.820957, 36.365234, 40.221046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908642, 36.925072, 39.580379>,  <37.289207, 36.750378, 39.978336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908642, 36.925072, 39.580379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989376, 36.569313, 39.744442>,  <38.037819, 36.355858, 39.842880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989376, 36.569313, 39.744442>,  <37.908642, 36.925072, 39.580379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989376, 36.569313, 39.744442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471761, -0.278713, -0.836517,
		0.858314, 0.362338, 0.363329,
		0.201838, -0.889399, 0.410160,
		38.049927, 36.302494, 39.867489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501759, 36.822308, 39.158455>,  <37.908642, 36.925072, 39.580379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501759, 36.822308, 39.158455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409256, 36.483307, 39.349560>,  <38.353752, 36.279907, 39.464222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409256, 36.483307, 39.349560>,  <38.501759, 36.822308, 39.158455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409256, 36.483307, 39.349560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478875, -0.526628, -0.702382,
		0.846876, 0.066359, 0.527635,
		-0.231258, -0.847502, 0.477766,
		38.339878, 36.229057, 39.492889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.263098, 29.049000, 40.733578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567972, 29.304882, 40.773266>,  <28.750896, 29.458412, 40.797077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567972, 29.304882, 40.773266>,  <28.263098, 29.049000, 40.733578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567972, 29.304882, 40.773266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605390, 0.758640, -0.240766,
		-0.229289, 0.123445, 0.965499,
		0.762188, 0.639708, 0.099216,
		28.796629, 29.496794, 40.803032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022160, 29.622250, 41.073730>,  <28.263098, 29.049000, 40.733578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022160, 29.622250, 41.073730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319777, 29.729237, 40.828827>,  <28.498346, 29.793428, 40.681885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319777, 29.729237, 40.828827>,  <28.022160, 29.622250, 41.073730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319777, 29.729237, 40.828827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583109, 0.707304, -0.399631,
		0.326165, 0.654356, 0.682227,
		0.744043, 0.267468, -0.612259,
		28.542990, 29.809477, 40.645149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989040, 30.362528, 41.111439>,  <28.022160, 29.622250, 41.073730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989040, 30.362528, 41.111439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197418, 30.252596, 40.788185>,  <28.322445, 30.186636, 40.594231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197418, 30.252596, 40.788185>,  <27.989040, 30.362528, 41.111439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197418, 30.252596, 40.788185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348320, 0.795894, -0.495203,
		0.779288, 0.539464, 0.318888,
		0.520945, -0.274830, -0.808137,
		28.353703, 30.170147, 40.545746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351322, 31.013786, 40.884884>,  <27.989040, 30.362528, 41.111439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351322, 31.013786, 40.884884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344290, 30.784275, 40.557354>,  <28.340071, 30.646568, 40.360836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344290, 30.784275, 40.557354>,  <28.351322, 31.013786, 40.884884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344290, 30.784275, 40.557354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421696, 0.746800, -0.514258,
		0.906567, 0.336253, -0.255090,
		-0.017581, -0.573780, -0.818821,
		28.339016, 30.612141, 40.311707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742481, 31.329033, 40.406395>,  <28.351322, 31.013786, 40.884884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742481, 31.329033, 40.406395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504370, 31.088434, 40.193287>,  <28.361504, 30.944075, 40.065422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504370, 31.088434, 40.193287>,  <28.742481, 31.329033, 40.406395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504370, 31.088434, 40.193287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499123, 0.796415, -0.341467,
		0.629697, 0.062650, -0.774310,
		-0.595279, -0.601497, -0.532770,
		28.325787, 30.907986, 40.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850868, 31.587727, 39.821003>,  <28.742481, 31.329033, 40.406395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850868, 31.587727, 39.821003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496286, 31.403540, 39.802368>,  <28.283537, 31.293028, 39.791187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496286, 31.403540, 39.802368>,  <28.850868, 31.587727, 39.821003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496286, 31.403540, 39.802368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376581, 0.776127, -0.505781,
		0.269050, -0.430809, -0.861404,
		-0.886453, -0.460468, -0.046583,
		28.230350, 31.265400, 39.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639990, 31.546438, 39.101746>,  <28.850868, 31.587727, 39.821003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639990, 31.546438, 39.101746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284271, 31.497715, 39.278069>,  <28.070841, 31.468481, 39.383865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284271, 31.497715, 39.278069>,  <28.639990, 31.546438, 39.101746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284271, 31.497715, 39.278069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401734, 0.668671, -0.625691,
		-0.218546, -0.733513, -0.643580,
		-0.889296, -0.121806, 0.440812,
		28.017483, 31.461174, 39.410313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201046, 31.434000, 38.574326>,  <28.639990, 31.546438, 39.101746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201046, 31.434000, 38.574326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002924, 31.573975, 38.892372>,  <27.884050, 31.657959, 39.083202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002924, 31.573975, 38.892372>,  <28.201046, 31.434000, 38.574326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002924, 31.573975, 38.892372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472590, 0.659452, -0.584621,
		-0.728925, -0.665331, -0.161252,
		-0.495305, 0.349939, 0.795120,
		27.854332, 31.678957, 39.130909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607838, 31.644087, 38.274918>,  <28.201046, 31.434000, 38.574326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607838, 31.644087, 38.274918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561852, 31.816725, 38.632801>,  <27.534260, 31.920307, 38.847530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561852, 31.816725, 38.632801>,  <27.607838, 31.644087, 38.274918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561852, 31.816725, 38.632801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448606, 0.781050, -0.434411,
		-0.886305, -0.451314, 0.103824,
		-0.114964, 0.431596, 0.894711,
		27.527363, 31.946203, 38.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862953, 31.756641, 38.339233>,  <27.607838, 31.644087, 38.274918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862953, 31.756641, 38.339233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039446, 32.014107, 38.589355>,  <27.145342, 32.168587, 38.739429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039446, 32.014107, 38.589355>,  <26.862953, 31.756641, 38.339233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039446, 32.014107, 38.589355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610390, 0.726052, -0.316660,
		-0.657828, -0.241961, 0.713244,
		0.441233, 0.643664, 0.625308,
		27.171816, 32.207207, 38.776947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303946, 32.164928, 38.611584>,  <26.862953, 31.756641, 38.339233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303946, 32.164928, 38.611584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620850, 32.382439, 38.722317>,  <26.810991, 32.512943, 38.788757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620850, 32.382439, 38.722317>,  <26.303946, 32.164928, 38.611584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620850, 32.382439, 38.722317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494458, 0.837965, -0.230926,
		-0.357544, 0.046073, 0.932759,
		0.792259, 0.543776, 0.276829,
		26.858526, 32.545570, 38.805367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960091, 32.620724, 38.965420>,  <26.303946, 32.164928, 38.611584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960091, 32.620724, 38.965420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317616, 32.769939, 38.865864>,  <26.532129, 32.859470, 38.806129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317616, 32.769939, 38.865864>,  <25.960091, 32.620724, 38.965420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317616, 32.769939, 38.865864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448100, 0.721146, -0.528351,
		-0.017614, 0.583771, 0.811727,
		0.893810, 0.373042, -0.248886,
		26.585758, 32.881851, 38.791199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839689, 33.282433, 39.076408>,  <25.960091, 32.620724, 38.965420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839689, 33.282433, 39.076408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156292, 33.255894, 38.833389>,  <26.346254, 33.239971, 38.687576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156292, 33.255894, 38.833389>,  <25.839689, 33.282433, 39.076408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156292, 33.255894, 38.833389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443178, 0.622217, -0.645321,
		0.420842, 0.780028, 0.463085,
		0.791508, -0.066349, -0.607547,
		26.393744, 33.235989, 38.651127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038984, 33.965801, 38.970222>,  <25.839689, 33.282433, 39.076408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038984, 33.965801, 38.970222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198191, 33.753159, 38.671162>,  <26.293715, 33.625572, 38.491726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198191, 33.753159, 38.671162>,  <26.038984, 33.965801, 38.970222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198191, 33.753159, 38.671162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327422, 0.678989, -0.657091,
		0.856958, 0.506330, 0.096190,
		0.398017, -0.531605, -0.747649,
		26.317596, 33.593678, 38.446865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379499, 34.479698, 38.625076>,  <26.038984, 33.965801, 38.970222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379499, 34.479698, 38.625076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355320, 34.177105, 38.364590>,  <26.340813, 33.995548, 38.208298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355320, 34.177105, 38.364590>,  <26.379499, 34.479698, 38.625076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355320, 34.177105, 38.364590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227947, 0.645629, -0.728838,
		0.971796, 0.104386, -0.211464,
		-0.060446, -0.756483, -0.651213,
		26.337187, 33.950161, 38.169228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649860, 34.646561, 37.952736>,  <26.379499, 34.479698, 38.625076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649860, 34.646561, 37.952736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413067, 34.341858, 37.847454>,  <26.270990, 34.159035, 37.784286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.413067, 34.341858, 37.847454>,  <26.649860, 34.646561, 37.952736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413067, 34.341858, 37.847454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425863, 0.572914, -0.700293,
		0.684251, -0.302471, -0.663560,
		-0.591981, -0.761762, -0.263206,
		26.235472, 34.113331, 37.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734301, 34.631527, 37.182896>,  <26.649860, 34.646561, 37.952736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734301, 34.631527, 37.182896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.414232, 34.413906, 37.283878>,  <26.222191, 34.283333, 37.344467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.414232, 34.413906, 37.283878>,  <26.734301, 34.631527, 37.182896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414232, 34.413906, 37.283878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498409, 0.369014, -0.784485,
		0.333634, -0.753553, -0.566433,
		-0.800173, -0.544046, 0.252462,
		26.174181, 34.250690, 37.359615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486425, 34.126011, 36.612476>,  <26.734301, 34.631527, 37.182896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486425, 34.126011, 36.612476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174471, 34.224045, 36.842854>,  <25.987297, 34.282867, 36.981079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174471, 34.224045, 36.842854>,  <26.486425, 34.126011, 36.612476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174471, 34.224045, 36.842854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571226, 0.097477, -0.814984,
		-0.255885, -0.964588, 0.063980,
		-0.779887, 0.245089, 0.575940,
		25.940504, 34.297573, 37.015636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004314, 33.829224, 36.177097>,  <26.486425, 34.126011, 36.612476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004314, 33.829224, 36.177097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803741, 34.060856, 36.434231>,  <25.683397, 34.199833, 36.588512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803741, 34.060856, 36.434231>,  <26.004314, 33.829224, 36.177097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803741, 34.060856, 36.434231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600926, 0.301441, -0.740285,
		-0.622458, -0.757498, 0.196830,
		-0.501431, 0.579077, 0.642835,
		25.653313, 34.234577, 36.627083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175091, 33.789192, 36.098824>,  <26.004314, 33.829224, 36.177097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175091, 33.789192, 36.098824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.283047, 34.138992, 36.260025>,  <25.347820, 34.348873, 36.356747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.283047, 34.138992, 36.260025>,  <25.175091, 33.789192, 36.098824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283047, 34.138992, 36.260025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565069, 0.482728, -0.669082,
		-0.779652, -0.047144, 0.624436,
		0.269890, 0.874500, 0.403000,
		25.364014, 34.401344, 36.380924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879816, 33.466187, 35.490021>,  <25.175091, 33.789192, 36.098824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879816, 33.466187, 35.490021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.261204, 33.455338, 35.369915>,  <25.490036, 33.448830, 35.297852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.261204, 33.455338, 35.369915>,  <24.879816, 33.466187, 35.490021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261204, 33.455338, 35.369915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055456, -0.994730, -0.086242,
		-0.296346, 0.098881, -0.949948,
		0.953469, -0.027123, -0.300268,
		25.547245, 33.447201, 35.279835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846954, 32.818764, 35.124981>,  <24.879816, 33.466187, 35.490021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846954, 32.818764, 35.124981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.237789, 32.899624, 35.151608>,  <25.472290, 32.948139, 35.167583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.237789, 32.899624, 35.151608>,  <24.846954, 32.818764, 35.124981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237789, 32.899624, 35.151608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204635, -0.978289, -0.032788,
		0.058497, 0.045660, -0.997243,
		0.977089, 0.202152, 0.066571,
		25.530916, 32.960270, 35.171577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253271, 32.506344, 34.595684>,  <24.846954, 32.818764, 35.124981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253271, 32.506344, 34.595684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504930, 32.550430, 34.903458>,  <25.655926, 32.576881, 35.088123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504930, 32.550430, 34.903458>,  <25.253271, 32.506344, 34.595684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504930, 32.550430, 34.903458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363246, -0.916843, -0.165687,
		0.687188, 0.383735, -0.616863,
		0.629146, 0.110215, 0.769433,
		25.693674, 32.583496, 35.134289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919193, 32.144985, 34.429634>,  <25.253271, 32.506344, 34.595684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919193, 32.144985, 34.429634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909061, 32.154984, 34.829380>,  <25.902983, 32.160984, 35.069229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909061, 32.154984, 34.829380>,  <25.919193, 32.144985, 34.429634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909061, 32.154984, 34.829380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544521, -0.838026, 0.034760,
		0.838364, 0.545057, 0.007617,
		-0.025329, 0.024994, 0.999367,
		25.901463, 32.162483, 35.129189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595680, 31.951815, 34.690033>,  <25.919193, 32.144985, 34.429634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595680, 31.951815, 34.690033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355785, 31.879683, 35.001881>,  <26.211849, 31.836403, 35.188988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355785, 31.879683, 35.001881>,  <26.595680, 31.951815, 34.690033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355785, 31.879683, 35.001881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457892, -0.876340, 0.149541,
		0.656242, 0.446665, 0.608143,
		-0.599735, -0.180329, 0.779615,
		26.175865, 31.825584, 35.235764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039558, 31.538929, 35.142448>,  <26.595680, 31.951815, 34.690033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039558, 31.538929, 35.142448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664619, 31.458908, 35.256538>,  <26.439655, 31.410896, 35.324993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664619, 31.458908, 35.256538>,  <27.039558, 31.538929, 35.142448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664619, 31.458908, 35.256538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267301, -0.938042, 0.220515,
		0.223442, 0.282941, 0.932748,
		-0.937350, -0.200052, 0.285228,
		26.383415, 31.398893, 35.342106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099007, 31.228512, 35.778030>,  <27.039558, 31.538929, 35.142448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099007, 31.228512, 35.778030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744513, 31.112705, 35.633385>,  <26.531816, 31.043222, 35.546597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744513, 31.112705, 35.633385>,  <27.099007, 31.228512, 35.778030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744513, 31.112705, 35.633385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149050, -0.917340, 0.369150,
		-0.438599, 0.273256, 0.856132,
		-0.886236, -0.289515, -0.361616,
		26.478642, 31.025850, 35.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823393, 30.944384, 36.390739>,  <27.099007, 31.228512, 35.778030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823393, 30.944384, 36.390739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645403, 30.811205, 36.058201>,  <26.538609, 30.731297, 35.858677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645403, 30.811205, 36.058201>,  <26.823393, 30.944384, 36.390739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645403, 30.811205, 36.058201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025597, -0.923211, 0.383439,
		-0.895177, 0.191901, 0.402283,
		-0.444974, -0.332949, -0.831350,
		26.511911, 30.711321, 35.808796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317175, 30.445318, 36.590824>,  <26.823393, 30.944384, 36.390739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317175, 30.445318, 36.590824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350195, 30.356379, 36.202236>,  <26.370007, 30.303015, 35.969086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350195, 30.356379, 36.202236>,  <26.317175, 30.445318, 36.590824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350195, 30.356379, 36.202236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183322, -0.954771, 0.234104,
		-0.979581, -0.197417, -0.038056,
		0.082551, -0.222347, -0.971466,
		26.374960, 30.289675, 35.910797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019539, 29.785696, 36.577190>,  <26.317175, 30.445318, 36.590824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019539, 29.785696, 36.577190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232626, 29.806396, 36.239307>,  <26.360477, 29.818817, 36.036575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232626, 29.806396, 36.239307>,  <26.019539, 29.785696, 36.577190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232626, 29.806396, 36.239307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168934, -0.984543, 0.046221,
		-0.829261, -0.167323, -0.533225,
		0.532717, 0.051750, -0.844710,
		26.392441, 29.821922, 35.985893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884342, 29.209505, 36.067371>,  <26.019539, 29.785696, 36.577190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884342, 29.209505, 36.067371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240837, 29.353514, 35.957039>,  <26.454733, 29.439919, 35.890839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240837, 29.353514, 35.957039>,  <25.884342, 29.209505, 36.067371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240837, 29.353514, 35.957039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358440, -0.931750, -0.057993,
		-0.277887, -0.047184, -0.959454,
		0.891235, 0.360022, -0.275833,
		26.508207, 29.461521, 35.874290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138405, 28.735250, 35.629642>,  <25.884342, 29.209505, 36.067371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138405, 28.735250, 35.629642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453552, 28.932096, 35.777744>,  <26.642641, 29.050205, 35.866604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453552, 28.932096, 35.777744>,  <26.138405, 28.735250, 35.629642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453552, 28.932096, 35.777744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490123, -0.865077, 0.106868,
		0.372890, 0.097272, -0.922763,
		0.787866, 0.492117, 0.370254,
		26.689913, 29.079731, 35.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680637, 28.418388, 35.260838>,  <26.138405, 28.735250, 35.629642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680637, 28.418388, 35.260838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856489, 28.575962, 35.583710>,  <26.962000, 28.670506, 35.777435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856489, 28.575962, 35.583710>,  <26.680637, 28.418388, 35.260838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856489, 28.575962, 35.583710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442975, -0.876882, 0.186685,
		0.781346, 0.275490, -0.560004,
		0.439628, 0.393933, 0.807183,
		26.988377, 28.694141, 35.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360540, 28.306429, 35.114830>,  <26.680637, 28.418388, 35.260838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360540, 28.306429, 35.114830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326090, 28.367992, 35.508560>,  <27.305420, 28.404930, 35.744797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326090, 28.367992, 35.508560>,  <27.360540, 28.306429, 35.114830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326090, 28.367992, 35.508560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635526, -0.752390, 0.173252,
		0.767261, 0.640485, -0.033012,
		-0.086127, 0.153909, 0.984324,
		27.300251, 28.414165, 35.803856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098202, 28.431952, 35.293625>,  <27.360540, 28.306429, 35.114830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098202, 28.431952, 35.293625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883928, 28.327814, 35.614937>,  <27.755363, 28.265331, 35.807724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883928, 28.327814, 35.614937>,  <28.098202, 28.431952, 35.293625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883928, 28.327814, 35.614937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732444, -0.616635, 0.288595,
		0.420199, 0.742956, 0.521009,
		-0.535686, -0.260342, 0.803283,
		27.723223, 28.249712, 35.855923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659460, 28.237286, 35.779373>,  <28.098202, 28.431952, 35.293625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659460, 28.237286, 35.779373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333544, 28.087070, 35.956047>,  <28.137993, 27.996941, 36.062050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333544, 28.087070, 35.956047>,  <28.659460, 28.237286, 35.779373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333544, 28.087070, 35.956047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577141, -0.597653, 0.556524,
		0.054976, 0.708365, 0.703702,
		-0.814792, -0.375540, 0.441683,
		28.089106, 27.974409, 36.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711609, 28.394838, 36.492161>,  <28.659460, 28.237286, 35.779373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711609, 28.394838, 36.492161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491333, 28.064760, 36.441887>,  <28.359167, 27.866714, 36.411724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491333, 28.064760, 36.441887>,  <28.711609, 28.394838, 36.492161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491333, 28.064760, 36.441887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649024, -0.517986, 0.557188,
		-0.524889, 0.225268, 0.820820,
		-0.550690, -0.825194, -0.125681,
		28.326126, 27.817202, 36.404182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803478, 28.067713, 37.058205>,  <28.711609, 28.394838, 36.492161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803478, 28.067713, 37.058205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596046, 27.773176, 36.884369>,  <28.471586, 27.596455, 36.780067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596046, 27.773176, 36.884369>,  <28.803478, 28.067713, 37.058205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596046, 27.773176, 36.884369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512344, -0.674531, 0.531518,
		-0.684527, 0.052974, 0.727060,
		-0.518582, -0.736343, -0.434594,
		28.440472, 27.552273, 36.753990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609266, 27.624666, 37.525414>,  <28.803478, 28.067713, 37.058205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609266, 27.624666, 37.525414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623669, 27.427820, 37.177498>,  <28.632309, 27.309713, 36.968750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623669, 27.427820, 37.177498>,  <28.609266, 27.624666, 37.525414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623669, 27.427820, 37.177498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593814, -0.689504, 0.414692,
		-0.803796, -0.531422, 0.267398,
		0.036004, -0.492113, -0.869787,
		28.634470, 27.280186, 36.916561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403023, 26.978472, 37.599491>,  <28.609266, 27.624666, 37.525414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403023, 26.978472, 37.599491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585745, 26.929028, 37.247116>,  <28.695379, 26.899361, 37.035690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585745, 26.929028, 37.247116>,  <28.403023, 26.978472, 37.599491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585745, 26.929028, 37.247116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391158, -0.861510, 0.323721,
		-0.798951, -0.492463, -0.345192,
		0.456807, -0.123613, -0.880935,
		28.722788, 26.891943, 36.982834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344482, 26.321709, 37.514538>,  <28.403023, 26.978472, 37.599491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344482, 26.321709, 37.514538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652607, 26.432955, 37.285011>,  <28.837482, 26.499702, 37.147293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652607, 26.432955, 37.285011>,  <28.344482, 26.321709, 37.514538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652607, 26.432955, 37.285011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603322, -0.609215, 0.514646,
		-0.206447, -0.742636, -0.637081,
		0.770314, 0.278118, -0.573819,
		28.883701, 26.516390, 37.112865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745512, 25.684238, 37.188499>,  <28.344482, 26.321709, 37.514538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745512, 25.684238, 37.188499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.983530, 26.005098, 37.208397>,  <29.126341, 26.197615, 37.220333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.983530, 26.005098, 37.208397>,  <28.745512, 25.684238, 37.188499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983530, 26.005098, 37.208397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775525, -0.589331, 0.226383,
		0.210907, -0.096133, -0.972767,
		0.595045, 0.802151, 0.049740,
		29.162045, 26.245745, 37.223320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.229828, 34.486576, 45.203236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841621, 34.412762, 45.265270>,  <35.608700, 34.368473, 45.302490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841621, 34.412762, 45.265270>,  <36.229828, 34.486576, 45.203236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841621, 34.412762, 45.265270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015267, 0.595033, 0.803556,
		-0.240562, 0.782230, -0.574670,
		-0.970514, -0.184531, 0.155085,
		35.550468, 34.357403, 45.311794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867290, 35.117897, 45.183857>,  <36.229828, 34.486576, 45.203236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867290, 35.117897, 45.183857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598270, 34.884216, 45.365578>,  <35.436859, 34.744007, 45.474609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598270, 34.884216, 45.365578>,  <35.867290, 35.117897, 45.183857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598270, 34.884216, 45.365578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055529, 0.651984, 0.756197,
		-0.737966, 0.483353, -0.470931,
		-0.672549, -0.584198, 0.454302,
		35.396507, 34.708958, 45.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542767, 35.582932, 45.446007>,  <35.867290, 35.117897, 45.183857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542767, 35.582932, 45.446007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415764, 35.265995, 45.654388>,  <35.339561, 35.075832, 45.779415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415764, 35.265995, 45.654388>,  <35.542767, 35.582932, 45.446007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415764, 35.265995, 45.654388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342711, 0.608124, 0.716055,
		-0.884161, 0.048814, -0.464625,
		-0.317503, -0.792340, 0.520951,
		35.320515, 35.028294, 45.810673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895832, 35.733040, 45.737648>,  <35.542767, 35.582932, 45.446007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895832, 35.733040, 45.737648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003098, 35.415958, 45.956631>,  <35.067455, 35.225708, 46.088020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003098, 35.415958, 45.956631>,  <34.895832, 35.733040, 45.737648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003098, 35.415958, 45.956631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318279, 0.463463, 0.826983,
		-0.909279, -0.396008, -0.128019,
		0.268160, -0.792704, 0.547458,
		35.083546, 35.178146, 46.120869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336769, 35.306694, 46.080681>,  <34.895832, 35.733040, 45.737648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336769, 35.306694, 46.080681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658794, 35.264702, 46.314213>,  <34.852009, 35.239506, 46.454330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658794, 35.264702, 46.314213>,  <34.336769, 35.306694, 46.080681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658794, 35.264702, 46.314213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508446, 0.384848, 0.770308,
		-0.305552, -0.916991, 0.256450,
		0.805060, -0.104978, 0.583831,
		34.900311, 35.233208, 46.489361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975273, 35.193230, 46.712429>,  <34.336769, 35.306694, 46.080681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975273, 35.193230, 46.712429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359131, 35.264294, 46.799618>,  <34.589447, 35.306934, 46.851933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359131, 35.264294, 46.799618>,  <33.975273, 35.193230, 46.712429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359131, 35.264294, 46.799618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280538, 0.551435, 0.785632,
		0.019380, -0.815080, 0.579025,
		0.959647, 0.177664, 0.217974,
		34.647026, 35.317593, 46.865009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121220, 34.927361, 47.365280>,  <33.975273, 35.193230, 46.712429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121220, 34.927361, 47.365280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418556, 35.193970, 47.342697>,  <34.596958, 35.353935, 47.329147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418556, 35.193970, 47.342697>,  <34.121220, 34.927361, 47.365280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418556, 35.193970, 47.342697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312725, 0.420897, 0.851498,
		0.591310, -0.615295, 0.521309,
		0.743340, 0.666526, -0.056462,
		34.641560, 35.393929, 47.325760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450157, 34.843014, 47.959801>,  <34.121220, 34.927361, 47.365280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450157, 34.843014, 47.959801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521187, 35.208099, 47.812599>,  <34.563805, 35.427151, 47.724277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521187, 35.208099, 47.812599>,  <34.450157, 34.843014, 47.959801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521187, 35.208099, 47.812599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350447, 0.408083, 0.843004,
		0.919594, -0.020733, 0.392323,
		0.177578, 0.912709, -0.368005,
		34.574459, 35.481911, 47.702198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753559, 35.175884, 48.422573>,  <34.450157, 34.843014, 47.959801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753559, 35.175884, 48.422573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634220, 35.501617, 48.223434>,  <34.562618, 35.697056, 48.103951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634220, 35.501617, 48.223434>,  <34.753559, 35.175884, 48.422573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634220, 35.501617, 48.223434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438881, 0.346140, 0.829199,
		0.847569, 0.465883, 0.254127,
		-0.298346, 0.814335, -0.497845,
		34.544716, 35.745918, 48.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947063, 35.773888, 48.775063>,  <34.753559, 35.175884, 48.422573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947063, 35.773888, 48.775063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659561, 35.906898, 48.530827>,  <34.487061, 35.986706, 48.384285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.659561, 35.906898, 48.530827>,  <34.947063, 35.773888, 48.775063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659561, 35.906898, 48.530827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543734, 0.278472, 0.791711,
		0.433297, 0.901044, -0.019347,
		-0.718754, 0.332526, -0.610590,
		34.443935, 36.006657, 48.347649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882366, 36.497036, 49.081142>,  <34.947063, 35.773888, 48.775063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882366, 36.497036, 49.081142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556011, 36.408047, 48.867661>,  <34.360199, 36.354652, 48.739571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556011, 36.408047, 48.867661>,  <34.882366, 36.497036, 49.081142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556011, 36.408047, 48.867661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577102, 0.370553, 0.727766,
		0.035853, 0.901773, -0.430721,
		-0.815884, -0.222477, -0.533701,
		34.311245, 36.341305, 48.707550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489613, 37.058437, 49.073219>,  <34.882366, 36.497036, 49.081142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489613, 37.058437, 49.073219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251003, 36.748203, 48.990631>,  <34.107838, 36.562061, 48.941078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251003, 36.748203, 48.990631>,  <34.489613, 37.058437, 49.073219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251003, 36.748203, 48.990631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586807, 0.245946, 0.771471,
		-0.547560, 0.581358, -0.601831,
		-0.596519, -0.775586, -0.206475,
		34.072048, 36.515526, 48.928688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895939, 37.398899, 48.933544>,  <34.489613, 37.058437, 49.073219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895939, 37.398899, 48.933544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836479, 37.022190, 49.054192>,  <33.800804, 36.796165, 49.126579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836479, 37.022190, 49.054192>,  <33.895939, 37.398899, 48.933544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836479, 37.022190, 49.054192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527266, 0.333510, 0.781512,
		-0.836597, -0.042863, -0.546139,
		-0.148645, -0.941772, 0.301614,
		33.791885, 36.739658, 49.144676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573410, 38.022915, 48.934284>,  <33.895939, 37.398899, 48.933544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573410, 38.022915, 48.934284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275936, 37.876125, 48.710758>,  <33.097454, 37.788052, 48.576645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275936, 37.876125, 48.710758>,  <33.573410, 38.022915, 48.934284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275936, 37.876125, 48.710758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067395, -0.790464, 0.608789,
		-0.665129, 0.490406, 0.563121,
		-0.743681, -0.366972, -0.558811,
		33.052834, 37.766033, 48.543114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031219, 38.612926, 49.144314>,  <33.573410, 38.022915, 48.934284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031219, 38.612926, 49.144314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926304, 38.987080, 49.049431>,  <33.863354, 39.211571, 48.992500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926304, 38.987080, 49.049431>,  <34.031219, 38.612926, 49.144314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926304, 38.987080, 49.049431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079281, -0.224094, -0.971337,
		-0.961727, -0.273578, -0.015381,
		-0.262290, 0.935381, -0.237207,
		33.847618, 39.267693, 48.978268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446861, 38.736237, 48.650578>,  <34.031219, 38.612926, 49.144314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446861, 38.736237, 48.650578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701828, 39.040771, 48.603134>,  <33.854809, 39.223492, 48.574669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701828, 39.040771, 48.603134>,  <33.446861, 38.736237, 48.650578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701828, 39.040771, 48.603134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116777, -0.247614, -0.961796,
		-0.761617, 0.599216, -0.246740,
		0.637419, 0.761333, -0.118612,
		33.893055, 39.269173, 48.567551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257877, 39.110374, 48.070084>,  <33.446861, 38.736237, 48.650578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257877, 39.110374, 48.070084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642239, 39.206360, 48.125343>,  <33.872856, 39.263950, 48.158501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642239, 39.206360, 48.125343>,  <33.257877, 39.110374, 48.070084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642239, 39.206360, 48.125343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193826, -0.226645, -0.954496,
		-0.197730, 0.943955, -0.264294,
		0.960903, 0.239960, 0.138149,
		33.930508, 39.278347, 48.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444481, 39.448559, 47.498737>,  <33.257877, 39.110374, 48.070084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444481, 39.448559, 47.498737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778294, 39.296627, 47.658379>,  <33.978580, 39.205467, 47.754166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778294, 39.296627, 47.658379>,  <33.444481, 39.448559, 47.498737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778294, 39.296627, 47.658379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254052, -0.377495, -0.890480,
		0.488891, 0.844528, -0.218535,
		0.834532, -0.379829, 0.399107,
		34.028652, 39.182678, 47.778111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901680, 39.501377, 47.031918>,  <33.444481, 39.448559, 47.498737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901680, 39.501377, 47.031918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130833, 39.243153, 47.233932>,  <34.268326, 39.088219, 47.355141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130833, 39.243153, 47.233932>,  <33.901680, 39.501377, 47.031918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130833, 39.243153, 47.233932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295992, -0.411645, -0.861938,
		0.764326, 0.643275, -0.044744,
		0.572882, -0.645558, 0.505035,
		34.302696, 39.049484, 47.385445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483829, 39.449844, 46.590172>,  <33.901680, 39.501377, 47.031918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483829, 39.449844, 46.590172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545139, 39.127777, 46.819332>,  <34.581924, 38.934536, 46.956829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545139, 39.127777, 46.819332>,  <34.483829, 39.449844, 46.590172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545139, 39.127777, 46.819332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389323, -0.483653, -0.783905,
		0.908258, 0.343198, 0.239337,
		0.153279, -0.805168, 0.572897,
		34.591122, 38.886227, 46.991199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127285, 39.297798, 46.430557>,  <34.483829, 39.449844, 46.590172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127285, 39.297798, 46.430557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957779, 38.974770, 46.594631>,  <34.856075, 38.780952, 46.693077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957779, 38.974770, 46.594631>,  <35.127285, 39.297798, 46.430557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957779, 38.974770, 46.594631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309486, -0.554701, -0.772350,
		0.851258, -0.200349, 0.484995,
		-0.423767, -0.807568, 0.410189,
		34.830650, 38.732498, 46.717690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608795, 38.928520, 46.686623>,  <35.127285, 39.297798, 46.430557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608795, 38.928520, 46.686623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310894, 38.674538, 46.604473>,  <35.132153, 38.522148, 46.555183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310894, 38.674538, 46.604473>,  <35.608795, 38.928520, 46.686623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310894, 38.674538, 46.604473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582842, -0.468997, -0.663579,
		0.325022, -0.613902, 0.719365,
		-0.744752, -0.634953, -0.205374,
		35.087467, 38.484051, 46.542862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888397, 38.309891, 46.724693>,  <35.608795, 38.928520, 46.686623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888397, 38.309891, 46.724693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558876, 38.198048, 46.527447>,  <35.361164, 38.130943, 46.409100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558876, 38.198048, 46.527447>,  <35.888397, 38.309891, 46.724693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558876, 38.198048, 46.527447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565465, -0.344053, -0.749584,
		0.039930, -0.896352, 0.441541,
		-0.823805, -0.279607, -0.493118,
		35.311733, 38.114166, 46.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110020, 37.692753, 46.454632>,  <35.888397, 38.309891, 46.724693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110020, 37.692753, 46.454632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797039, 37.832104, 46.248177>,  <35.609249, 37.915714, 46.124302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797039, 37.832104, 46.248177>,  <36.110020, 37.692753, 46.454632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797039, 37.832104, 46.248177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351085, -0.437759, -0.827711,
		-0.514305, -0.828852, 0.220214,
		-0.782451, 0.348382, -0.516139,
		35.562302, 37.936619, 46.093334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016315, 37.137188, 46.004761>,  <36.110020, 37.692753, 46.454632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016315, 37.137188, 46.004761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800476, 37.423077, 45.826771>,  <35.670971, 37.594612, 45.719978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800476, 37.423077, 45.826771>,  <36.016315, 37.137188, 46.004761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800476, 37.423077, 45.826771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009653, -0.523235, -0.852134,
		-0.841868, -0.464105, 0.275437,
		-0.539598, 0.714725, -0.444975,
		35.638596, 37.637493, 45.693279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524448, 36.802235, 45.616623>,  <36.016315, 37.137188, 46.004761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524448, 36.802235, 45.616623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550709, 37.165329, 45.450871>,  <35.566467, 37.383186, 45.351418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550709, 37.165329, 45.450871>,  <35.524448, 36.802235, 45.616623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550709, 37.165329, 45.450871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085188, -0.418860, -0.904046,
		-0.994199, 0.024054, -0.104828,
		0.065654, 0.907732, -0.414381,
		35.570404, 37.437649, 45.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242149, 36.707916, 45.005417>,  <35.524448, 36.802235, 45.616623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242149, 36.707916, 45.005417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462906, 37.034252, 44.936337>,  <35.595360, 37.230053, 44.894890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462906, 37.034252, 44.936337>,  <35.242149, 36.707916, 45.005417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462906, 37.034252, 44.936337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215669, -0.339682, -0.915480,
		-0.805548, 0.467996, -0.363418,
		0.551887, 0.815841, -0.172698,
		35.628471, 37.279003, 44.884525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973339, 36.916859, 44.356987>,  <35.242149, 36.707916, 45.005417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973339, 36.916859, 44.356987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335712, 37.074661, 44.418499>,  <35.553139, 37.169342, 44.455406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335712, 37.074661, 44.418499>,  <34.973339, 36.916859, 44.356987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335712, 37.074661, 44.418499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342762, -0.470074, -0.813354,
		-0.248584, 0.789556, -0.561077,
		0.905936, 0.394503, 0.153777,
		35.607494, 37.193012, 44.464634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429462, 37.435677, 44.299042>,  <34.973339, 36.916859, 44.356987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429462, 37.435677, 44.299042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091496, 37.521736, 44.103153>,  <33.888714, 37.573372, 43.985622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091496, 37.521736, 44.103153>,  <34.429462, 37.435677, 44.299042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091496, 37.521736, 44.103153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381124, 0.400239, 0.833399,
		0.375305, 0.890799, -0.256172,
		-0.844920, 0.215146, -0.489717,
		33.838020, 37.586281, 43.956238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181202, 38.177650, 44.414974>,  <34.429462, 37.435677, 44.299042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181202, 38.177650, 44.414974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855381, 37.980423, 44.292740>,  <33.659889, 37.862087, 44.219398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855381, 37.980423, 44.292740>,  <34.181202, 38.177650, 44.414974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855381, 37.980423, 44.292740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502329, 0.336096, 0.796684,
		-0.290116, 0.802447, -0.521452,
		-0.814554, -0.493071, -0.305585,
		33.611015, 37.832500, 44.201065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617889, 38.705364, 44.396690>,  <34.181202, 38.177650, 44.414974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617889, 38.705364, 44.396690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454807, 38.340614, 44.415676>,  <33.356956, 38.121765, 44.427067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454807, 38.340614, 44.415676>,  <33.617889, 38.705364, 44.396690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454807, 38.340614, 44.415676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577320, 0.297701, 0.760313,
		-0.707443, 0.282583, -0.647821,
		-0.407708, -0.911878, 0.047465,
		33.332497, 38.067051, 44.429916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891407, 38.871750, 44.439594>,  <33.617889, 38.705364, 44.396690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891407, 38.871750, 44.439594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904491, 38.486782, 44.547432>,  <32.912342, 38.255802, 44.612137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904491, 38.486782, 44.547432>,  <32.891407, 38.871750, 44.439594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904491, 38.486782, 44.547432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610101, 0.194428, 0.768098,
		-0.791648, -0.189606, -0.580812,
		0.032710, -0.962418, 0.269598,
		32.914303, 38.198055, 44.628311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148449, 38.594234, 44.415230>,  <32.891407, 38.871750, 44.439594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148449, 38.594234, 44.415230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383999, 38.382416, 44.659462>,  <32.525330, 38.255325, 44.806000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383999, 38.382416, 44.659462>,  <32.148449, 38.594234, 44.415230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383999, 38.382416, 44.659462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536021, 0.309521, 0.785416,
		-0.604901, -0.789795, -0.101578,
		0.588877, -0.529547, 0.610576,
		32.560661, 38.223553, 44.842636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715128, 38.284363, 44.976017>,  <32.148449, 38.594234, 44.415230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715128, 38.284363, 44.976017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079403, 38.259651, 45.139400>,  <32.297966, 38.244823, 45.237431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079403, 38.259651, 45.139400>,  <31.715128, 38.284363, 44.976017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079403, 38.259651, 45.139400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367674, 0.329544, 0.869607,
		-0.188330, -0.942117, 0.277395,
		0.910685, -0.061783, 0.408455,
		32.352608, 38.241116, 45.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579128, 37.969494, 45.587986>,  <31.715128, 38.284363, 44.976017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579128, 37.969494, 45.587986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922354, 38.172691, 45.618099>,  <32.128288, 38.294609, 45.636169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922354, 38.172691, 45.618099>,  <31.579128, 37.969494, 45.587986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922354, 38.172691, 45.618099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353284, 0.477518, 0.804467,
		0.372710, -0.716884, 0.589207,
		0.858066, 0.507990, 0.075287,
		32.179775, 38.325089, 45.640686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198122, 37.346699, 45.955112>,  <31.579128, 37.969494, 45.587986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198122, 37.346699, 45.955112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817476, 37.410645, 45.850136>,  <30.589088, 37.449013, 45.787151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817476, 37.410645, 45.850136>,  <31.198122, 37.346699, 45.955112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817476, 37.410645, 45.850136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246094, -0.114995, -0.962400,
		-0.184038, -0.980417, 0.070088,
		-0.951613, 0.159869, -0.262438,
		30.531992, 37.458603, 45.771404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031481, 36.801437, 45.541725>,  <31.198122, 37.346699, 45.955112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031481, 36.801437, 45.541725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763422, 37.079418, 45.437462>,  <30.602587, 37.246208, 45.374905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763422, 37.079418, 45.437462>,  <31.031481, 36.801437, 45.541725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763422, 37.079418, 45.437462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127966, -0.237749, -0.962860,
		-0.731115, -0.678613, 0.070396,
		-0.670146, 0.694953, -0.260661,
		30.562378, 37.287903, 45.359264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550207, 36.511417, 45.080288>,  <31.031481, 36.801437, 45.541725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550207, 36.511417, 45.080288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523014, 36.904598, 45.011948>,  <30.506699, 37.140507, 44.970943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523014, 36.904598, 45.011948>,  <30.550207, 36.511417, 45.080288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523014, 36.904598, 45.011948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069731, -0.166144, -0.983633,
		-0.995247, -0.078783, -0.057247,
		-0.067982, 0.982949, -0.170848,
		30.502619, 37.199482, 44.960693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156036, 36.571991, 44.540546>,  <30.550207, 36.511417, 45.080288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156036, 36.571991, 44.540546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.333996, 36.930222, 44.539959>,  <30.440771, 37.145161, 44.539608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.333996, 36.930222, 44.539959>,  <30.156036, 36.571991, 44.540546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333996, 36.930222, 44.539959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031949, -0.017505, -0.999336,
		-0.895010, 0.444559, -0.036401,
		0.444901, 0.895579, -0.001464,
		30.467466, 37.198895, 44.539520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730598, 37.035378, 44.121315>,  <30.156036, 36.571991, 44.540546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730598, 37.035378, 44.121315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089716, 37.211189, 44.132465>,  <30.305187, 37.316677, 44.139156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.089716, 37.211189, 44.132465>,  <29.730598, 37.035378, 44.121315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089716, 37.211189, 44.132465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009199, 0.082000, -0.996590,
		-0.440321, 0.894475, 0.077663,
		0.897793, 0.439534, 0.027878,
		30.359055, 37.343048, 44.140827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702450, 37.743698, 43.627254>,  <29.730598, 37.035378, 44.121315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702450, 37.743698, 43.627254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078465, 37.627041, 43.697994>,  <30.304073, 37.557045, 43.740437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078465, 37.627041, 43.697994>,  <29.702450, 37.743698, 43.627254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078465, 37.627041, 43.697994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197037, 0.041121, -0.979533,
		0.278406, 0.955641, 0.096121,
		0.940035, -0.291647, 0.176849,
		30.360476, 37.539547, 43.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054932, 38.231609, 43.297119>,  <29.702450, 37.743698, 43.627254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054932, 38.231609, 43.297119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322107, 37.939625, 43.355114>,  <30.482412, 37.764435, 43.389912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322107, 37.939625, 43.355114>,  <30.054932, 38.231609, 43.297119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322107, 37.939625, 43.355114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170623, -0.039428, -0.984547,
		0.724394, 0.682355, 0.098212,
		0.667938, -0.729957, 0.144987,
		30.522490, 37.720638, 43.398609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.612919, 33.671249, 48.974758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875805, 33.971527, 48.947857>,  <32.033535, 34.151695, 48.931717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.875805, 33.971527, 48.947857>,  <31.612919, 33.671249, 48.974758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875805, 33.971527, 48.947857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122393, 0.018252, -0.992314,
		-0.743698, 0.660396, 0.103876,
		0.657216, 0.750696, -0.067254,
		32.072971, 34.196735, 48.927681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343781, 34.302158, 48.619133>,  <31.612919, 33.671249, 48.974758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343781, 34.302158, 48.619133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741241, 34.293781, 48.574928>,  <31.979719, 34.288757, 48.548405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741241, 34.293781, 48.574928>,  <31.343781, 34.302158, 48.619133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741241, 34.293781, 48.574928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110719, -0.009196, -0.993809,
		0.019793, 0.999739, -0.011456,
		0.993655, -0.020938, -0.110508,
		32.039337, 34.287498, 48.541775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467661, 34.793640, 48.015232>,  <31.343781, 34.302158, 48.619133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467661, 34.793640, 48.015232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.781395, 34.549812, 48.061264>,  <31.969635, 34.403515, 48.088882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.781395, 34.549812, 48.061264>,  <31.467661, 34.793640, 48.015232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781395, 34.549812, 48.061264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100374, -0.307771, -0.946151,
		0.612163, 0.730549, -0.302581,
		0.784335, -0.609570, 0.115078,
		32.016697, 34.366940, 48.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903221, 34.869377, 47.447998>,  <31.467661, 34.793640, 48.015232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903221, 34.869377, 47.447998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026890, 34.512882, 47.580730>,  <32.101089, 34.298985, 47.660370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026890, 34.512882, 47.580730>,  <31.903221, 34.869377, 47.447998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026890, 34.512882, 47.580730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055542, -0.331407, -0.941852,
		0.949383, 0.309625, -0.052961,
		0.309172, -0.891236, 0.331829,
		32.119640, 34.245510, 47.680279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443172, 34.665890, 46.962780>,  <31.903221, 34.869377, 47.447998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443172, 34.665890, 46.962780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360180, 34.318096, 47.142090>,  <32.310383, 34.109421, 47.249676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360180, 34.318096, 47.142090>,  <32.443172, 34.665890, 46.962780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360180, 34.318096, 47.142090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052975, -0.467564, -0.882371,
		0.976803, -0.159328, 0.143072,
		-0.207482, -0.869482, 0.448277,
		32.297935, 34.057251, 47.276573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032982, 34.304909, 46.783764>,  <32.443172, 34.665890, 46.962780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032982, 34.304909, 46.783764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717705, 34.081955, 46.888123>,  <32.528538, 33.948181, 46.950737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717705, 34.081955, 46.888123>,  <33.032982, 34.304909, 46.783764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717705, 34.081955, 46.888123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051433, -0.482104, -0.874603,
		0.613273, -0.675938, 0.408660,
		-0.788194, -0.557389, 0.260896,
		32.481247, 33.914738, 46.966393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153717, 33.628586, 46.596031>,  <33.032982, 34.304909, 46.783764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153717, 33.628586, 46.596031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.755337, 33.659504, 46.614407>,  <32.516308, 33.678055, 46.625431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.755337, 33.659504, 46.614407>,  <33.153717, 33.628586, 46.596031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755337, 33.659504, 46.614407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072022, -0.379900, -0.922220,
		-0.053834, -0.921792, 0.383928,
		-0.995949, 0.077298, 0.045937,
		32.456551, 33.682693, 46.628189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947067, 32.945995, 46.467705>,  <33.153717, 33.628586, 46.596031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947067, 32.945995, 46.467705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623451, 33.166607, 46.386436>,  <32.429283, 33.298973, 46.337677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623451, 33.166607, 46.386436>,  <32.947067, 32.945995, 46.467705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623451, 33.166607, 46.386436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109805, -0.481410, -0.869590,
		-0.577411, -0.681221, 0.450039,
		-0.809036, 0.551527, -0.203170,
		32.380741, 33.332066, 46.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306328, 32.468945, 46.527443>,  <32.947067, 32.945995, 46.467705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306328, 32.468945, 46.527443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207466, 32.783310, 46.300724>,  <32.148151, 32.971928, 46.164692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207466, 32.783310, 46.300724>,  <32.306328, 32.468945, 46.527443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207466, 32.783310, 46.300724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212310, -0.614653, -0.759688,
		-0.945432, -0.067420, 0.318767,
		-0.247149, 0.785911, -0.566799,
		32.133320, 33.019085, 46.130684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779783, 32.278919, 46.223679>,  <32.306328, 32.468945, 46.527443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779783, 32.278919, 46.223679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888363, 32.573299, 45.975582>,  <31.953510, 32.749928, 45.826725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888363, 32.573299, 45.975582>,  <31.779783, 32.278919, 46.223679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888363, 32.573299, 45.975582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146298, -0.605396, -0.782363,
		-0.951269, 0.303112, -0.056667,
		0.271450, 0.735947, -0.620239,
		31.969797, 32.794083, 45.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386534, 32.155159, 45.617874>,  <31.779783, 32.278919, 46.223679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386534, 32.155159, 45.617874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680748, 32.393223, 45.488400>,  <31.857277, 32.536060, 45.410713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680748, 32.393223, 45.488400>,  <31.386534, 32.155159, 45.617874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680748, 32.393223, 45.488400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086537, -0.556403, -0.826394,
		-0.671936, 0.579832, -0.460757,
		0.735537, 0.595156, -0.323690,
		31.901409, 32.571770, 45.391293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197241, 32.337814, 44.919659>,  <31.386534, 32.155159, 45.617874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197241, 32.337814, 44.919659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.591764, 32.377548, 44.972309>,  <31.828480, 32.401386, 45.003899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.591764, 32.377548, 44.972309>,  <31.197241, 32.337814, 44.919659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591764, 32.377548, 44.972309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164532, -0.646100, -0.745308,
		0.011011, 0.756761, -0.653599,
		0.986310, 0.099332, 0.131626,
		31.887657, 32.407349, 45.011795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888161, 33.035671, 44.737999>,  <31.197241, 32.337814, 44.919659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888161, 33.035671, 44.737999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566341, 33.193264, 44.560242>,  <30.373251, 33.287819, 44.453587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566341, 33.193264, 44.560242>,  <30.888161, 33.035671, 44.737999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566341, 33.193264, 44.560242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284215, 0.401601, 0.870597,
		0.521466, 0.826738, -0.211132,
		-0.804546, 0.393980, -0.444393,
		30.324978, 33.311459, 44.426926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837051, 33.671928, 45.098312>,  <30.888161, 33.035671, 44.737999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837051, 33.671928, 45.098312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480804, 33.647476, 44.918060>,  <30.267057, 33.632805, 44.809910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480804, 33.647476, 44.918060>,  <30.837051, 33.671928, 45.098312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480804, 33.647476, 44.918060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421081, 0.485083, 0.766411,
		0.171739, 0.872329, -0.457764,
		-0.890616, -0.061133, -0.450629,
		30.213619, 33.629135, 44.782871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534643, 34.319714, 45.147709>,  <30.837051, 33.671928, 45.098312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534643, 34.319714, 45.147709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240570, 34.055294, 45.087669>,  <30.064127, 33.896645, 45.051643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240570, 34.055294, 45.087669>,  <30.534643, 34.319714, 45.147709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240570, 34.055294, 45.087669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498011, 0.376483, 0.781183,
		-0.459886, 0.649062, -0.605990,
		-0.735180, -0.661044, -0.150101,
		30.020016, 33.856979, 45.042641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941462, 34.680408, 45.259857>,  <30.534643, 34.319714, 45.147709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941462, 34.680408, 45.259857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822699, 34.298820, 45.276745>,  <29.751440, 34.069866, 45.286877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822699, 34.298820, 45.276745>,  <29.941462, 34.680408, 45.259857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822699, 34.298820, 45.276745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522838, 0.199400, 0.828782,
		-0.799053, 0.224000, -0.557977,
		-0.296908, -0.953973, 0.042215,
		29.733625, 34.012630, 45.289410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178776, 34.705494, 45.186687>,  <29.941462, 34.680408, 45.259857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178776, 34.705494, 45.186687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270046, 34.367619, 45.380363>,  <29.324808, 34.164894, 45.496571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270046, 34.367619, 45.380363>,  <29.178776, 34.705494, 45.186687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270046, 34.367619, 45.380363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616468, 0.259581, 0.743361,
		-0.753593, -0.468105, -0.461492,
		0.228176, -0.844687, 0.484190,
		29.338499, 34.114212, 45.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518650, 34.428642, 45.478935>,  <29.178776, 34.705494, 45.186687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518650, 34.428642, 45.478935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.790613, 34.223263, 45.688351>,  <28.953791, 34.100033, 45.813999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.790613, 34.223263, 45.688351>,  <28.518650, 34.428642, 45.478935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790613, 34.223263, 45.688351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569458, 0.080107, 0.818108,
		-0.461998, -0.854371, -0.237924,
		0.679909, -0.513451, 0.523537,
		28.994585, 34.069229, 45.845413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119265, 34.111214, 45.981712>,  <28.518650, 34.428642, 45.478935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119265, 34.111214, 45.981712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.483673, 34.100700, 46.146320>,  <28.702318, 34.094391, 46.245087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.483673, 34.100700, 46.146320>,  <28.119265, 34.111214, 45.981712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483673, 34.100700, 46.146320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393061, 0.246386, 0.885888,
		-0.124680, -0.968815, 0.214131,
		0.911020, -0.026286, 0.411523,
		28.756979, 34.092815, 46.269775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212709, 33.626030, 46.667828>,  <28.119265, 34.111214, 45.981712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212709, 33.626030, 46.667828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500740, 33.903576, 46.670612>,  <28.673557, 34.070103, 46.672283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500740, 33.903576, 46.670612>,  <28.212709, 33.626030, 46.667828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500740, 33.903576, 46.670612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222500, 0.221377, 0.949466,
		0.657257, -0.685236, 0.313792,
		0.720074, 0.693862, 0.006964,
		28.716763, 34.111732, 46.672703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334915, 33.726261, 47.351662>,  <28.212709, 33.626030, 46.667828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334915, 33.726261, 47.351662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.545069, 34.040932, 47.221977>,  <28.671162, 34.229733, 47.144165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.545069, 34.040932, 47.221977>,  <28.334915, 33.726261, 47.351662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545069, 34.040932, 47.221977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093242, 0.431975, 0.897052,
		0.845740, -0.441068, 0.300305,
		0.525386, 0.786674, -0.324212,
		28.702684, 34.276936, 47.124714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901627, 33.873142, 47.810497>,  <28.334915, 33.726261, 47.351662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901627, 33.873142, 47.810497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.857252, 34.223839, 47.623302>,  <28.830627, 34.434258, 47.510986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.857252, 34.223839, 47.623302>,  <28.901627, 33.873142, 47.810497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857252, 34.223839, 47.623302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103480, 0.458142, 0.882835,
		0.988425, 0.146366, 0.039901,
		-0.110937, 0.876746, -0.467985,
		28.823971, 34.486862, 47.482906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403193, 34.294548, 48.110565>,  <28.901627, 33.873142, 47.810497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403193, 34.294548, 48.110565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.100872, 34.501583, 47.950130>,  <28.919479, 34.625805, 47.853870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.100872, 34.501583, 47.950130>,  <29.403193, 34.294548, 48.110565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100872, 34.501583, 47.950130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066084, 0.549106, 0.833136,
		0.651457, 0.656191, -0.380812,
		-0.755802, 0.517586, -0.401083,
		28.874132, 34.656860, 47.829807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574852, 34.942364, 48.345512>,  <29.403193, 34.294548, 48.110565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574852, 34.942364, 48.345512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193962, 34.951920, 48.223728>,  <28.965427, 34.957653, 48.150658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193962, 34.951920, 48.223728>,  <29.574852, 34.942364, 48.345512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193962, 34.951920, 48.223728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237476, 0.568902, 0.787372,
		0.192022, 0.822058, -0.536049,
		-0.952225, 0.023894, -0.304461,
		28.908295, 34.959087, 48.132389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407732, 35.634655, 48.332119>,  <29.574852, 34.942364, 48.345512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407732, 35.634655, 48.332119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065681, 35.429165, 48.359955>,  <28.860451, 35.305870, 48.376656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.065681, 35.429165, 48.359955>,  <29.407732, 35.634655, 48.332119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065681, 35.429165, 48.359955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225585, 0.489594, 0.842264,
		-0.466767, 0.704543, -0.534554,
		-0.855126, -0.513729, 0.069592,
		28.809143, 35.275047, 48.380833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986097, 36.133316, 48.415760>,  <29.407732, 35.634655, 48.332119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986097, 36.133316, 48.415760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.861210, 35.782902, 48.562771>,  <28.786278, 35.572651, 48.650978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.861210, 35.782902, 48.562771>,  <28.986097, 36.133316, 48.415760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861210, 35.782902, 48.562771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248816, 0.448766, 0.858312,
		-0.916848, 0.176534, -0.358086,
		-0.312218, -0.876039, 0.367526,
		28.767544, 35.520088, 48.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748346, 36.846825, 48.044147>,  <28.986097, 36.133316, 48.415760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748346, 36.846825, 48.044147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.919502, 37.201557, 48.113945>,  <29.022196, 37.414394, 48.155823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.919502, 37.201557, 48.113945>,  <28.748346, 36.846825, 48.044147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919502, 37.201557, 48.113945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391157, -0.007647, -0.920292,
		-0.814806, 0.462038, -0.350161,
		0.427888, 0.886827, 0.174498,
		29.047869, 37.467606, 48.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544531, 37.291901, 47.463219>,  <28.748346, 36.846825, 48.044147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544531, 37.291901, 47.463219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.850203, 37.461895, 47.657295>,  <29.033606, 37.563892, 47.773743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.850203, 37.461895, 47.657295>,  <28.544531, 37.291901, 47.463219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850203, 37.461895, 47.657295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450199, 0.187248, -0.873075,
		-0.461897, 0.885621, -0.048237,
		0.764181, 0.424987, 0.485195,
		29.079456, 37.589390, 47.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572283, 37.838406, 47.093121>,  <28.544531, 37.291901, 47.463219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572283, 37.838406, 47.093121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.937971, 37.776314, 47.242844>,  <29.157385, 37.739059, 47.332676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.937971, 37.776314, 47.242844>,  <28.572283, 37.838406, 47.093121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937971, 37.776314, 47.242844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396343, 0.150302, -0.905716,
		0.084333, 0.976378, 0.198932,
		0.914221, -0.155227, 0.374305,
		29.212238, 37.729744, 47.355137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018015, 38.351692, 46.877468>,  <28.572283, 37.838406, 47.093121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018015, 38.351692, 46.877468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.267723, 38.062271, 46.995289>,  <29.417547, 37.888618, 47.065983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.267723, 38.062271, 46.995289>,  <29.018015, 38.351692, 46.877468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267723, 38.062271, 46.995289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287029, -0.138241, -0.947894,
		0.726568, 0.676289, 0.121379,
		0.624270, -0.723549, 0.294556,
		29.455004, 37.845207, 47.083656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709173, 38.454792, 46.515736>,  <29.018015, 38.351692, 46.877468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709173, 38.454792, 46.515736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772331, 38.079277, 46.638210>,  <29.810226, 37.853970, 46.711697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772331, 38.079277, 46.638210>,  <29.709173, 38.454792, 46.515736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772331, 38.079277, 46.638210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548487, -0.174465, -0.817755,
		0.821116, 0.297063, 0.487363,
		0.157897, -0.938784, 0.306191,
		29.819700, 37.797642, 46.730068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435219, 38.354382, 46.582615>,  <29.709173, 38.454792, 46.515736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435219, 38.354382, 46.582615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.254036, 38.001545, 46.530861>,  <30.145327, 37.789845, 46.499809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.254036, 38.001545, 46.530861>,  <30.435219, 38.354382, 46.582615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254036, 38.001545, 46.530861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459129, -0.106393, -0.881976,
		0.764218, -0.458905, 0.453186,
		-0.452959, -0.882092, -0.129389,
		30.118149, 37.736916, 46.492043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969595, 37.982552, 46.244755>,  <30.435219, 38.354382, 46.582615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969595, 37.982552, 46.244755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.636238, 37.782391, 46.150898>,  <30.436224, 37.662296, 46.094582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.636238, 37.782391, 46.150898>,  <30.969595, 37.982552, 46.244755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636238, 37.782391, 46.150898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334206, -0.118134, -0.935067,
		0.440187, -0.857697, 0.265688,
		-0.833391, -0.500399, -0.234647,
		30.386221, 37.632271, 46.080505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759876, 37.878731, 46.290794>,  <30.969595, 37.982552, 46.244755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759876, 37.878731, 46.290794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951494, 38.203629, 46.157661>,  <32.066467, 38.398567, 46.077782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951494, 38.203629, 46.157661>,  <31.759876, 37.878731, 46.290794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951494, 38.203629, 46.157661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231290, 0.482566, 0.844769,
		0.846770, -0.327704, 0.419035,
		0.479046, 0.812244, -0.332828,
		32.095207, 38.447300, 46.057812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097969, 38.109806, 46.855293>,  <31.759876, 37.878731, 46.290794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097969, 38.109806, 46.855293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.102692, 38.429848, 46.615395>,  <32.105526, 38.621872, 46.471455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.102692, 38.429848, 46.615395>,  <32.097969, 38.109806, 46.855293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102692, 38.429848, 46.615395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117325, 0.596754, 0.793800,
		0.993023, 0.060993, 0.100918,
		0.011807, 0.800102, -0.599747,
		32.106236, 38.669880, 46.435471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466835, 38.572144, 47.165039>,  <32.097969, 38.109806, 46.855293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466835, 38.572144, 47.165039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.241787, 38.793076, 46.918983>,  <32.106758, 38.925632, 46.771351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.241787, 38.793076, 46.918983>,  <32.466835, 38.572144, 47.165039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241787, 38.793076, 46.918983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007818, 0.747594, 0.664110,
		0.826678, 0.368833, -0.424930,
		-0.562620, 0.552328, -0.615136,
		32.073002, 38.958775, 46.734444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779209, 39.138180, 47.439236>,  <32.466835, 38.572144, 47.165039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779209, 39.138180, 47.439236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452747, 39.225586, 47.225269>,  <32.256870, 39.278030, 47.096889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452747, 39.225586, 47.225269>,  <32.779209, 39.138180, 47.439236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452747, 39.225586, 47.225269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072063, 0.880019, 0.469440,
		0.573317, 0.421685, -0.702488,
		-0.816158, 0.218515, -0.534918,
		32.207901, 39.291142, 47.064793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844193, 39.752861, 47.202347>,  <32.779209, 39.138180, 47.439236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844193, 39.752861, 47.202347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.446571, 39.710018, 47.210144>,  <32.207996, 39.684311, 47.214825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.446571, 39.710018, 47.210144>,  <32.844193, 39.752861, 47.202347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446571, 39.710018, 47.210144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075516, 0.807389, 0.585167,
		-0.078417, 0.580216, -0.810678,
		-0.994056, -0.107106, 0.019498,
		32.148354, 39.677887, 47.215992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598412, 40.434658, 47.148186>,  <32.844193, 39.752861, 47.202347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598412, 40.434658, 47.148186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299370, 40.227947, 47.315048>,  <32.119946, 40.103920, 47.415165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299370, 40.227947, 47.315048>,  <32.598412, 40.434658, 47.148186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299370, 40.227947, 47.315048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273769, 0.812067, 0.515362,
		-0.605089, 0.271084, -0.748586,
		-0.747609, -0.516779, 0.417158,
		32.075089, 40.072914, 47.440197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909052, 40.877258, 47.162029>,  <32.598412, 40.434658, 47.148186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909052, 40.877258, 47.162029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850515, 40.600735, 47.445065>,  <31.815393, 40.434822, 47.614887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850515, 40.600735, 47.445065>,  <31.909052, 40.877258, 47.162029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850515, 40.600735, 47.445065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490671, 0.671823, 0.554883,
		-0.858968, -0.265993, -0.437517,
		-0.146339, -0.691304, 0.707590,
		31.806614, 40.393345, 47.657341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310144, 41.097824, 47.702141>,  <31.909052, 40.877258, 47.162029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310144, 41.097824, 47.702141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.457470, 40.800552, 47.925583>,  <31.545866, 40.622189, 48.059647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.457470, 40.800552, 47.925583>,  <31.310144, 41.097824, 47.702141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457470, 40.800552, 47.925583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, 0.565817, 0.818486,
		-0.924345, -0.357128, 0.134335,
		0.368313, -0.743176, 0.558601,
		31.567965, 40.577599, 48.093163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884785, 41.056473, 48.359688>,  <31.310144, 41.097824, 47.702141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884785, 41.056473, 48.359688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229681, 40.882820, 48.464046>,  <31.436619, 40.778629, 48.526661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229681, 40.882820, 48.464046>,  <30.884785, 41.056473, 48.359688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229681, 40.882820, 48.464046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006968, 0.504890, 0.863155,
		-0.506452, -0.746065, 0.432312,
		0.862240, -0.434134, 0.260901,
		31.488354, 40.752579, 48.542316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.312965, 32.974911, 34.614235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672832, 33.045612, 34.773914>,  <35.888752, 33.088036, 34.869720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672832, 33.045612, 34.773914>,  <35.312965, 32.974911, 34.614235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672832, 33.045612, 34.773914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429276, 0.191633, 0.882609,
		0.079504, -0.965420, 0.248282,
		0.899667, 0.176752, 0.399196,
		35.942734, 33.098640, 34.893673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223267, 32.800247, 35.306072>,  <35.312965, 32.974911, 34.614235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223267, 32.800247, 35.306072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542149, 33.041725, 35.304813>,  <35.733479, 33.186611, 35.304058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542149, 33.041725, 35.304813>,  <35.223267, 32.800247, 35.306072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542149, 33.041725, 35.304813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355003, 0.473003, 0.806375,
		0.488306, -0.641723, 0.591396,
		0.797202, 0.603705, -0.003157,
		35.781311, 33.222836, 35.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385235, 32.851711, 35.966431>,  <35.223267, 32.800247, 35.306072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385235, 32.851711, 35.966431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570255, 33.169189, 35.808399>,  <35.681267, 33.359676, 35.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570255, 33.169189, 35.808399>,  <35.385235, 32.851711, 35.966431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570255, 33.169189, 35.808399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293801, 0.557655, 0.776339,
		0.836496, -0.243024, 0.491135,
		0.462553, 0.793700, -0.395075,
		35.709023, 33.407299, 35.689877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653183, 33.136185, 36.540543>,  <35.385235, 32.851711, 35.966431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653183, 33.136185, 36.540543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647045, 33.424267, 36.263107>,  <35.643364, 33.597115, 36.096645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647045, 33.424267, 36.263107>,  <35.653183, 33.136185, 36.540543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647045, 33.424267, 36.263107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257271, 0.667474, 0.698777,
		0.966218, 0.189163, 0.175046,
		-0.015344, 0.720205, -0.693592,
		35.642441, 33.640327, 36.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943539, 33.724739, 36.867687>,  <35.653183, 33.136185, 36.540543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943539, 33.724739, 36.867687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716331, 33.868324, 36.571442>,  <35.580009, 33.954475, 36.393696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716331, 33.868324, 36.571442>,  <35.943539, 33.724739, 36.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716331, 33.868324, 36.571442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317828, 0.734394, 0.599709,
		0.759173, 0.576031, -0.303058,
		-0.568015, 0.358963, -0.740611,
		35.545925, 33.976013, 36.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046581, 34.374966, 37.016155>,  <35.943539, 33.724739, 36.867687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046581, 34.374966, 37.016155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739212, 34.385349, 36.760391>,  <35.554790, 34.391579, 36.606934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739212, 34.385349, 36.760391>,  <36.046581, 34.374966, 37.016155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739212, 34.385349, 36.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332938, 0.837083, 0.434101,
		0.546514, 0.546459, -0.634591,
		-0.768424, 0.025963, -0.639414,
		35.508686, 34.393139, 36.568565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984665, 35.044449, 36.783398>,  <36.046581, 34.374966, 37.016155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984665, 35.044449, 36.783398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619896, 34.886585, 36.738426>,  <35.401035, 34.791866, 36.711445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619896, 34.886585, 36.738426>,  <35.984665, 35.044449, 36.783398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619896, 34.886585, 36.738426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393064, 0.761345, 0.515611,
		-0.117895, 0.514388, -0.849415,
		-0.911922, -0.394662, -0.112429,
		35.346321, 34.768185, 36.704697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687096, 35.529499, 36.410988>,  <35.984665, 35.044449, 36.783398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687096, 35.529499, 36.410988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369457, 35.334759, 36.556526>,  <35.178875, 35.217915, 36.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369457, 35.334759, 36.556526>,  <35.687096, 35.529499, 36.410988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369457, 35.334759, 36.556526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189568, 0.767175, 0.612786,
		-0.577468, 0.417639, -0.701504,
		-0.794100, -0.486847, 0.363848,
		35.131226, 35.188705, 36.665680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092999, 35.964710, 36.378025>,  <35.687096, 35.529499, 36.410988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092999, 35.964710, 36.378025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987305, 35.695328, 36.654179>,  <34.923889, 35.533699, 36.819870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987305, 35.695328, 36.654179>,  <35.092999, 35.964710, 36.378025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987305, 35.695328, 36.654179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176894, 0.737528, 0.651737,
		-0.948097, 0.050087, -0.314012,
		-0.264236, -0.673457, 0.690388,
		34.908035, 35.493290, 36.861294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469410, 36.163456, 36.644253>,  <35.092999, 35.964710, 36.378025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469410, 36.163456, 36.644253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610985, 35.947628, 36.949825>,  <34.695930, 35.818130, 37.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610985, 35.947628, 36.949825>,  <34.469410, 36.163456, 36.644253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610985, 35.947628, 36.949825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465653, 0.606702, 0.644267,
		-0.811107, -0.583757, -0.036518,
		0.353939, -0.539574, 0.763928,
		34.717167, 35.785755, 37.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974869, 36.219894, 37.176308>,  <34.469410, 36.163456, 36.644253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974869, 36.219894, 37.176308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275517, 36.058544, 37.385063>,  <34.455906, 35.961735, 37.510315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275517, 36.058544, 37.385063>,  <33.974869, 36.219894, 37.176308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275517, 36.058544, 37.385063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350410, 0.426147, 0.834033,
		-0.558827, -0.809746, 0.178953,
		0.751615, -0.403374, 0.521886,
		34.500999, 35.937531, 37.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680630, 35.832649, 37.706161>,  <33.974869, 36.219894, 37.176308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680630, 35.832649, 37.706161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054405, 35.899796, 37.831795>,  <34.278671, 35.940083, 37.907173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054405, 35.899796, 37.831795>,  <33.680630, 35.832649, 37.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054405, 35.899796, 37.831795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353801, 0.337033, 0.872487,
		0.040600, -0.926408, 0.374326,
		0.934439, 0.167860, 0.314081,
		34.334736, 35.950153, 37.926018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120640, 35.560776, 38.112221>,  <33.680630, 35.832649, 37.706161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120640, 35.560776, 38.112221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844456, 35.809334, 37.964096>,  <32.678745, 35.958469, 37.875221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844456, 35.809334, 37.964096>,  <33.120640, 35.560776, 38.112221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844456, 35.809334, 37.964096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161011, -0.367062, -0.916156,
		-0.705224, -0.692193, 0.153390,
		-0.690460, 0.621397, -0.370311,
		32.637318, 35.995754, 37.853004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859474, 35.109512, 37.655998>,  <33.120640, 35.560776, 38.112221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859474, 35.109512, 37.655998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730656, 35.469940, 37.539822>,  <32.653366, 35.686199, 37.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730656, 35.469940, 37.539822>,  <32.859474, 35.109512, 37.655998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730656, 35.469940, 37.539822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066200, -0.327467, -0.942540,
		-0.944408, -0.284312, 0.165110,
		-0.322043, 0.901073, -0.290441,
		32.634041, 35.740261, 37.452690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280178, 34.911499, 37.364853>,  <32.859474, 35.109512, 37.655998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280178, 34.911499, 37.364853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378483, 35.276325, 37.233562>,  <32.437466, 35.495220, 37.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378483, 35.276325, 37.233562>,  <32.280178, 34.911499, 37.364853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378483, 35.276325, 37.233562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190998, -0.286406, -0.938878,
		-0.950326, 0.293433, 0.103815,
		0.245765, 0.912068, -0.328224,
		32.452213, 35.549946, 37.135094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781298, 35.016949, 36.833744>,  <32.280178, 34.911499, 37.364853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781298, 35.016949, 36.833744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080570, 35.270676, 36.755909>,  <32.260136, 35.422913, 36.709206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080570, 35.270676, 36.755909>,  <31.781298, 35.016949, 36.833744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080570, 35.270676, 36.755909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037026, -0.252907, -0.966782,
		-0.662459, 0.730534, -0.165735,
		0.748183, 0.634317, -0.194589,
		32.305023, 35.460972, 36.697533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555883, 35.441162, 36.258705>,  <31.781298, 35.016949, 36.833744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555883, 35.441162, 36.258705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955490, 35.458828, 36.260468>,  <32.195255, 35.469429, 36.261524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955490, 35.458828, 36.260468>,  <31.555883, 35.441162, 36.258705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955490, 35.458828, 36.260468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013928, -0.217779, -0.975899,
		-0.042144, 0.974998, -0.218180,
		0.999015, 0.044167, 0.004402,
		32.255196, 35.472076, 36.261787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801640, 35.954941, 35.650253>,  <31.555883, 35.441162, 36.258705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801640, 35.954941, 35.650253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115898, 35.726974, 35.746548>,  <32.304455, 35.590195, 35.804325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115898, 35.726974, 35.746548>,  <31.801640, 35.954941, 35.650253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115898, 35.726974, 35.746548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162786, -0.184973, -0.969167,
		0.596876, 0.800611, -0.052548,
		0.785646, -0.569919, 0.240734,
		32.351593, 35.556000, 35.818768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158909, 36.001041, 35.047459>,  <31.801640, 35.954941, 35.650253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158909, 36.001041, 35.047459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340725, 35.694717, 35.229420>,  <32.449814, 35.510925, 35.338596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340725, 35.694717, 35.229420>,  <32.158909, 36.001041, 35.047459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340725, 35.694717, 35.229420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101182, -0.463014, -0.880557,
		0.884962, 0.446274, -0.132971,
		0.454537, -0.765806, 0.454905,
		32.477085, 35.464977, 35.365891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713665, 35.880905, 34.591988>,  <32.158909, 36.001041, 35.047459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713665, 35.880905, 34.591988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654125, 35.547249, 34.804420>,  <32.618401, 35.347054, 34.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654125, 35.547249, 34.804420>,  <32.713665, 35.880905, 34.591988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654125, 35.547249, 34.804420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125438, -0.548657, -0.826584,
		0.980872, -0.056415, 0.186298,
		-0.148846, -0.834142, 0.531086,
		32.609470, 35.297005, 34.963745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317345, 35.492813, 34.513153>,  <32.713665, 35.880905, 34.591988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317345, 35.492813, 34.513153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998753, 35.261341, 34.583294>,  <32.807598, 35.122459, 34.625378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998753, 35.261341, 34.583294>,  <33.317345, 35.492813, 34.513153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998753, 35.261341, 34.583294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168965, -0.491444, -0.854362,
		0.580574, -0.650857, 0.489203,
		-0.796483, -0.578678, 0.175347,
		32.759808, 35.087738, 34.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506290, 34.916260, 34.180149>,  <33.317345, 35.492813, 34.513153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506290, 34.916260, 34.180149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123852, 34.828117, 34.257431>,  <32.894390, 34.775230, 34.303799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123852, 34.828117, 34.257431>,  <33.506290, 34.916260, 34.180149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123852, 34.828117, 34.257431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039238, -0.557075, -0.829535,
		0.290424, -0.800694, 0.523969,
		-0.956093, -0.220358, 0.193206,
		32.837025, 34.762009, 34.315392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338127, 34.287201, 33.980072>,  <33.506290, 34.916260, 34.180149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338127, 34.287201, 33.980072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955700, 34.401165, 34.007668>,  <32.726242, 34.469543, 34.024223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955700, 34.401165, 34.007668>,  <33.338127, 34.287201, 33.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955700, 34.401165, 34.007668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227130, -0.571162, -0.788788,
		-0.185332, -0.769804, 0.610782,
		-0.956067, 0.284914, 0.068991,
		32.668880, 34.486641, 34.028366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943913, 33.708179, 33.903915>,  <33.338127, 34.287201, 33.980072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943913, 33.708179, 33.903915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762020, 34.047859, 33.796528>,  <32.652885, 34.251667, 33.732094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762020, 34.047859, 33.796528>,  <32.943913, 33.708179, 33.903915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762020, 34.047859, 33.796528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320751, -0.437358, -0.840141,
		-0.830869, -0.295922, 0.471261,
		-0.454726, 0.849204, -0.268470,
		32.625603, 34.302620, 33.715988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192989, 33.445942, 34.463928>,  <32.943913, 33.708179, 33.903915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192989, 33.445942, 34.463928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141903, 33.049397, 34.452023>,  <33.111252, 32.811470, 34.444881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141903, 33.049397, 34.452023>,  <33.192989, 33.445942, 34.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141903, 33.049397, 34.452023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735372, 0.074516, 0.673555,
		-0.665520, 0.107911, -0.738538,
		-0.127717, -0.991364, -0.029763,
		33.103588, 32.751987, 34.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525955, 33.140285, 34.209919>,  <33.192989, 33.445942, 34.463928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525955, 33.140285, 34.209919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692486, 32.943771, 34.515942>,  <32.792404, 32.825863, 34.699554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692486, 32.943771, 34.515942>,  <32.525955, 33.140285, 34.209919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692486, 32.943771, 34.515942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740868, 0.304463, 0.598679,
		-0.527054, -0.816052, -0.237221,
		0.416328, -0.491286, 0.765055,
		32.817383, 32.796387, 34.745457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988945, 32.733124, 34.569035>,  <32.525955, 33.140285, 34.209919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988945, 32.733124, 34.569035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282478, 32.811035, 34.829357>,  <32.458599, 32.857780, 34.985550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282478, 32.811035, 34.829357>,  <31.988945, 32.733124, 34.569035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282478, 32.811035, 34.829357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655427, 0.454891, 0.602902,
		-0.178617, -0.868987, 0.461474,
		0.733834, 0.194774, 0.650808,
		32.502628, 32.869469, 35.024601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980188, 32.311451, 33.940964>,  <31.988945, 32.733124, 34.569035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980188, 32.311451, 33.940964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969738, 32.667995, 33.759945>,  <31.963469, 32.881920, 33.651333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969738, 32.667995, 33.759945>,  <31.980188, 32.311451, 33.940964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969738, 32.667995, 33.759945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163023, -0.442844, -0.881654,
		-0.986276, -0.096810, -0.133742,
		-0.026126, 0.891357, -0.452548,
		31.961901, 32.935402, 33.624180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565701, 31.834648, 34.110683>,  <31.980188, 32.311451, 33.940964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565701, 31.834648, 34.110683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680775, 31.524210, 34.335152>,  <32.749821, 31.337948, 34.469833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680775, 31.524210, 34.335152>,  <32.565701, 31.834648, 34.110683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680775, 31.524210, 34.335152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547344, 0.347592, 0.761311,
		-0.785908, -0.526173, -0.324793,
		0.287686, -0.776093, 0.561173,
		32.767082, 31.291382, 34.503502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951260, 31.515326, 34.464722>,  <32.565701, 31.834648, 34.110683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951260, 31.515326, 34.464722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286694, 31.443501, 34.670452>,  <32.487953, 31.400406, 34.793892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286694, 31.443501, 34.670452>,  <31.951260, 31.515326, 34.464722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286694, 31.443501, 34.670452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418564, 0.391914, 0.819273,
		-0.348685, -0.902308, 0.253493,
		0.838584, -0.179564, 0.514328,
		32.538269, 31.389631, 34.824749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812359, 30.983416, 34.939991>,  <31.951260, 31.515326, 34.464722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812359, 30.983416, 34.939991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129063, 31.197241, 35.058216>,  <32.319084, 31.325537, 35.129150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129063, 31.197241, 35.058216>,  <31.812359, 30.983416, 34.939991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129063, 31.197241, 35.058216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508237, 0.308114, 0.804214,
		0.338846, -0.786954, 0.515641,
		0.791757, 0.534573, 0.295556,
		32.366592, 31.357611, 35.146885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865055, 30.869326, 35.563431>,  <31.812359, 30.983416, 34.939991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865055, 30.869326, 35.563431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087208, 31.201349, 35.543217>,  <32.220501, 31.400562, 35.531086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087208, 31.201349, 35.543217>,  <31.865055, 30.869326, 35.563431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087208, 31.201349, 35.543217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426438, 0.336446, 0.839616,
		0.713932, -0.444758, 0.540824,
		0.555384, 0.830057, -0.050538,
		32.253822, 31.450367, 35.528057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129932, 30.938545, 36.246471>,  <31.865055, 30.869326, 35.563431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129932, 30.938545, 36.246471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158363, 31.304276, 36.086994>,  <32.175423, 31.523714, 35.991310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158363, 31.304276, 36.086994>,  <32.129932, 30.938545, 36.246471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158363, 31.304276, 36.086994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420106, 0.389964, 0.819414,
		0.904687, 0.109247, 0.411833,
		0.071082, 0.914326, -0.398691,
		32.179688, 31.578573, 35.967388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396702, 31.262739, 36.850822>,  <32.129932, 30.938545, 36.246471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396702, 31.262739, 36.850822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266842, 31.547934, 36.602226>,  <32.188927, 31.719049, 36.453068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266842, 31.547934, 36.602226>,  <32.396702, 31.262739, 36.850822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266842, 31.547934, 36.602226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375939, 0.505682, 0.776502,
		0.867913, 0.485736, 0.103869,
		-0.324651, 0.712984, -0.621494,
		32.169445, 31.761829, 36.415779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742790, 31.938803, 37.062462>,  <32.396702, 31.262739, 36.850822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742790, 31.938803, 37.062462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409386, 32.020760, 36.857220>,  <32.209343, 32.069935, 36.734074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409386, 32.020760, 36.857220>,  <32.742790, 31.938803, 37.062462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409386, 32.020760, 36.857220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356574, 0.509897, 0.782854,
		0.422030, 0.835478, -0.351946,
		-0.833514, 0.204893, -0.513102,
		32.159332, 32.082226, 36.703289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594311, 32.697933, 37.005749>,  <32.742790, 31.938803, 37.062462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594311, 32.697933, 37.005749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247360, 32.502220, 36.969402>,  <32.039188, 32.384792, 36.947594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247360, 32.502220, 36.969402>,  <32.594311, 32.697933, 37.005749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247360, 32.502220, 36.969402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379689, 0.532617, 0.756410,
		-0.321697, 0.690597, -0.647755,
		-0.867380, -0.489280, -0.090870,
		31.987146, 32.355434, 36.942142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975410, 33.179184, 37.016388>,  <32.594311, 32.697933, 37.005749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975410, 33.179184, 37.016388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813816, 32.821903, 37.095371>,  <31.716860, 32.607536, 37.142761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813816, 32.821903, 37.095371>,  <31.975410, 33.179184, 37.016388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813816, 32.821903, 37.095371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333795, 0.344909, 0.877279,
		-0.851691, 0.288498, -0.437484,
		-0.403986, -0.893200, 0.197456,
		31.692621, 32.553944, 37.154610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360888, 33.337471, 37.357864>,  <31.975410, 33.179184, 37.016388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360888, 33.337471, 37.357864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391264, 32.947773, 37.442783>,  <31.409491, 32.713955, 37.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391264, 32.947773, 37.442783>,  <31.360888, 33.337471, 37.357864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391264, 32.947773, 37.442783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447774, 0.156919, 0.880270,
		-0.890916, -0.161911, -0.424327,
		0.075940, -0.974249, 0.212301,
		31.414045, 32.655499, 37.506474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912107, 33.250786, 37.900726>,  <31.360888, 33.337471, 37.357864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912107, 33.250786, 37.900726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110584, 32.904697, 37.929550>,  <31.229670, 32.697044, 37.946846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110584, 32.904697, 37.929550>,  <30.912107, 33.250786, 37.900726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110584, 32.904697, 37.929550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326299, -0.108921, 0.938970,
		-0.804564, -0.489423, -0.336365,
		0.496191, -0.865217, 0.072064,
		31.259441, 32.645134, 37.951168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481487, 32.723621, 38.223877>,  <30.912107, 33.250786, 37.900726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481487, 32.723621, 38.223877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851805, 32.596481, 38.305729>,  <31.073996, 32.520195, 38.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851805, 32.596481, 38.305729>,  <30.481487, 32.723621, 38.223877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851805, 32.596481, 38.305729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245227, -0.093023, 0.964993,
		-0.287692, -0.943566, -0.164066,
		0.925796, -0.317854, 0.204625,
		31.129543, 32.501125, 38.367115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391085, 32.010574, 38.564278>,  <30.481487, 32.723621, 38.223877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391085, 32.010574, 38.564278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741230, 32.169319, 38.674717>,  <30.951317, 32.264568, 38.740982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741230, 32.169319, 38.674717>,  <30.391085, 32.010574, 38.564278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741230, 32.169319, 38.674717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217864, -0.186008, 0.958090,
		0.431591, -0.898831, -0.076362,
		0.875365, 0.396867, 0.276103,
		31.003839, 32.288380, 38.757549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557880, 31.695444, 39.094582>,  <30.391085, 32.010574, 38.564278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557880, 31.695444, 39.094582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795681, 32.010201, 39.160759>,  <30.938362, 32.199055, 39.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795681, 32.010201, 39.160759>,  <30.557880, 31.695444, 39.094582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795681, 32.010201, 39.160759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287199, 0.015616, 0.957744,
		0.751054, -0.616897, 0.235277,
		0.594503, 0.786889, 0.165444,
		30.974031, 32.246265, 39.210392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925911, 31.481133, 39.667473>,  <30.557880, 31.695444, 39.094582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925911, 31.481133, 39.667473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952627, 31.879734, 39.647408>,  <30.968657, 32.118896, 39.635368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952627, 31.879734, 39.647408>,  <30.925911, 31.481133, 39.667473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952627, 31.879734, 39.647408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055744, 0.053927, 0.996988,
		0.996209, -0.063794, 0.059151,
		0.066792, 0.996505, -0.050166,
		30.972664, 32.178684, 39.632359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437548, 31.712910, 40.209007>,  <30.925911, 31.481133, 39.667473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437548, 31.712910, 40.209007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221292, 32.039612, 40.128391>,  <31.091539, 32.235634, 40.080021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221292, 32.039612, 40.128391>,  <31.437548, 31.712910, 40.209007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221292, 32.039612, 40.128391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026076, 0.255725, 0.966398,
		0.840850, 0.517218, -0.159552,
		-0.540639, 0.816756, -0.201539,
		31.059101, 32.284637, 40.067928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783760, 32.237816, 40.639286>,  <31.437548, 31.712910, 40.209007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783760, 32.237816, 40.639286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424425, 32.379532, 40.535385>,  <31.208824, 32.464561, 40.473045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424425, 32.379532, 40.535385>,  <31.783760, 32.237816, 40.639286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424425, 32.379532, 40.535385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150535, 0.307232, 0.939653,
		0.412715, 0.883226, -0.222664,
		-0.898335, 0.354290, -0.259756,
		31.154924, 32.485817, 40.457458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767897, 32.825657, 40.961750>,  <31.783760, 32.237816, 40.639286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767897, 32.825657, 40.961750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385382, 32.748768, 40.873604>,  <31.155872, 32.702633, 40.820717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385382, 32.748768, 40.873604>,  <31.767897, 32.825657, 40.961750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385382, 32.748768, 40.873604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255640, 0.183628, 0.949173,
		-0.141989, 0.964018, -0.224742,
		-0.956288, -0.192225, -0.220368,
		31.098495, 32.691101, 40.807495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408226, 33.420589, 41.034992>,  <31.767897, 32.825657, 40.961750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408226, 33.420589, 41.034992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164787, 33.112106, 41.109661>,  <31.018724, 32.927017, 41.154461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164787, 33.112106, 41.109661>,  <31.408226, 33.420589, 41.034992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164787, 33.112106, 41.109661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409401, 0.506721, 0.758699,
		-0.679705, 0.385319, -0.624123,
		-0.608598, -0.771209, 0.186671,
		30.982208, 32.880745, 41.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942848, 33.698898, 41.392445>,  <31.408226, 33.420589, 41.034992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942848, 33.698898, 41.392445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827068, 33.321682, 41.458035>,  <30.757601, 33.095352, 41.497391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827068, 33.321682, 41.458035>,  <30.942848, 33.698898, 41.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827068, 33.321682, 41.458035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278103, 0.246774, 0.928311,
		-0.915903, 0.223095, -0.333691,
		-0.289448, -0.943044, 0.163978,
		30.740234, 33.038769, 41.507229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317268, 33.776325, 41.715679>,  <30.942848, 33.698898, 41.392445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317268, 33.776325, 41.715679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446362, 33.406059, 41.794670>,  <30.523817, 33.183899, 41.842064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446362, 33.406059, 41.794670>,  <30.317268, 33.776325, 41.715679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446362, 33.406059, 41.794670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244680, 0.119954, 0.962155,
		-0.914317, -0.358835, -0.187778,
		0.322731, -0.925661, 0.197476,
		30.543180, 33.128361, 41.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775362, 33.350914, 42.016102>,  <30.317268, 33.776325, 41.715679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775362, 33.350914, 42.016102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122192, 33.190147, 42.133842>,  <30.330290, 33.093685, 42.204487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122192, 33.190147, 42.133842>,  <29.775362, 33.350914, 42.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122192, 33.190147, 42.133842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223668, 0.213881, 0.950909,
		-0.445146, -0.890345, 0.095554,
		0.867074, -0.401921, 0.294350,
		30.382315, 33.069572, 42.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548197, 33.058613, 42.586300>,  <29.775362, 33.350914, 42.016102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548197, 33.058613, 42.586300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940832, 33.024139, 42.654484>,  <30.176413, 33.003456, 42.695396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940832, 33.024139, 42.654484>,  <29.548197, 33.058613, 42.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940832, 33.024139, 42.654484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146728, 0.231154, 0.961789,
		-0.122292, -0.969093, 0.214252,
		0.981588, -0.086182, 0.170461,
		30.235310, 32.998283, 42.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734209, 32.533997, 43.125912>,  <29.548197, 33.058613, 42.586300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734209, 32.533997, 43.125912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026722, 32.806808, 43.129131>,  <30.202230, 32.970497, 43.131062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026722, 32.806808, 43.129131>,  <29.734209, 32.533997, 43.125912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026722, 32.806808, 43.129131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082340, 0.076563, 0.993659,
		0.677088, -0.727307, 0.112147,
		0.731282, 0.682028, 0.008046,
		30.246107, 33.011417, 43.131546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079853, 32.336605, 43.681423>,  <29.734209, 32.533997, 43.125912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079853, 32.336605, 43.681423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202368, 32.710419, 43.608952>,  <30.275877, 32.934708, 43.565468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202368, 32.710419, 43.608952>,  <30.079853, 32.336605, 43.681423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202368, 32.710419, 43.608952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006181, 0.192277, 0.981321,
		0.951919, -0.299445, 0.064668,
		0.306286, 0.934539, -0.181181,
		30.294254, 32.990780, 43.554596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599697, 32.465466, 44.164772>,  <30.079853, 32.336605, 43.681423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599697, 32.465466, 44.164772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468538, 32.827290, 44.055775>,  <30.389843, 33.044384, 43.990376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468538, 32.827290, 44.055775>,  <30.599697, 32.465466, 44.164772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468538, 32.827290, 44.055775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027756, 0.279087, 0.959865,
		0.944305, 0.322300, -0.066404,
		-0.327897, 0.904562, -0.272489,
		30.370169, 33.098660, 43.974030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337347, 32.632000, 44.216778>,  <30.599697, 32.465466, 44.164772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337347, 32.632000, 44.216778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681566, 32.508720, 44.378998>,  <31.888098, 32.434753, 44.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681566, 32.508720, 44.378998>,  <31.337347, 32.632000, 44.216778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681566, 32.508720, 44.378998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095875, -0.683946, -0.723205,
		0.500266, 0.661235, -0.559019,
		0.860547, -0.308199, 0.405551,
		31.939730, 32.416260, 44.500664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828543, 32.589520, 43.638378>,  <31.337347, 32.632000, 44.216778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828543, 32.589520, 43.638378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977798, 32.363503, 43.932724>,  <32.067352, 32.227894, 44.109333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977798, 32.363503, 43.932724>,  <31.828543, 32.589520, 43.638378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977798, 32.363503, 43.932724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207956, -0.722033, -0.659866,
		0.904169, 0.399249, -0.151915,
		0.373138, -0.565039, 0.735866,
		32.089741, 32.193993, 44.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584625, 32.376419, 43.444046>,  <31.828543, 32.589520, 43.638378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584625, 32.376419, 43.444046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430645, 32.114670, 43.704388>,  <32.338257, 31.957621, 43.860592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430645, 32.114670, 43.704388>,  <32.584625, 32.376419, 43.444046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430645, 32.114670, 43.704388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298675, -0.755576, -0.583008,
		0.873273, -0.030036, 0.486305,
		-0.384952, -0.654372, 0.650853,
		32.315159, 31.918358, 43.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133240, 31.883989, 43.524109>,  <32.584625, 32.376419, 43.444046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133240, 31.883989, 43.524109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774040, 31.725584, 43.600819>,  <32.558521, 31.630541, 43.646843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774040, 31.725584, 43.600819>,  <33.133240, 31.883989, 43.524109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774040, 31.725584, 43.600819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227117, -0.790474, -0.568830,
		0.376858, -0.467252, 0.799784,
		-0.897996, -0.396013, 0.191775,
		32.504642, 31.606781, 43.658352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366428, 31.084469, 43.737473>,  <33.133240, 31.883989, 43.524109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366428, 31.084469, 43.737473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976463, 31.079590, 43.648571>,  <32.742485, 31.076662, 43.595230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976463, 31.079590, 43.648571>,  <33.366428, 31.084469, 43.737473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976463, 31.079590, 43.648571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166686, -0.701734, -0.692666,
		-0.147512, -0.712335, 0.686162,
		-0.974913, -0.012198, -0.222250,
		32.683990, 31.075932, 43.581898>
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
