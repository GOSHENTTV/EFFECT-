//QuantV 3.0.0 PostFX	//Rockstar Games, Boris Vorontsov, Christian Jensen, prod80, Dpeasant3, Quant

uniform float Corona_Light_Intensity < ui_label = "Intensity (Global)"; ui_category = "CORONA LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 500.0; > = 1.0;
uniform float Corona_Light_Emergency_Intensity < ui_label = "Intensity (Emergency Vehicles)"; ui_category = "CORONA LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 500.0; > = 1.5;
uniform int Corona_Light_Style < ui_label = "Style"; ui_category = "CORONA LIGHTS"; ui_type = "combo"; ui_items = "Smooth Rays\0Rays V3\0Thin Rays\0"; > = 0;
uniform bool Disable_Corona_Light_from_Vehicles < ui_label = "Disable from Vehicles"; ui_category = "CORONA LIGHTS"; > = false;
uniform bool Disable_Corona_Light_Everywhere < ui_label = "Disable Everywhere"; ui_category = "CORONA LIGHTS"; > = false;
uniform int sep0 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Streetlights < ui_label = "Use Streetlights"; ui_category = "STREETLIGHTS"; > = false;
uniform float Streetlights_Mult < ui_label = "Intensity"; ui_category = "STREETLIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; > = 1.0;
uniform float3 Streetlights_Col < ui_label = "Color"; ui_category = "STREETLIGHTS"; ui_type = "color"; > = float3(1.0, 0.41, 0.0);
uniform float Streetlights_Reflect < ui_label = "Reflect Intensity"; ui_category = "STREETLIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 100.0; > = 1.0;
uniform int sep1 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Screen_Raindrops_Classic < ui_label = "Raindrops: Classic"; ui_category = "SCREEN RAINDROPS"; > = false;
uniform bool Screen_Raindrops_Racing < ui_label = "Raindrops: Racing Style"; ui_category = "SCREEN RAINDROPS"; > = true;
uniform bool Screen_Raindrops_NFS < ui_label = "Raindrops: NFS Style"; ui_category = "SCREEN RAINDROPS"; > = false;
uniform bool Screen_Raindrops_Force_Enable < ui_label = " > Force Enable"; ui_category = "SCREEN RAINDROPS"; > = false;
uniform float Screen_Raindrops_Scale < ui_label = "Scale"; ui_category = "SCREEN RAINDROPS"; ui_tooltip = "Scale size of the droplets"; ui_type = "drag"; ui_min = 0.25; ui_max = 10.0; > = 1.0;
uniform bool Screen_Frozen_Snow < ui_label = "Screen Frozen Snow"; ui_spacing = 2; ui_category = "SCREEN RAINDROPS"; > = false;
uniform bool Screen_Frozen_Snow_ForceEnable < ui_label = " > Force Enable"; ui_category = "SCREEN RAINDROPS"; > = false;
uniform int sep2 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform float2 vehSpecIntensity < ui_label = "Specular Intensity"; ui_tooltip = "DAY    |    NIGHT    (a.k.a Reflection Amount)"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.1, 1.2);
uniform float2 vehFresnel < ui_label = "Specular Fresnel"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(0.98, 0.95);
uniform float2 vehFalloff < ui_label = "Specular Falloff"; ui_tooltip = "DAY    |    NIGHT    (a.k.a Reflection Glossiness)"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.0, 1.0);
uniform float2 vehMask < ui_label = "Specular Mask"; ui_tooltip = "DAY    |    NIGHT    (a.k.a Metallic Amount)"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.3, 1.5);
uniform bool vehSSR < ui_label = "Vehicle SSR"; ui_category = "VEHICLE"; ui_tooltip = "Vehicle - Screen Space Reflections"; ui_spacing = 2; > = true;
uniform int Vehicle_Paint < ui_label = "Paint Shader"; ui_category = "VEHICLE"; ui_type = "combo"; ui_items = "Default Paint\0Metallic Paint (Pearlescent)\0Iridescent (Metal)\0Iridescence Wrap (Pearlescent/Matte/Metal)\0Carbon Fiber (Pearlescent/Matte)\0Opal (Pearlescent/Matte/Metal)\0Brushed Metal (Pearlescent/Metal/Chrome)\0Colored Chrome (Chrome)\0"; ui_spacing = 2; > = 0;
uniform bool Vehicle_Carbon < ui_label = "Custom Carbon Fiber"; ui_category = "VEHICLE"; ui_spacing = 2; > = true;
uniform bool Use_Colored_Carbon_Fiber < ui_label = "Use Colored Carbon Fiber"; ui_category = "VEHICLE"; > = false;
uniform float3 Color_Carbon_Fiber < ui_label = "Colored Carbon Fiber"; ui_type = "color"; ui_category = "VEHICLE"; > = float3(0.01, 0.01, 0.01);
uniform float2 vehGlass < ui_label = "Glass Reflection"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; ui_spacing = 2; > = float2(1.8, 2.3);
uniform float vehGlassTint < ui_label = "Glass Tint Opacity"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; > = 1.0;
uniform bool Black_Chrome < ui_label = "Black Chrome"; ui_category = "VEHICLE"; ui_spacing = 2; > = false;
uniform float2 Vehicle_Chrome_Reflection < ui_label = "Chrome Reflection"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.1, 1.4);
uniform float2 Vehicle_Chrome_Specular < ui_label = "Chrome Specular"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.0, 1.0);
uniform float2 Vehicle_Wheel_Specular < ui_label = "Wheels Specular"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; ui_spacing = 2; > = float2(1.0, 1.0);
uniform float2 Vehicle_Rims_Reflection < ui_label = "Rims Reflection"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.05, 1.3);
uniform float2 Vehicle_Tire_Reflection < ui_label = "Tire Reflection"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.0, 1.0);
uniform float2 Vehicle_Tire_Wetness < ui_label = "Tire Wetness"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.001; > = float2(1.1, 1.1);
uniform bool Vehicle_Wheel_Chrome_Color < ui_label = "Wheel Chrome Color (pearlescent)"; ui_category = "VEHICLE"; ui_tooltip = "Paint 3. Pearlescent Color"; > = false;
uniform int Vehicle_Wheel_HotDisc < ui_label = "Wheel Brake Disc"; ui_category = "VEHICLE"; ui_type = "combo"; ui_items = "default\0Hot\0Very Hot\0"; ui_tooltip = "(Player must be inside the vehicle)"; > = 0;
uniform bool Vehicle_Raindrops < ui_label = "Vehicle Raindrops"; ui_category = "VEHICLE"; ui_tooltip = "Vehicle Rain Drops effect V2"; ui_spacing = 2; > = true;
uniform float Vehicle_Raindrops_Scale < ui_label = "Veh.Raindrops Size"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.5; ui_max = 2.0; ui_tooltip = "Droplets Scale Size"; > = 1.0;
uniform float Vehicle_Raindrops_Speed < ui_label = "Veh.Raindrops Speed"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.011; ui_max = 7.0; ui_tooltip = "Droplets Animation Speed"; > = 1.0;
uniform float Vehicle_Raindrops_Ref < ui_label = "Veh.Raindrops Ref Intensity"; ui_category = "VEHICLE"; ui_type = "drag"; ui_min = 0.011; ui_max = 2.0; ui_tooltip = "Droplets Light Refraction Intensity"; > = 1.0;
uniform bool Vehicle_Rain_ForceEnable < ui_label = " > Force Enable"; ui_category = "VEHICLE"; > = false;
uniform bool Vehicle_Lower_Snow < ui_label = "Vehicle Lower Snow"; ui_category = "VEHICLE"; ui_spacing = 2;> = true;
uniform bool Vehicle_Top_Snow < ui_label = "Vehicle Top Snow"; ui_category = "VEHICLE"; > = false;
uniform bool Vehicle_Snow_Force < ui_label = " > Force Enable"; ui_category = "VEHICLE"; ui_tooltip = "Make sure your vehicle isn't 100% clean ;)"; > = false;
uniform int sep3 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Vehicle_Glass_Refraction < ui_label = "GlassLight Refraction effect"; ui_category = "VEHICLE LIGHTS"; > = true;
uniform int Vehicle_Emergency_Lights < ui_label = "Emergency Lights Preset"; ui_category = "VEHICLE LIGHTS"; ui_type = "combo"; ui_items = "default\0Bright\0Very Bright\0"; ui_spacing = 2; > = 0;
uniform float2 Emissive_Global < ui_label = "Emissive Global"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 300.0; ui_spacing = 2; > = float2(1.3, 1.3);
uniform float2 Emissive_Emergency < ui_label = "Emissive Emergency"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 300.0; > = float2(1.9, 1.9);
uniform float2 Emissive_Headlight < ui_label = "Emissive Headlight"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 300.0; > = float2(1.0, 1.0);
uniform float2 Emissive_Taillight < ui_label = "Emissive Taillight"; ui_tooltip = "DAY    |    NIGHT"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 300.0; > = float2(1.0, 1.0);
uniform float Emissive_Indicator < ui_label = "Emissive Indicator"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 300.0; > = 1.0;
uniform float Headlight_Beam < ui_label = "Headlight Beam Intensity"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_spacing = 2; > = 1.0;
uniform float Headlight_Beam_Distance < ui_label = "Headlight Beam Distance"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 2.0; > = 1.0;
uniform float Taillight_Beam < ui_label = "Taillight Beam Intensity"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; > = 1.0;
uniform float4 Vehicle_Headlight_Tint < ui_label = "Headlight Tint"; ui_category = "VEHICLE LIGHTS"; ui_type = "color"; ui_spacing = 2; > = float4(1.0, 1.0, 1.0, 0.0);
uniform float4 Vehicle_Taillight_Tint < ui_label = "Taillight Tint"; ui_category = "VEHICLE LIGHTS"; ui_type = "color"; > = float4(1.0, 0.2, 0.0, 0.0);
uniform float Emergency_Reflect < ui_label = "Emergency Reflect Intensity"; ui_category = "VEHICLE LIGHTS"; ui_type = "drag"; ui_min = 0.001; ui_max = 30.0; ui_spacing = 2; > = 1.0;
uniform float Emergency_Reflect_Far < ui_label = "Emergency Reflect Distance"; ui_category = "VEHICLE LIGHTS"; ui_type = "slider"; ui_min = 0.001; ui_max = 2.0; > = 1.0;
uniform bool Vehicle_Indicator_Animation < ui_label = "Indicator Led Animation"; ui_category = "VEHICLE LIGHTS"; ui_spacing = 2; > = false;
uniform int Animation_Profile < ui_label = "Indicator Animation Profile"; ui_tooltip = "if default animation doesn't match vehicle's animation then switch to the correct profile"; ui_category = "VEHICLE LIGHTS"; ui_type = "combo"; ui_items = "Default (auto)\0Profile#1\0Profile#2\0Profile#3\0Profile#4\0Profile#5\0Profile#6\0Profile#B1\0Profile#B2\0Profile#B3\0"; > = 0;
uniform bool Vehicle_DRL_Indicator < ui_label = "DRL Indicator"; ui_tooltip = "Indicator - Daytime Running Lights"; ui_category = "VEHICLE LIGHTS"; > = false;
uniform bool Vehicle_Lights_Flicker < ui_label = "Lights Flicker"; ui_category = "VEHICLE LIGHTS"; ui_tooltip = "Stroboscopic effect - Vehicle lights flickering in the camera for cinematic effect"; ui_spacing = 2; > = false;
uniform int sep4 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool ParticleFX < ui_category = "PARTICLE FX"; > = true;
uniform int Fire_Exhaust < ui_type = "combo"; ui_label = "Exhaust Fire Color"; ui_items = "Default\0Blue\0Red\0Fire\0Green\0RGB\0"; ui_category = "PARTICLE FX"; ui_tooltip = "Exhaust Fire / Nitrous"; > = 3;
uniform float Vehicle_Exhaust_Fire < ui_label = "Exhaust Fire Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; ui_tooltip = "Exhaust Fire / Nitrous"; > = 1.0;
uniform float Vehicle_Exhaust_Fire_Scale < ui_label = "Exhaust Fire Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; ui_tooltip = "Exhaust Fire / Nitrous"; > = 1.0;
uniform float Vehicle_Exhaust_Smoke < ui_label = "Exhaust Smoke Density"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Vehicle_Exhaust_Smoke_Scale < ui_label = "Exhaust Smoke Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform int Vehicle_Burnout < ui_type = "slider"; ui_label = "Vehicle Burnout"; ui_min = 0; ui_max = 2; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 1;
uniform int Vehicle_Burnout_Density < ui_type = "slider"; ui_label = "Vehicle Burnout Density"; ui_min = 0; ui_max = 2; ui_category = "PARTICLE FX"; > = 0;
uniform float Vehicle_Burnout_Bright < ui_label = "Vehicle Burnout Bright"; ui_type = "drag"; ui_min = 0.001; ui_max = 3.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Vehicle_Burnout_Scale < ui_label = "Vehicle Burnout Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float3 Vehicle_Burnout_Color < ui_label = "Vehicle Burnout Color"; ui_type = "color"; ui_category = "PARTICLE FX"; > = float3(1.0, 1.0, 1.0);
uniform float Vehicle_Engine_Fire < ui_label = "Damaged Engine Fire Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 1.0;
uniform float Vehicle_Engine_Smoke < ui_label = "Damaged Engine Smoke Density"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Vehicle_Engine_Smoke_Scale < ui_label = "Damaged Engine Smoke Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 8.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Gun_Muzzle_Flash_Intensity < ui_label = "Gun Muzzle Flash Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 6.0; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 1.0;
uniform float Gun_Muzzle_Flash_Scale < ui_label = "Gun Muzzle Flash Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 8.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Gun_Muzzle_Smoke_Bright < ui_label = "Gun Muzzle Smoke Bright"; ui_type = "drag"; ui_min = 0.001; ui_max = 6.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Gun_Muzzle_Smoke_Density < ui_label = "Gun Muzzle Smoke Density"; ui_type = "drag"; ui_min = 0.001; ui_max = 6.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Gun_Muzzle_Smoke_Scale < ui_label = "Gun Muzzle Smoke Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform float Explosion_Intensity < ui_label = "Explosion Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 1.0;
uniform float Explosion_Scale < ui_label = "Explosion Scale"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; > = 1.0;
uniform int Blood_Puddle < ui_type = "combo"; ui_label = "Blood Puddles"; ui_items = "Texture Glossiness\0Procedural\0Texture Glossiness + Procedural\0"; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 0;
uniform float Snowflake_Intensity < ui_label = "Snowflake Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PARTICLE FX"; ui_spacing = 2; > = 1.0;
uniform int sep5 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform int Vegetation < ui_label = "Vegetation Season"; ui_category = "VEGETATION"; ui_type = "combo"; ui_items = "Spring\0Summer (default-vanilla)\0Autumn1\0Autumn2\0Autumn3\0Autumn4\0Winter\0"; > = 1;
uniform bool Vegetation_Complex_Shadows < ui_label = "Vegetation Complex Shadows"; ui_category = "VEGETATION"; ui_tooltip = "Experimental Complex Shadows on grass / bushes / trees"; > = false;
uniform float Grass_Fur < ui_label = "Grass Fur Density"; ui_type = "drag"; ui_min = 0.001; ui_max = 9.0; ui_tooltip = "Fur Grass Density (default = 1.0)"; ui_category = "VEGETATION"; > = 2.0;
uniform bool Grass_Detail < ui_label = "Grass Detail Map"; ui_category = "VEGETATION"; > = true;
uniform int sep6 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Enable_Motion_Blur_while_driving_in_FPV < ui_label = "Enable MotionBlur while driving in FPV"; ui_category = "MOTION BLUR"; > = false;
uniform bool Disable_Motion_Blur < ui_label = "Disable MotionBlur"; ui_category = "MOTION BLUR"; > = false;
#if __APPLICATION__ != -1664759584
uniform int sep8 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Server_Overbloom_Fix < ui_label = "Servers with Over-Bloom Fix"; ui_tooltip = "Workaround for FiveM servers that overwrites visualsettings.dat causing too much bloom on bright surfaces"; ui_category = "FiveM Workarounds"; > = false;
uniform bool FiveM_Outline_Crash < ui_label = "Workaround for FiveM Outline Crash"; ui_tooltip = "Workaround to avoid crashes in FiveM when using 'SetEntityDrawOutline' (unofficial and unsupported function)\nPlease disable it once SetEntityDrawOutline function is not used anymore."; ui_category = "FiveM Workarounds"; > = false;
#endif
uniform int sep9 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool GodRay < ui_label = "GodRays"; ui_category = "LENS FLARE"; ui_tooltip = "Detailed Volumetric Sun&Moon Light Rays"; > = false;
uniform float GodRayIntensity < ui_label = "GodRay Intensity"; ui_type = "drag"; ui_min = 0.0; ui_max = 2.0; ui_category = "LENS FLARE"; > = 1.0;
uniform bool LightShafts < ui_label = "Light Shafts"; ui_category = "LENS FLARE"; ui_tooltip = "Light Shafts Flare effect"; > = true;
uniform float LightShaftsIntensity < ui_label = "LightShafts Intensity"; ui_type = "drag"; ui_min = 0.0; ui_max = 2.0; ui_category = "LENS FLARE"; > = 1.0;
uniform bool GPLens < ui_label = "GPLens"; ui_category = "LENS FLARE"; ui_tooltip = "GP's lensflare"; ui_spacing = 3; > = false;
uniform float GPLens_Intensity < ui_label = "GPLens Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "LENS FLARE"; > = 1.0;
uniform bool SixLens < ui_label = "SixLens"; ui_category = "LENS FLARE"; ui_tooltip = "Lensflare partially inspired by 'Six' #1 trailer"; ui_spacing = 2; > = false;
uniform float SixLensIntensity < ui_label = "Lens Flare Intensity"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 8.0; > = 1.0;
uniform bool lightStreak1 < ui_label = "LightStreak (old)"; ui_category = "LENS FLARE"; ui_tooltip = "Light Streak effect produced by bright surfaces radiating outwards in a star-like pattern"; ui_spacing = 2; > = false;
uniform float lightStreak < ui_label = "LightStreak Intensity"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 7.0; > = 1.0;
uniform float lightStreakThreshold < ui_label = "LightStreak Threshold"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.001; ui_max = 6.0; > = 1.0;
uniform int lightStreakNumber < ui_label = "LightStreaks Number"; ui_category = "LENS FLARE"; ui_type = "slider"; ui_tooltip = "Number of rays/streaks produced"; ui_min = 3; ui_max = 12; > = 10;
uniform float lightStreakLength < ui_label = "LightStreak Length"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.001; ui_max = 8.0; ui_tooltip = "Light Streak Size/Length"; > = 1.0;
uniform float lightStreakTaps < ui_label = "LightStreak Taps"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.01; ui_max = 1.0; ui_tooltip = "Increasing it may be heavy on performance"; > = 0.25;
uniform bool lightStreak2 < ui_label = "LightStreak V2"; ui_category = "LENS FLARE"; ui_tooltip = "Light Streak Lens Flare inspired by trailer #2"; ui_spacing = 2; > = false;
uniform float lightStreakIntensity < ui_label = "LightStreak V2:: Intensity"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 3.0; ui_tooltip = ""; > = 1.0;
uniform float lightStreakSize < ui_label = "LightStreak V2:: Size"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.5; ui_max = 1.5; ui_tooltip = ""; > = 1.0;
uniform float Anamorphic_Lens_Global < ui_label = "Anamorphic flare Global"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 60.0; ui_tooltip = "Anamorphic lensflare produced by bright spots"; ui_spacing = 3; > = 1.0;
uniform float Anamorphic_Lens_Lights < ui_label = "Anamorphic flare Lights"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 600.0; ui_tooltip = "Anamorphic lensflare produced by lights sources"; > = 1.0;
uniform float Anamorphic_Lens_EmergencyLights < ui_label = "Anamorphic flare Emergency Lights"; ui_category = "LENS FLARE"; ui_type = "drag"; ui_min = 0.0; ui_max = 600.0; ui_tooltip = "Anamorphic lensflare produced by emergency lights"; > = 1.9;
uniform int Anamorphic_Style < ui_label = "Anamorphic Style"; ui_category = "LENS FLARE"; ui_type = "combo"; ui_items = "default\0QuantV\0"; ui_tooltip = "Anamorphic lensflare (lights) Style"; > = 1;
uniform int sep10 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Brighter_Nights < ui_label = "Brighter Nights"; > = false;
uniform bool Smooth_Night_Shadows < ui_label = "Smooth Night Shadows"; > = false;
uniform int sep11 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Volumetric_Clouds < ui_label = "Clouds (old)"; ui_category = "SKY"; > = false;
uniform bool Clouds < ui_label = "Clouds V2"; ui_category = "SKY"; > = false;
uniform int CloudsType < ui_label = "Clouds V2:: Type"; ui_category = "SKY"; ui_type = "combo"; ui_items = "Performance\0Detail1 (Default)\0Detail2\0"; > = 1;
uniform int CloudsReflections < ui_label = "Clouds V2:: Reflections"; ui_category = "SKY"; ui_type = "combo"; ui_items = "Disabled\0Performance\0Detail Max (Default)\0"; > = 2;
uniform float2 HighClouds < ui_label = "High Clouds Intensity"; ui_type = "drag"; ui_min = 0.0; ui_max = 10.0; ui_category = "SKY"; ui_tooltip = "Cirrocumulus    |    Cirrus"; > = float2(1.0, 1.0);
uniform bool Starfield_Galaxy < ui_label = "Starfield Galaxy"; ui_category = "SKY"; ui_spacing = 2; > = false;
uniform bool Galaxy_RGB < ui_label = "Dynamic Color RGB"; ui_category = "SKY"; > = false;
uniform bool Galaxy_Enable_Tint < ui_label = "Manual Color Tint"; ui_category = "SKY"; > = false;
uniform float4 Galaxy_Tint < ui_label = "Color Tint"; ui_type = "color"; ui_category = "SKY"; > = float4(0.4, 0.2, 0.02, 0.6);
uniform float3 Galaxy_Rotation < ui_label = "Rotation Positioning"; ui_type = "drag"; ui_min = -3.1416; ui_max = 3.1416; ui_tooltip = " X  |  Y  |  Z "; ui_category = "SKY"; > = float3(0.0, 0.0, 0.0);
uniform float Shooting_Star < ui_label = "Shooting Star Intensity"; ui_type = "drag"; ui_min = 0.0; ui_max = 10.0; ui_category = "SKY"; ui_spacing = 2; > = 0.21;
uniform bool Aurora_Borealis < ui_label = "Aurora Borealis"; ui_category = "SKY"; ui_spacing = 2; > = false;
uniform float Aurora_Borealis_Intensity < ui_label = "Aurora Borealis Intensity"; ui_category = "SKY"; ui_type = "drag"; ui_min = 0.0; ui_max = 6.0; > = 1.0;
uniform float3 Aurora_Borealis_Color_Low < ui_label = "Aurora Borealis Color Low"; ui_type = "color"; ui_category = "SKY"; > = float3(0.0, 0.88, 0.63);
uniform float3 Aurora_Borealis_Color_High < ui_label = "Aurora Borealis Color High"; ui_type = "color"; ui_category = "SKY"; > = float3(0.59, 0.0, 1.0);
uniform int sep12 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Dusty_Wind < ui_label = "Volumetric Dusty Wind - Desert Area - Blizzard - Snow"; ui_tooltip = "Experimental effect with sun&moon scattering light"; > = false;
uniform int sep7 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform float HDR_Reflection < ui_label = "HDR Reflections"; ui_type = "drag"; ui_min = 0.0; ui_max = 10.0; ui_category = "ROADS & SURFACES"; ui_tooltip = "Environment HDR Reflections"; > = 1.0;
uniform bool Road < ui_label = "Roads Overhaul"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Work In Progress..."; ui_spacing = 2; > = false;
uniform int Wet_Roads < ui_label = "Wet Roads"; ui_category = "ROADS & SURFACES"; ui_type = "combo"; ui_items = "very low wetness\0low wetness\0default wetness (vanilla)\0high wetness\0very high wetness\0"; > = 2;
uniform bool Surface_Reflection < ui_label = "Surface Reflections (SSR)"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Screen Space Reflections on Wet or Specular/Reflective Surfaces\nWarning: May cause reflections issues for some people"; > = false;
uniform bool Puddle_Reflection < ui_label = "Puddle Reflections (SSR)"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Screen Space Reflections on Rain Puddles"; ui_spacing = 2; > = true;
uniform float Puddle_Reflection_Quality < ui_label = "Reflection Quality"; ui_type = "drag"; ui_min = 0.9; ui_max = 5.0; ui_category = "ROADS & SURFACES"; ui_tooltip = "Puddle Reflections Quality"; > = 1.0;
uniform float Puddle_Scale < ui_label = "Puddle Scale"; ui_type = "drag"; ui_min = 0.0; ui_max = 10.0; ui_category = "ROADS & SURFACES"; ui_tooltip = "Puddles Scale Size"; > = 1.0;
uniform bool Puddles_Covering_Full_Ground < ui_label = "Puddles Covering Full Ground"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Floor looks like a mirror when its raining"; > = false;
uniform int Snow < ui_label = "Snow Vanilla"; ui_type = "combo"; ui_items = "Vanilla\0Snow Mod - Full Cover\0Snow Mod - Melting Puddles on Roads\0Snow Mod - Clean Roads\0"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Modification of existing snow\nRequires game snow enabled"; ui_spacing = 2; > = 0;
uniform int QV_Snow < ui_label = "Snow QV (additional)"; ui_type = "combo"; ui_items = "Disabled\0Full Cover\0Clean Roads\0Melting Puddles on Roads\0"; ui_category = "ROADS & SURFACES"; ui_tooltip = "Custom Snow Shader (Independent)\nDoes not requires game snow"; > = 0;
uniform float2 Snow_Altitude_FadeInOut < ui_label = "Altitude Fade In & Out"; ui_type = "drag"; ui_min = 0.0; ui_max = 1000.0; ui_category = "ROADS & SURFACES"; ui_tooltip = "Snow Altitude\nFade IN    |    Fade OUT\n\nexample:\n1.2-1.3 beach shore\n360-560 mountain top"; > = float2(1.2, 1.3);
uniform float Snow_Amount < ui_label = "Snow Amount"; ui_type = "drag"; ui_min = 0.0; ui_max = 1.0; ui_category = "ROADS & SURFACES"; > = 1.0;
uniform float4 Water_Color < ui_label = "Water Color Tint"; ui_type = "color"; ui_category = "ROADS & SURFACES"; ui_spacing = 2; > = float4(0.0, 0.5, 0.7, 0.4);
uniform float Water_Transparency < ui_label = "Water Transparency"; ui_type = "slider"; ui_min = 0.0; ui_max = 0.9; ui_category = "ROADS & SURFACES"; > = 0.3;
uniform int sep13 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform float SSS_Intensity < ui_label = "SSS Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 1.0; ui_category = "PLAYER PED"; ui_tooltip = "Subsurface Scattering Intensity"; > = 0.9;
uniform float SSS_Radius < ui_label = "SSS Radius"; ui_type = "drag"; ui_min = 0.001; ui_max = 8.0; ui_category = "PLAYER PED"; ui_tooltip = "Subsurface Scattering Radius"; > = 1.0;
uniform float SSS_Reflection < ui_label = "SSS Reflection"; ui_type = "drag"; ui_min = 0.001; ui_max = 20.0; ui_category = "PLAYER PED"; ui_tooltip = "Subsurface Scattering Reflection"; > = 1.0;
uniform bool useCustomSpec < ui_label = "Use Custom Ped Specular"; ui_category = "PLAYER PED"; ui_tooltip = "Toggle on/off will apply on next game restart\nDisabled by default to avoid issues with some custom clothes like EUP"; ui_spacing = 1; > = false;
uniform float skinSpecIntensity < ui_label = "Ped Skin Specular Intensity"; ui_type = "drag"; ui_min = 0.001; ui_max = 1000.0; ui_category = "PLAYER PED"; ui_tooltip = "Skin Specular Intensity"; > = 1.0;
uniform float skinSpecFresnel < ui_label = "Ped Skin Specular Fresnel"; ui_type = "drag"; ui_min = 0.001; ui_max = 10.0; ui_category = "PLAYER PED"; ui_tooltip = "Skin Specular Fresnel"; > = 1.0;
uniform float pedBumpiness < ui_label = "Ped Skin Bumpiness"; ui_type = "drag"; ui_min = 0.001; ui_max = 3.0; ui_category = "PLAYER PED"; ui_tooltip = "Skin Bumpiness"; > = 1.0;
uniform float skinDetail < ui_label = "Ped Skin Detail"; ui_type = "drag"; ui_min = 0.001; ui_max = 4.0; ui_category = "PLAYER PED"; ui_tooltip = "Skin / Facial Detail"; > = 1.0;
uniform int sep14 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool Disable_Chromatic_Aberration_n_Distortion < ui_label = "Disable ChromaticAberration & Distortion"; ui_category = "DISABLE FEATURES"; > = false;
uniform bool Disable_Volume_Lights < ui_label = "Disable Volume Lights"; ui_category = "DISABLE FEATURES"; ui_tooltip = "Disabling volume lights improves performance at night time"; > = false;
uniform bool Disable_Weapon_Reticle < ui_label = "Disable Weapon Reticle"; ui_category = "DISABLE FEATURES"; > = false;
uniform bool Blood_Remove < ui_label = "Disable Screen Blood effect"; ui_category = "DISABLE FEATURES"; > = false;
uniform int sep15 < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;
uniform bool FPS_Limit < ui_label = "Use FPS Limit"; ui_tooltip = "Frame Rate Limiter"; ui_category = "MISC"; > = false;
uniform int FPSLimit < ui_label = "FPS Limit"; ui_min = 1; ui_max = 144; ui_category = "MISC"; > = 60;
uniform bool Skip_HUD < ui_label = "Skip HUD Elements"; ui_tooltip = ""; ui_category = "MISC"; ui_spacing = 1; > = false;
uniform int sepn < ui_label = " "; ui_type = "radio"; ui_text = "\n\n"; noedit = true; >;

uniform float timer < source = "timer"; >;
uniform bool overlay_open < source = "overlay_open"; >;
uniform float wasdf < hidden = true; >;
uniform int waasdf < hidden = true; > = __APPLICATION__;
static const float2 rcpFrame = float2(BUFFER_RCP_WIDTH, BUFFER_RCP_HEIGHT);
uniform float4 QuantV_1 < hidden = true; >;
uniform float4 QuantV_2 < hidden = true; >;
uniform float4 QuantV_3 < hidden = true; >;

texture BackBufferTex : COLOR;
texture DepthBufferTex : DEPTH;
sampler BackBuffer
{
    Texture = BackBufferTex;
};
sampler DepthBuffer
{
    Texture = DepthBufferTex;
};
texture2D TextureOriginal
{
    Width = BUFFER_WIDTH;
    Height = BUFFER_HEIGHT;
    Format = RGBA16F;
};
sampler2D sTextureOriginal
{
    Texture = TextureOriginal;
};
texture2D t8
{
    Width = BUFFER_WIDTH * 0.125;
    Height = BUFFER_HEIGHT * 0.125;
    Format = RGB10A2;
};
sampler2D st8
{
    Texture = t8;
};
texture shape < source = "QuantV/LensRain.png"; >
{
    Width = 1024;
    Height = 1024;
    Format = R8;
};
sampler2D shapes
{
    Texture = shape;
};
sampler BackBufferM
{
    Texture = BackBufferTex;
    AddressU = MIRROR;
    AddressV = MIRROR;
};
texture dd < source = "QuantV/18673.png"; >
{
    Width = 512;
    Height = 512;
};
sampler2D sdd
{
    Texture = dd;
    AddressU = WRAP;
    AddressV = WRAP;
};
#if (__RENDERER__ == 0xa000 || __RENDERER__ == 0xa100)
texture dx < source = "QuantV/dx.png"; >
{
    Width = 444;
    Height = 45;
};
sampler2D dxbuffer
{
    Texture = dx;
};
#endif

#define sngbool QuantV_1.x > 0.001 && Screen_Raindrops_NFS
#define t (timer > QuantV_1.y * 10000000.0 - 100.0) * saturate(tex2Dfetch(sTextureOriginal, 0).y) * (timer < QuantV_1.y * 10000000.0 + 100.0) * 23.9999
#define df(x,y) lerp(lerp(y, x, smoothstep(5.0, 5.5, t)), y, smoothstep(21.0, 21.5, t))
#define srs 0.05 * Screen_Raindrops_Scale
static const uint2 seed[72] = { uint2(150, 183), uint2(140, 181), uint2(148, 157), uint2(218, 190), uint2(184, 170), uint2(212, 205), uint2(137, 188), uint2(125, 138), uint2(129, 156), uint2(164, 198), uint2(127, 130), uint2(152, 175), uint2(163, 111), uint2(147, 191), uint2(117, 161), uint2(124, 197), uint2(220, 216), uint2(106, 193), uint2(176, 143), uint2(173, 171), uint2(209, 217), uint2(103, 204), uint2(141, 177), uint2(159, 122), uint2(201, 207), uint2(134, 200), uint2(211, 146), uint2(195, 105), uint2(196, 165), uint2(107, 100), uint2(178, 219), uint2(186, 135), uint2(101, 208), uint2(123, 144), uint2(162, 202), uint2(115, 214), uint2(149, 153), uint2(108, 155), uint2(168, 187), uint2(136, 133), uint2(145, 199), uint2(110, 126), uint2(121, 180), uint2(215, 119), uint2(172, 128), uint2(160, 112), uint2(203, 194), uint2(139, 192), uint2(113, 182), uint2(169, 174), uint2(154, 131), uint2(206, 104), uint2(142, 151), uint2(116, 132), uint2(166, 120), uint2(102, 109), uint2(179, 167), uint2(118, 158), uint2(210, 213), uint2(114, 185), uint2(241, 245), uint2(235, 231), uint2(221, 232), uint2(222, 238), uint2(239, 226), uint2(230, 234), uint2(240, 242), uint2(229, 237), uint2(223, 225), uint2(233, 243), uint2(228, 244), uint2(224, 236) };
void VS_Q_00(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD)
{
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
}
void VS_Q_01(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD, out float4 t1[3] : TEXCOORD1)
{
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
    float sz = 4.0 * 4.0 * 1.0;
    texcoord *= 1.0 - saturate(tex2Dfetch(sTextureOriginal, int2(0, 1)).y);
    t1[0].xy = texcoord + float2(rcpFrame.x * sz, 0.0);
    t1[0].zw = texcoord + rcpFrame * sz * float2(0.5, 0.8660254);
    t1[1].xy = texcoord + rcpFrame * sz * float2(-0.5, 0.8660254);
    t1[1].zw = texcoord + float2(-rcpFrame.x * sz, 0.0);
    t1[2].xy = texcoord + rcpFrame * sz * float2(-0.5, -0.8660254);
    t1[2].zw = texcoord + rcpFrame * sz * float2(0.5, -0.8660254);
}
void VS_Q_02(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD, out float4 t1[3] : TEXCOORD1, out nointerpolation float2 t2 : TEXCOORD4, out nointerpolation float4 t3 : TEXCOORD5)
{
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
    float sz = 4.0 * 4.0 * 3.0;
    t1[0].xy = texcoord + float2(rcpFrame.x * sz, 0.0);
    t1[0].zw = texcoord + rcpFrame * sz * float2(0.5, 0.8660254);
    t1[1].xy = texcoord + rcpFrame * sz * float2(-0.5, 0.8660254);
    t1[1].zw = texcoord + float2(-rcpFrame.x * sz, 0.0);
    t1[2].xy = texcoord + rcpFrame * sz * float2(-0.5, -0.8660254);
    t1[2].zw = texcoord + rcpFrame * sz * float2(0.5, -0.8660254);
    t2.xy = tex2Dfetch(sTextureOriginal, 0).yz;
    t3.x = df(3.98, 0.55);
    t3.y = (QuantV_1.w || Screen_Frozen_Snow_ForceEnable);
    t3.z = t3.y * Screen_Frozen_Snow * (1.0 - saturate(tex2Dfetch(sTextureOriginal, int2(0, 1)).y));
    t3.w = 0.0;
}
void func_qr(float2 texcoord, inout float4 t1[30], uint index)
{
    float2 sz[30];
    float2 fo[30];
    float ist = ((timer > QuantV_1.y * 10000000.0 - 100.0) && (timer < QuantV_1.y * 10000000.0 + 100.0)) * lerp(0.741, 1.049, saturate(tex2Dfetch(sTextureOriginal, 0).x));
    [unroll] for (int i = 0; i < 30; ++i)
    {
        float sd = QuantV_1.y * seed[i + index].x * 21.0;
        float2 noise = frac(sin(floor(sd) * 12.9898 + seed[i + index] * 78.233) * 43758.5453);
        float2 coord = noise - float2(0.499, 0.52);
        float vignt = length(coord);
        sz[i] = (1.0 + frac(sd) * 0.7 + 0.3) * 0.05;
        sz[i].x *= (rcpFrame.x / rcpFrame.y);
        sz[i] *= lerp(1.0, 0.4, noise.y) * (1.0 - saturate(tex2Dfetch(sTextureOriginal, int2(0, 1)).y));
        fo[i] = coord / vignt * lerp(0.225, float2(1.0, 0.5), vignt * 2.0);
        fo[i].x *= (rcpFrame.x / rcpFrame.y);
        float2 Vec; sincos(seed[i + index].x, Vec.y, Vec.x);
        t1[i].xy = mul(float2x2(Vec.x, -Vec.y, Vec.y, Vec.x), ((texcoord * ist + (1.0 - ist) * float2(0.5, 0.19)) - float2(0.499, 0.52) - fo[i]) / sz[i]);
        t1[i].zw = (float2(4.0 * frac(i * 0.25), floor(i * 0.25)) + t1[i].xy + 0.5) * 0.25;
    }
}
void VS_Q_0(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD, out float4 t1[30] : TEXCOORD1)
{
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
    [unroll] for (int i = 0; i < 30; ++i) t1[i] = 0.0;
    if (sngbool) func_qr(texcoord, t1, 0);
}
void VS_Q_1(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD, out float4 t1[30] : TEXCOORD1)
{
    texcoord.x = (id == 2) ? 2.0 : 0.0;
    texcoord.y = (id == 1) ? 2.0 : 0.0;
    position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
    [unroll] for (int i = 0; i < 30; ++i) t1[i] = 0.0;
    if (sngbool) func_qr(texcoord, t1, 30);
}
float4 PS_Q_00(float4 position : SV_Position, float2 texcoord : TEXCOORD) : SV_Target
{
    float d = tex2Dlod(DepthBuffer, float4(texcoord, 0.0, 0.0)).x == 0.0;
    float4 r = tex2Dfetch(BackBuffer, int2(0, 1)).wywy;
    d += tex2Dlod(DepthBuffer, float4(texcoord, 0.0, 0.0), int2(1, 0)).x == 0.0;
    d += tex2Dlod(DepthBuffer, float4(texcoord, 0.0, 0.0), int2(0, 1)).x == 0.0;
    d += tex2Dlod(DepthBuffer, float4(texcoord, 0.0, 0.0), int2(-1, 0)).x == 0.0;
    d += tex2Dlod(DepthBuffer, float4(texcoord, 0.0, 0.0), int2(0, -1)).x == 0.0;
    r.w = r.w > 0.001 && r.w < 0.999;
    r.xyz = tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0)).xyz;
    return lerp(float4(r.xyz, d * 0.2), float4(0, 1, 0, d * 0.2), r.w && position.x < 1 && position.y < 3);
}
float4 PS_Q_01(float4 position : SV_Position, float2 texcoord : TEXCOORD) : SV_Target
{
    return float4(tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0)).xyz, 0.0);
}
float4 PS_Q_1(float4 position : SV_Position, float2 texcoord : TEXCOORD) : SV_Target
{
    return tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0));
}
float4 PS_Q_2(float4 position : SV_Position, float2 texcoord : TEXCOORD, float4 t1[30] : TEXCOORD1) : SV_Target
{
    float4 res = tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0));
    if (sngbool)
    {
        [unroll] for (int i = 0; i < 30; ++i)
        {
            float lens = tex2Dlod(shapes, float4(t1[i].zw, 0.0, 0.0)).x;
            bool2 k1 = (0.5 >= abs(t1[i].xy));
            res.w += lens * k1.x * k1.y * (1.0 - frac(QuantV_1.y * seed[i].x * 21.0)) * (1.0 - saturate(tex2Dfetch(sTextureOriginal, int2(0, 1)).z)) * lerp(lerp(1.0, 0.2, smoothstep(4.9, 5.4, t)), 1.0, smoothstep(20.5, 21.1, t));
        }
        res.w *= QuantV_1.x;
    }
    return res;
}
float4 PS_Q_3(float4 position : SV_Position, float2 texcoord : TEXCOORD, float4 t1[30] : TEXCOORD1) : SV_Target
{
    float4 res = tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0));
    if (sngbool)
    {
        [unroll] for (int i = 0; i < 30; ++i)
        {
            float lens = tex2Dlod(shapes, float4(t1[i].zw, 0.0, 0.0)).x;
            bool2 k1 = (0.5 >= abs(t1[i].xy));
            res.w += lens * k1.x * k1.y * (1.0 - frac(QuantV_1.y * seed[i + 30].x * 21.0)) * (1.0 - saturate(tex2Dfetch(sTextureOriginal, int2(0, 1)).z)) * lerp(lerp(1.0, 0.2, smoothstep(4.9, 5.4, t)), 1.0, smoothstep(20.5, 21.1, t));
        }
        res.w *= QuantV_1.x;
    }
    return res;
}
float4 PS_Q_bb(float4 position : SV_Position, float2 texcoord : TEXCOORD, float4 t1[3] : TEXCOORD1) : SV_Target
{
    float3 res = tex2Dlod(BackBuffer, float4(texcoord, 0, 0)).xyz;
    if (sngbool)
    {
        float3 b = res;
        b += tex2Dlod(BackBuffer, float4(t1[0].xy, 0, 0)).xyz;
        b += tex2Dlod(BackBuffer, float4(t1[0].zw, 0, 0)).xyz;
        b += tex2Dlod(BackBuffer, float4(t1[1].xy, 0, 0)).xyz;
        b += tex2Dlod(BackBuffer, float4(t1[1].zw, 0, 0)).xyz;
        b += tex2Dlod(BackBuffer, float4(t1[2].xy, 0, 0)).xyz;
        b += tex2Dlod(BackBuffer, float4(t1[2].zw, 0, 0)).xyz;
        float3 fl = tex2Dlod(BackBufferM, float4(texcoord + (0.5 - texcoord) * 1.5, 0, 0)).xyz;
        fl = smoothstep(fl, 0.0, saturate(0.97 - dot(fl, float3(0.2126, 0.7152, 0.0722))));
        b += lerp(dot(fl, float3(0.2126, 0.7152, 0.0722)), fl, 1.5) * 2.5;
        res = b * (1.0 / 7.0);
    }
    return float4(res, 0.0);
}
float4 PS_Q_mx2(float4 position : SV_Position, float2 texcoord : TEXCOORD, float4 t1[3] : TEXCOORD1, nointerpolation float2 t2 : TEXCOORD4, nointerpolation float4 t3 : TEXCOORD5) : SV_Target
{
    float4 res = tex2Dlod(BackBuffer, float4(texcoord, 0, 0));
    res.w = ((position.x < 1) && (position.y < 1)) ? t2.y : t2.x;
    if ((position.x < 1) && (position.y < 3)) res.xyz = tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0), int2(1, 0)).xyz;
    if (sngbool)
    {
        float3 b = tex2Dlod(st8, float4(texcoord, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[0].xy, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[0].zw, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[1].xy, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[1].zw, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[2].xy, 0, 0)).xyz;
        b += tex2Dlod(st8, float4(t1[2].zw, 0, 0)).xyz;
        b *= (1.0 / 7.0);
        b += tex2Dlod(st8, float4(texcoord + float2(-0.06, 0.35), 0, 0)).xyz * 0.3;
        b += tex2Dlod(st8, float4(texcoord + float2(0.01, -0.25), 0, 0)).xyz * 0.2;
        b = pow(saturate(b), 1.2);
        float dt = tex2Dlod(BackBuffer, float4(texcoord, 0, 0)).w;
        float rr = pow(tex2Dlod(BackBuffer, float4(texcoord, 0, 0), int2(1, 0)).w, 2.0);
        float uu = pow(tex2Dlod(BackBuffer, float4(texcoord, 0, 0), int2(0, 1)).w, 2.0);
        b = saturate(lerp(dot(b, float3(0.2126, 0.7152, 0.0722)), b, 2.4) * dt * 2.8);
        res.xyz = lerp(tex2Dlod(sTextureOriginal, float4(texcoord + saturate(dt - float2(rr, uu)) * 0.02, 0, 0)).xyz, 0.96, b);
    }
    if (Screen_Frozen_Snow)
    {
        float3 tex = tex2Dlod(sdd, float4(texcoord * 2.0 - timer * 0.0000002, 0, 0)).xyz;
        tex.xy -= 0.5;
        float vig = pow(abs(1.0 - smoothstep(0.975, 0.05, length(texcoord - 0.5) * t3.y)), 7.0) * t3.z;
        float noise = frac(sin(dot(texcoord, float2(12.9898, 78.233))) * 43758.5453);
        noise *= 0.025 * vig + tex.z * vig * t3.x;
        res.xyz = tex2Dlod(BackBufferM, float4(texcoord + tex.xy * vig, 0.0, 0.0)).xyz;
        res.xyz = lerp(res.xyz, 1.0, saturate(noise * 5.0));
    }
    return res;
}
#if (__RENDERER__ == 0xa000 || __RENDERER__ == 0xa100)
float4 PS_dx(float4 position : SV_Position, float2 texcoord : TEXCOORD) : SV_Target
{
    float4 res = tex2Dlod(BackBuffer, float4(texcoord, 0.0, 0.0));
    float2 scale = float2(BUFFER_WIDTH, BUFFER_HEIGHT) * float2(1.0 / 444.0, 1.0 / 45.0);
    float2 uv = (texcoord - 0.5) + 0.5 / scale;
    float3 m = tex2Dlod(dxbuffer, float4(uv * scale, 0.0, 0.0)).xyz;
    if (timer < 20000.0) res.xyz = lerp(res.xyz, m, saturate(m * rcp(timer) * 33333.0));
    return res;
}
#endif

technique QuantV < ui_tooltip = "QuantV"; >
{
#if (__RENDERER__ == 0xa000 || __RENDERER__ == 0xa100)
    pass p0
    {
        VertexShader = VS_Q_00;
        PixelShader = PS_dx;
    }
#else
    pass p0
    {
        VertexShader = VS_Q_00;
        PixelShader = PS_Q_00;
        RenderTarget = TextureOriginal;
    }
    pass p1
    {
        VertexShader = VS_Q_00;
        PixelShader = PS_Q_01;
    }
    pass p2
    {
        VertexShader = VS_Q_0;
        PixelShader = PS_Q_2;
    }
    pass p3
    {
        VertexShader = VS_Q_1;
        PixelShader = PS_Q_3;
    }
    pass p4
    {
        VertexShader = VS_Q_01;
        PixelShader = PS_Q_bb;
        RenderTarget = t8;
    }
    pass p5
    {
        VertexShader = VS_Q_02;
        PixelShader = PS_Q_mx2;
    }
#endif
}

bool UsePaletteTexture < string UIName = "Use ENB Palette Texture"; > = { false };
bool UseAtmos < string UIName = "Use Atmosphere (high altitude)"; > = { false };
int separator0 < string UIName = " "; int UIMin = 0; int UIMax = 0; > = { 0 };
bool UseLevels < string UIName = "Use Levels"; > = { false };
float3 iBlack < string UIName = "  Input Black Point"; string UIWidget = "color"; > = { 0.0314, 0.0353, 0.0392 };
float3 iWhite < string UIName = "  Input White Point"; string UIWidget = "color"; > = { 0.9568, 0.9353, 0.9137 };
float3 oBlack < string UIName = "  Output Black Point"; string UIWidget = "color"; > = { 0.0, 0.0, 0.0 };
float3 oWhite < string UIName = "  Output White Point"; string UIWidget = "color"; > = { 1.0, 1.0, 1.0 };
int separator1 < string UIName = "  "; int UIMin = 0; int UIMax = 0; > = { 0 };
float postfx_vignette_intensity < string UIName = "RDR2::Vignette Intensity"; > = { 0.2996 };
float3 postfx_vignette_tint < string UIName = "RDR2::Vignette Tint"; string UIWidget = "color"; > = { 1.0, 1.0, 1.0 };
float postfx_vignette_axis_scale_x < string UIName = "RDR2::Vignette Axis Scale X"; > = { 1.0 };
float postfx_vignette_axis_scale_y < string UIName = "RDR2::Vignette Axis Scale Y"; > = { 1.0 };
float postfx_vignette_axis_tilt_x < string UIName = "RDR2::Vignette Axis Tilt X"; > = { 0.0 };
float postfx_vignette_axis_tilt_y < string UIName = "RDR2::Vignette Axis Tilt Y"; > = { 0.0 };
float postfx_vignette_inner_radius < string UIName = "RDR2::Vignette Inner Radius"; > = { 0.2 };
float postfx_vignette_outer_radius < string UIName = "RDR2::Vignette Outer Radius"; > = { 2.0 };
int separator2 < string UIName = "   "; int UIMin = 0; int UIMax = 0; > = { 0 };
float vig_int_d < string UIName = "GammaVignette (day)"; float UIMin = 0.0; float UIMax = 1.0; > = { 0.0 };
float vig_int_n < string UIName = "GammaVignette (night)"; float UIMin = 0.0; float UIMax = 1.0; > = { 0.0 };
int separator3 < string UIName = "    "; int UIMin = 0; int UIMax = 0; > = { 0 };
float3 Tint_d < string UIName = "Tint Color (day)"; string UIWidget = "color"; > = { 0.37, 0.39, 0.46 };
float Tinti_d < string UIName = "Tint Intensity (day)"; float UIMin = 0.0; float UIMax = 1.0; > = { 0.0 };
int separator4 < string UIName = "     "; int UIMin = 0; int UIMax = 0; > = { 0 };
float3 Tint_n < string UIName = "Tint Color (night)"; string UIWidget = "color"; > = { 0.37, 0.39, 0.46 };
float Tinti_n < string UIName = "Tint Intensity (night)"; float UIMin = 0.0; float UIMax = 1.0; > = { 0.0 };
int separator5 < string UIName = "      "; int UIMin = 0; int UIMax = 0; > = { 0 };
float3 cm_d < string UIName = "Color Mood (day)"; string UIWidget = "color"; > = { 0.705, 0.635, 0.55 };
float cmi_d < string UIName = "Color Mood Intensity (day)"; float UIMin = 0.0; float UIMax = 1.0; float UIStep = 0.001; > = { 0.0 };
int separator6 < string UIName = "       "; int UIMin = 0; int UIMax = 0; > = { 0 };
float3 cm_n < string UIName = "Color Mood (night)"; string UIWidget = "color"; > = { 0.705, 0.635, 0.55 };
float cmi_n < string UIName = "Color Mood Intensity (night)"; float UIMin = 0.0; float UIMax = 1.0; float UIStep = 0.001; > = { 0.0 };
int separator7 < string UIName = "        "; int UIMin = 0; int UIMax = 0; > = { 0 };
float qBright_d < string UIName = "Bright (day)"; float UIMin = 0.01; float UIMax = 10.0; float UIStep = 0.001; > = { 1.0 };
float qContrast_d < string UIName = "Contrast (day)"; float UIMin = -1.0; float UIMax = 1.0; float UIStep = 0.001; > = { 0.0 };
float qGamma_d < string UIName = "Gamma (day)"; float UIMin = 0.01; float UIStep = 0.001; > = { 1.0 };
float qSaturation_d < string UIName = "Saturation (day)"; float UIStep = 0.001; > = { 1.0 };
int separator8 < string UIName = "         "; int UIMin = 0; int UIMax = 0; > = { 0 };
float qBright_n < string UIName = "Bright (night)"; float UIMin = 0.01; float UIMax = 10.0; float UIStep = 0.001; > = { 1.0 };
float qContrast_n < string UIName = "Contrast (night)"; float UIMin = -1.0; float UIMax = 1.0; float UIStep = 0.001; > = { 0.0 };
float qGamma_n < string UIName = "Gamma (night)"; float UIMin = 0.01; float UIStep = 0.001; > = { 1.0 };
float qSaturation_n < string UIName = "Saturation (night)"; float UIStep = 0.001; > = { 1.0 };
int separator9 < string UIName = "          "; int UIMin = 0; int UIMax = 0; > = { 0 };
float desatR_d < string UIName = "Desaturate Red (day)"; float UIMin = 0.0; > = { 0.0 };
float desatG_d < string UIName = "Desaturate Green (day)"; float UIMin = 0.0; > = { 0.0 };
float desatB_d < string UIName = "Desaturate Blue (day)"; float UIMin = 0.0; > = { 0.0 };
int separator10 < string UIName = "           "; int UIMin = 0; int UIMax = 0; > = { 0 };
float desatR_n < string UIName = "Desaturate Red (night)"; float UIMin = 0.0; > = { 0.0 };
float desatG_n < string UIName = "Desaturate Green (night)"; float UIMin = 0.0; > = { 0.0 };
float desatB_n < string UIName = "Desaturate Blue (night)"; float UIMin = 0.0; > = { 0.0 };
float4 Test1 < string UIName = "Test1"; string UIWidget = "color"; int UIHidden = 1; > ;
float4 Test2 < string UIName = "Test2"; string UIWidget = "color"; int UIHidden = 1; > ;

#include "ENBFeeder.fxh"

float4 ENBParams01;
float4 Timer;
float4 ScreenSize;
float4 Weather;
Texture2D TextureColor;
Texture2D TextureBloom;
Texture2D TextureLens;
Texture2D TextureAdaptation;
Texture2D TextureDepth;
Texture2D TexturePalette < string ResourceName = "enbpalette.bmp"; > ;
Texture2D noisetex < string ResourceName = "QuantV/18690.png"; > ;

SamplerState	Sampler0
{
	Filter = MIN_MAG_MIP_POINT;
	AddressU = Clamp;
	AddressV = Clamp;
};
SamplerState	Sampler1
{
	Filter = MIN_MAG_MIP_LINEAR;
	AddressU = Clamp;
	AddressV = Clamp;
};
SamplerComparisonState Sampler5
{
	Filter = COMPARISON_MIN_MAG_MIP_POINT;
	AddressU = Clamp;
	AddressV = Clamp;
	ComparisonFunc = LESS;
};

struct VS_INPUT_POST
{
	float3 pos	: POSITION;
	float2 txcoord	: TEXCOORD0;
};
struct VS_OUTPUT_POST
{
	float4 pos	: SV_POSITION;
	float2 txcoord0	: TEXCOORD0;
};
struct VS_OUTPUT_POST2
{
	float4 pos	: SV_POSITION;
	float2 txcoord0	: TEXCOORD0;
	nointerpolation float4 txcoord1	: TEXCOORD1;
	float3 txcoord2	: TEXCOORD2;
	nointerpolation float4 dn0 : UI0;
	nointerpolation float4 dn1 : UI1;
	nointerpolation float4 dn2 : UI2;
	nointerpolation float4 dn3 : UI3;
	nointerpolation float4 txcoord7 : TEXCOORD7;
	float4 txcoord8 : TEXCOORD8;
	nointerpolation float4 txcoord9 : TEXCOORD9;
};

cbuffer postfx_cbuffer : register(b5)
{
	float4 dofProj : packoffset(c0);
	float4 dofShear : packoffset(c1);
	float4 dofDist : packoffset(c2);
	float4 hiDofParams : packoffset(c3);
	float4 hiDofMiscParams : packoffset(c4);
	float4 PostFXAdaptiveDofEnvBlurParams : packoffset(c5);
	float4 PostFXAdaptiveDofCustomPlanesParams : packoffset(c6);
	float4 BloomParams : packoffset(c7);
	float4 Filmic0 : packoffset(c8);
	float4 Filmic1 : packoffset(c9);
	float4 BrightTonemapParams0 : packoffset(c10);
	float4 BrightTonemapParams1 : packoffset(c11);
	float4 DarkTonemapParams0 : packoffset(c12);
	float4 DarkTonemapParams1 : packoffset(c13);
	float2 TonemapParams : packoffset(c14);
	float4 NoiseParams : packoffset(c15);
	float4 DirectionalMotionBlurParams : packoffset(c16);
	float4 DirectionalMotionBlurIterParams : packoffset(c17);
	float4 MBPrevViewProjMatrixX : packoffset(c18);
	float4 MBPrevViewProjMatrixY : packoffset(c19);
	float4 MBPrevViewProjMatrixW : packoffset(c20);
	float3 MBPerspectiveShearParams0 : packoffset(c21);
	float3 MBPerspectiveShearParams1 : packoffset(c22);
	float3 MBPerspectiveShearParams2 : packoffset(c23);
	float lowLum : packoffset(c23.w);
	float highLum : packoffset(c24);
	float topLum : packoffset(c24.y);
	float scalerLum : packoffset(c24.z);
	float offsetLum : packoffset(c24.w);
	float offsetLowLum : packoffset(c25);
	float offsetHighLum : packoffset(c25.y);
	float noiseLum : packoffset(c25.z);
	float noiseLowLum : packoffset(c25.w);
	float noiseHighLum : packoffset(c26);
	float bloomLum : packoffset(c26.y);
	float4 colorLum : packoffset(c27);
	float4 colorLowLum : packoffset(c28);
	float4 colorHighLum : packoffset(c29);
	float4 HeatHazeParams : packoffset(c30);
	float4 HeatHazeTex1Params : packoffset(c31);
	float4 HeatHazeTex2Params : packoffset(c32);
	float4 HeatHazeOffsetParams : packoffset(c33);
	float4 LensArtefactsParams0 : packoffset(c34);
	float4 LensArtefactsParams1 : packoffset(c35);
	float4 LensArtefactsParams2 : packoffset(c36);
	float4 LensArtefactsParams3 : packoffset(c37);
	float4 LensArtefactsParams4 : packoffset(c38);
	float4 LensArtefactsParams5 : packoffset(c39);
	float4 LightStreaksColorShift0 : packoffset(c40);
	float4 LightStreaksBlurColWeights : packoffset(c41);
	float4 LightStreaksBlurDir : packoffset(c42);
	float4 globalFreeAimDir : packoffset(c43);
	float4 globalFogRayParam : packoffset(c44);
	float4 globalFogRayFadeParam : packoffset(c45);
	float4 lightrayParams : packoffset(c46);
	float4 lightrayParams2 : packoffset(c47);
	float4 seeThroughParams : packoffset(c48);
	float4 seeThroughColorNear : packoffset(c49);
	float4 seeThroughColorFar : packoffset(c50);
	float4 seeThroughColorVisibleBase : packoffset(c51);
	float4 seeThroughColorVisibleWarm : packoffset(c52);
	float4 seeThroughColorVisibleHot : packoffset(c53);
	float4 debugParams0 : packoffset(c54);
	float4 debugParams1 : packoffset(c55);
	float PLAYER_MASK : packoffset(c56);
	float4 VignettingParams : packoffset(c57);
	float4 VignettingColor : packoffset(c58);
	float4 GradientFilterColTop : packoffset(c59);
	float4 GradientFilterColBottom : packoffset(c60);
	float4 GradientFilterColMiddle : packoffset(c61);
	float4 DamageOverlayMisc : packoffset(c62);
	float4 ScanlineFilterParams : packoffset(c63);
	float ScreenBlurFade : packoffset(c64);
	float4 ColorCorrectHighLum : packoffset(c65);
	float4 ColorShiftLowLum : packoffset(c66);
	float Desaturate : packoffset(c67);
	float Gamma : packoffset(c67.y);
	float4 LensDistortionParams : packoffset(c68);
	float4 DistortionParams : packoffset(c69);
	float4 BlurVignettingParams : packoffset(c70);
	float4 BloomTexelSize : packoffset(c71);
	float4 TexelSize : packoffset(c72);
	float4 GBufferTexture0Param : packoffset(c73);
	float2 rcpFrame : packoffset(c74);
	float4 sslrParams : packoffset(c75);
	float3 sslrCenter : packoffset(c76);
	float4 ExposureParams0 : packoffset(c77);
	float4 ExposureParams1 : packoffset(c78);
	float4 ExposureParams2 : packoffset(c79);
	float4 ExposureParams3 : packoffset(c80);
	float4 LuminanceDownsampleOOSrcDstSize : packoffset(c81);
	float4 QuadPosition : packoffset(c82);
	float4 QuadTexCoords : packoffset(c83);
	float4 QuadScale : packoffset(c84);
	float4 BokehBrightnessParams : packoffset(c85);
	float4 BokehParams1 : packoffset(c86);
	float4 BokehParams2 : packoffset(c87);
	float2 DOFTargetSize : packoffset(c88);
	float2 RenderTargetSize : packoffset(c88.z);
	float BokehGlobalAlpha : packoffset(c89);
	float BokehAlphaCutoff : packoffset(c89.y);
	bool BokehEnableVar : packoffset(c89.z);
	float BokehSortLevel : packoffset(c89.w);
	float BokehSortLevelMask : packoffset(c90);
	float BokehSortTransposeMatWidth : packoffset(c90.y);
	float BokehSortTransposeMatHeight : packoffset(c90.z);
	float currentDOFTechnique : packoffset(c90.w);
	float4 fpvMotionBlurWeights : packoffset(c91);
	float3 fpvMotionBlurVelocity : packoffset(c92);
	float fpvMotionBlurSize : packoffset(c92.w);
}

VS_OUTPUT_POST VS_Draw(VS_INPUT_POST IN)
{
	VS_OUTPUT_POST OUT;
	OUT.pos.xyz = IN.pos.xyz;
	OUT.pos.w = 1.0;
	OUT.txcoord0.xy = IN.txcoord.xy;
	return OUT;
}

float4 dn4_func(float4 d4, float4 n4) {
	float t = Test2.w ? GameTime : Weather.w;
	float4 dn = lerp(n4, d4, smoothstep(5.0, 5.5, t));
	return lerp(dn, n4, smoothstep(21.0, 21.5, t));
}
VS_OUTPUT_POST2 VS_Draw2(VS_INPUT_POST IN)
{
	VS_OUTPUT_POST2 OUT;
	OUT.pos.xyz = IN.pos.xyz;
	OUT.pos.w = 1.0;
	OUT.txcoord0.xy = IN.txcoord.xy;

	float t = Test2.w ? GameTime : Weather.w;
	float3 lightdir = lerp(moonDirection, sunDirection, smoothstep(5.0, 5.5, t));
	OUT.txcoord1.xyz = lerp(lightdir, moonDirection, smoothstep(21.0, 21.5, t));

	float t0 = smoothstep(4.1, 4.7, t);
	float t1 = smoothstep(4.7, 5.9, t);
	float t2 = smoothstep(5.9, 9.0, t);
	float t3 = smoothstep(18.7, 19.9, t);
	float t4 = smoothstep(19.9, 21.0, t);
	float t5 = smoothstep(21.0, 21.9, t);
	float tx = lerp(0.001, 0.06, t0);
	tx = lerp(tx, 2.7, t1);
	tx = lerp(tx, 38.0, t2);
	tx = lerp(tx, 18.0, t3);
	tx = lerp(tx, 0.2, t4);
	tx = lerp(tx, 0.001, t5);

	//			no,extr,cle,clrng,cld,over,smog,fogg,rain,thun,bliz,neut,snow,snowl,xms,hallo
	const float w[16] = { 0.1,1.0,0.6,0.6,0.5,0.2,0.5,0.3,0.3,0.1,0.1,0.5,0.1,0.2,0.1,0.4 };
	tx *= lerp(w[(int)qWeather.x], w[(int)qWeather.y], qWeather.z);
	OUT.txcoord1.w = tx;

	float2 tvec = IN.txcoord.xy * float2(2.0, -2.0) + float2(-1.0, 1.0);
	tvec *= dofProj.xy;
	float3 wpos = ViewInverse0.xyz * tvec.x;
	wpos += ViewInverse1.xyz * tvec.y;
	wpos -= ViewInverse2.xyz;
	wpos.z -= 0.015;//
	OUT.txcoord2.xyz = wpos;

	OUT.dn0 = dn4_func(float4(Tint_d, Tinti_d), float4(Tint_n, Tinti_n));
	OUT.dn1 = dn4_func(float4(qBright_d, qContrast_d, qGamma_d, qSaturation_d), float4(qBright_n, qContrast_n, qGamma_n, qSaturation_n));
	OUT.dn2 = dn4_func(float4(desatR_d, desatG_d, desatB_d, vig_int_d), float4(desatR_n, desatG_n, desatB_n, vig_int_n));
	OUT.dn3 = dn4_func(float4(cm_d, cmi_d), float4(cm_n, cmi_n));

	OUT.txcoord7.x = 1.0;
	if ((VignettingParams.z > 0.9991) && (VignettingParams.z < 0.9998)) OUT.txcoord7.x = 0.0;
	if ((VignettingParams.z > 0.9982) && (VignettingParams.z < 0.9990)) OUT.txcoord7.x = 0.33333334;
	OUT.txcoord7.y = 0.0;//
	OUT.txcoord7.zw = TextureAdaptation.SampleLevel(Sampler0, 0, 0).xy;

	float isweno = ((Test1.x > 0.0) && (Test1.x < 10.0)) ? Test1.x : 0.0;
	float isLoad = Test2.w ? isweno : (OUT.txcoord7.x == 0.0);
	isLoad = isLoad * (1.0 - saturate(ExteriorInterior)) * (1.0 - Test2.y);
	//float spd = lerp(0.74, 1.0, saturate((dofProj.x - 0.8289914) * 5.0656252));
	float spd = lerp(0.74, 1.0, saturate((dofProj.x - 0.6217436) * 6.7541646));
	OUT.txcoord8.xy = Test2.w ? IN.txcoord.xy : IN.txcoord.xy * spd + (1.0 - spd) * float2(0.5, 0.19);
	OUT.txcoord8.zw = 0.0;//

	OUT.txcoord9.x = TextureBloom.Load(0).w;
	OUT.txcoord9.y = TextureBloom.Load(int3(0, 1, 0)).w;
	OUT.txcoord9.z = TextureBloom.Load(int3(0, 2, 0)).w;
	OUT.txcoord9.w = saturate(isLoad * (1.0 - OUT.txcoord9.z) + OUT.txcoord9.z);

	return OUT;
}

float3 Atmosphere(float3 res, float2 uv, float3 wpos, float4 lightdir)
{
	float3 direction = normalize(wpos);
	float scatter = exp2((dot(lightdir.xyz, direction) - 1.0)) * 0.5;
	float3 atmosphere = float3(0.72, 0.89, 1.4);
	atmosphere += normalize(atmosphere) * scatter;
	atmosphere *= lightdir.w;
	atmosphere *= TextureDepth.SampleCmpLevelZero(Sampler5, uv, 0.9975).x;
	float alt = (min(max(ViewInverse3.z, 700.0), 920.0) - ViewInverse3.z) / direction.z;
	float height = saturate(-direction.z * 100.0) * lerp(0.0, 0.06, saturate(ViewInverse3.z * 0.01 - 800.0 * 0.01));
	return lerp(res, max(res, atmosphere), smoothstep(22000.0, 20000.0, alt) * height);
}

float4 PS_Draw(VS_OUTPUT_POST2 IN, float4 v0 : SV_Position0) : SV_Target
{
	float3 res = TextureColor.SampleLevel(Sampler0, IN.txcoord0.xy, 0).xyz;
	res += TextureLens.SampleLevel(Sampler1, IN.txcoord0.xy, 0).xyz * ENBParams01.y;
	float3 bloom = TextureBloom.SampleLevel(Sampler1, IN.txcoord0.xy, 0).xyz;
	float grayadaptation = TextureAdaptation.SampleLevel(Sampler0, IN.txcoord0.xy, 0).x;
	grayadaptation = rcp(grayadaptation);
	grayadaptation = max(0.06, grayadaptation);
	grayadaptation = min(10.0, grayadaptation);
	res *= grayadaptation;
	bloom *= grayadaptation;
	res += max(bloom - res, 0.0) * ENBParams01.x * 2.0;

	float4 r0, r1, r2;
	r1.xy = IN.txcoord0.xy - 0.5;
	r2.x = dot(float2(postfx_vignette_axis_scale_x, postfx_vignette_axis_tilt_y), r1.xy);
	r2.y = dot(float2(postfx_vignette_axis_tilt_x, postfx_vignette_axis_scale_y), r1.xy);
	r1.xy = postfx_vignette_outer_radius * r2.xy;
	r1.x = dot(r1.xy, r1.xy);
	r1.x = r1.x - 0.04;
	r1.x = postfx_vignette_inner_radius * r1.x;
	r1.x = max(0.0, r1.x);
	r1.y = (r1.x < 1.0);
	r1.z = exp2(r1.x * -10.0);
	r1.z = 1.0 - r1.z;
	r1.xw = r1.xx - float2(1.0, 2.0);
	r1.w = exp2(r1.w * 10.0);
	r1.x = (0.0 < r1.x) ? r1.w : 0.0;
	r1.x = 0.998 + r1.x;
	r1.x = r1.y ? r1.z : r1.x;
	r1.yzw = res * postfx_vignette_tint;
	r1.yzw = r1.yzw * postfx_vignette_intensity - res;
	res = r1.xxx * r1.yzw + res;

	r1.xy = IN.txcoord0.xy - 0.5;
	r0.w = dot(r1.xy, r1.xy);
	r0.w = 1.0 - r0.w;
	r0.w = log2(r0.w);
	r0.w = VignettingParams.y * r0.w;
	r0.w = exp2(r0.w);
	r0.w = saturate(VignettingParams.x + r0.w);
	r0.w = saturate(VignettingParams.z * r0.w);
	r1.xyz = 1.0 - VignettingColor.xyz;
	r1.xyz = r0.w * r1.xyz + VignettingColor.xyz;
	r0.xyz = r1.xyz * r0.xyz;

	r0.w = dot(res, float3(0.2126, 0.7152, 0.0722));
	r0.xyz = lerp(r0.w, res, Desaturate);
	r1.x = saturate(r0.w / ColorShiftLowLum.w);
	r1.xyz = lerp(ColorShiftLowLum.xyz, ColorCorrectHighLum.xyz, r1.x);
	r2.xyz = r1.xyz * r0.xyz;
	r1.w = 1.0 - ColorCorrectHighLum.w;
	r0.w = -r1.w + r0.w;
	r1.w = 1.0 - r1.w;
	r1.w = max(0.01, r1.w);
	r0.w = saturate(r0.w / r1.w);
	r0.xyz = -r0.xyz * r1.xyz + r0.xyz;
	r0.xyz = saturate(r0.w * r0.xyz + r2.xyz);
	res = pow(r0.xyz, Gamma);//1.0/2.2

	return float4(res, IN.txcoord7.x);
}

float4 PS_DrawOriginal(VS_OUTPUT_POST2 IN, float4 v0 : SV_Position0) : SV_Target
{
	float4 r0, r1, r2, r3;

	float3 bloom = TextureBloom.SampleLevel(Sampler1, IN.txcoord0.xy, 0).xyz;
	float dirt = TextureBloom.SampleLevel(Sampler1, IN.txcoord8.xy, 0).w * IN.txcoord9.w;
	float right = TextureBloom.SampleLevel(Sampler1, IN.txcoord8.xy, 0, int2(1, 0)).w;
	float bottom = TextureBloom.SampleLevel(Sampler1, IN.txcoord8.xy, 0, int2(0, 1)).w;
	if ((v0.x < 1) && (v0.y < 3)) dirt = right = bottom = 0.0;
	float2 distort = saturate(dirt - float2(right * right, bottom * bottom)) * IN.txcoord9.x;
	r0.xyz = TextureColor.SampleLevel(Sampler0, IN.txcoord0.xy + distort, 0).xyz;
	r0.xyz += bloom * dirt * IN.txcoord9.y;
	if (IN.txcoord9.y == 0.0)r0.xyz = TextureColor.SampleLevel(Sampler0, IN.txcoord0.xy, 0).xyz;

	if (ViewInverse3.z > 700.0 && UseAtmos) r0.xyz = Atmosphere(r0.xyz, IN.txcoord0.xy, IN.txcoord2, IN.txcoord1);
	r0.xyz += TextureLens.SampleLevel(Sampler1, IN.txcoord0.xy, 0).xyz * ENBParams01.y;
	float2 adaptation = IN.txcoord7.zw;
	//float2 adaptation = TextureAdaptation.SampleLevel(Sampler0, IN.txcoord0.xy, 0).xy;
	r0.xyz += max(bloom - r0.xyz, 0.0) * ENBParams01.x;

	//dither
	r0.w = noisetex.Load(int3((int2)v0.yx & int2(63, 63), 0)).x * 2.0 - 1.0;
	r0.xyz = r0.w * 0.000781 + sqrt(r0.xyz);
	r0.xyz = r0.xyz * r0.xyz;

	//rdr2 vignette
	r1.xy = IN.txcoord0.xy - 0.5;
	r2.x = dot(float2(postfx_vignette_axis_scale_x, postfx_vignette_axis_tilt_y), r1.xy);
	r2.y = dot(float2(postfx_vignette_axis_tilt_x, postfx_vignette_axis_scale_y), r1.xy);
	r1.xy = postfx_vignette_outer_radius * r2.xy;
	r1.x = dot(r1.xy, r1.xy);
	r1.x = r1.x - 0.04;
	r1.x = postfx_vignette_inner_radius * r1.x;
	r1.x = max(0.0, r1.x);
	r1.y = (r1.x < 1.0);
	r1.z = exp2(r1.x * -10.0);
	r1.z = 1.0 - r1.z;
	r1.xw = r1.xx - float2(1.0, 2.0);
	r1.w = exp2(r1.w * 10.0);
	r1.x = (0.0 < r1.x) ? r1.w : 0.0;
	r1.x = 0.998 + r1.x;
	r1.x = r1.y ? r1.z : r1.x;
	r1.yzw = r0.xyz * postfx_vignette_tint;
	r1.yzw = r1.yzw * postfx_vignette_intensity - r0.xyz;
	r0.xyz = r1.xxx * r1.yzw + r0.xyz;

	//gta5 vignette
	r1.xy = IN.txcoord0.xy - 0.5;
	r0.w = dot(r1.xy, r1.xy);
	r0.w = 1.0 - r0.w;
	r0.w = log2(r0.w);
	r0.w = VignettingParams.y * r0.w;
	r0.w = exp2(r0.w);
	r0.w = saturate(VignettingParams.x + r0.w);
	r0.w = saturate(VignettingParams.z * r0.w);
	r1.xyz = 1.0 - VignettingColor.xyz;
	r1.xyz = r0.w * r1.xyz + VignettingColor.xyz;
	r0.xyz = r1.xyz * r0.xyz;

	//gta5 tonemap
	r0.xyz = min(float3(65504.0, 65504.0, 65504.0), r0.xyz);
	r0.w = saturate(adaptation.y * TonemapParams.x + TonemapParams.y);
	r1.xyzw = DarkTonemapParams0.xyzw - BrightTonemapParams0.xyzw;
	r1.xyzw = r0.w * r1.xyzw + BrightTonemapParams0.xyzw;
	r2.xyz = DarkTonemapParams1.zxy - BrightTonemapParams1.zxy;
	r2.xyz = r0.w * r2.xyz + BrightTonemapParams1.zxy;
	r3.xy = r2.yz * r1.w;
	r0.w = r1.z * r1.y;
	r1.z = r1.x * r2.x + r0.w;
	r1.z = r2.x * r1.z + r3.x;
	r1.w = r1.x * r2.x + r1.y;
	r1.w = r2.x * r1.w + r3.y;
	r1.z = r1.z / r1.w;
	r1.w = r2.y / r2.z;
	r1.z = r1.z - r1.w;
	r1.z = 1.0 / r1.z;

	r0.xyz = adaptation.x * r0.xyz;
	r0.xyz = max(float3(0.0, 0.0, 0.0), r0.xyz);
	r2.xyz = r1.x * r0.xyz + r0.w;
	r2.xyz = r0.xyz * r2.xyz + r3.x;
	r3.xzw = r1.x * r0.xyz + r1.y;
	r0.xyz = r0.xyz * r3.xzw + r3.y;
	r0.xyz = r2.xyz / r0.xyz;
	r0.xyz = r0.xyz - r1.w;
	r0.xyz = saturate(r0.xyz * r1.z);

	//gta5 color process
	r0.w = dot(r0.xyz, float3(0.2126, 0.7152, 0.0722));
	r0.xyz = r0.xyz - r0.w;
	r0.xyz = Desaturate * r0.xyz + r0.w;
	r1.x = saturate(r0.w / ColorShiftLowLum.w);
	r1.yzw = ColorCorrectHighLum.xyz - ColorShiftLowLum.xyz;
	r1.xyz = r1.x * r1.yzw + ColorShiftLowLum.xyz;
	r2.xyz = r1.xyz * r0.xyz;
	r1.w = 1.0 - ColorCorrectHighLum.w;
	r0.w = -r1.w + r0.w;
	r1.w = 1.0 - r1.w;
	r1.w = max(0.01, r1.w);
	r0.w = saturate(r0.w / r1.w);
	r0.xyz = -r0.xyz * r1.xyz + r0.xyz;
	r0.xyz = saturate(r0.w * r0.xyz + r2.xyz);
	r0.xyz = pow(r0.xyz, Gamma);

	//extra color process
	r0.xyz = lerp(r0.xyz, r0.xyz * r0.xyz, smoothstep(0.0, 1.0, distance(IN.txcoord0.xy, float2(0.5, 1.0))) * IN.dn2.w);
	r0.xyz = lerp(r0.xyz, r0.xyz * IN.dn0.xyz * 2.55, IN.dn0.w);
	r0.xyz = r0.xyz * IN.dn1.x;
	r0.xyz = lerp(r0.xyz, 0.5 * (1.0 + sin((r0.xyz - 0.5) * 3.1415926)), IN.dn1.y);
	r0.xyz = pow(r0.xyz, IN.dn1.z);
	r0.xyz = saturate(lerp(dot(r0.xyz, float3(0.2126, 0.7152, 0.0722)), r0.xyz, IN.dn1.w));
	float sr = saturate((r0.x - r0.z - r0.y + r0.x) * IN.dn2.x);
	float sg = saturate((r0.y - r0.x - r0.z + r0.y) * IN.dn2.y);
	float sb = saturate((r0.z - r0.x - r0.y + r0.z) * IN.dn2.z);
	float fLum = dot(r0.xyz, 0.3333333);
	float3 colMood = lerp(IN.dn3.xyz * saturate(fLum * 2.0), 1.0, saturate(fLum - 0.5) * 2.0);
	r0.xyz = lerp(r0.xyz, colMood, saturate(fLum * IN.dn3.w));
	r0.xyz = lerp(r0.xyz, dot(r0.xyz, float3(0.2126, 0.7152, 0.0722)), saturate(sr + sg + sb));
	if (UseLevels) r0.xyz = (r0.xyz - iBlack) / (iWhite - iBlack) * (oWhite - oBlack) + oBlack;
	//if (UseLevels) r0.xyz = (r0.xyz - iBlack) / (iWhite - iBlack);

	[branch] if (UsePaletteTexture)
	{
		float brightness = adaptation.x;//0.001
		brightness = brightness / (brightness + 1.0);
		float3 palette;
		float2 uvpalette;
		r0.xyz = saturate(r0.xyz);
		uvpalette.y = brightness;
		uvpalette.x = r0.x;
		palette.x = TexturePalette.SampleLevel(Sampler1, uvpalette, 0).x;
		uvpalette.x = r0.y;
		palette.y = TexturePalette.SampleLevel(Sampler1, uvpalette, 0).y;
		uvpalette.x = r0.z;
		palette.z = TexturePalette.SampleLevel(Sampler1, uvpalette, 0).z;
		r0.xyz = palette;
	}

	r0.w = IN.txcoord7.x;
	return r0;
}

technique11 Draw < string UIName = "ENBSeries"; >
{
	pass p0
	{
		SetVertexShader(CompileShader(vs_5_0, VS_Draw2()));
		SetPixelShader(CompileShader(ps_5_0, PS_Draw()));
	}
}
technique11 ORIGINALPOSTPROCESS < string UIName = "Vanilla"; >
{
	pass p0
	{
		SetVertexShader(CompileShader(vs_5_0, VS_Draw2()));
		SetPixelShader(CompileShader(ps_5_0, PS_DrawOriginal()));
	}
}
