#{

 In this exercise, we shrink the Earth to fit inside a human hair 50 micrometers in diameter, then evaluate the size of the universe when shrunk by the same proportion. As we will see, the sheer scale of space (not to mention time) reduces the odds of encountering intelligent extra-terriestrial life to more-or-less zero.

 References
 * Human Hair Diameter: https://en.wikipedia.org/wiki/Micrometre
 * Astronomical data sourced from Wikipedia
 
#}

# Constants
RADIUS_EARTH_METERS = 6.371e6;
RADIUS_UNIVERSE_METERS = 4.4e26;
DIAMETER_HUMAN_HAIR_METERS = 50e-6;
DIAMETER_SOLAR_SYSTEM_METERS = 9.09e12;
DISTANCE_LIGHT_YEAR_METERS = 9.461e15;
 
ONE_MILLION = 1e6;
ONE_BILLION = 1e9;
ONE_TRILLION = 1e12;

# Calculations

# ** Earth **
diameterEarthMeters = RADIUS_EARTH_METERS*2;
radiusEarthMetersMillions = RADIUS_EARTH_METERS/ONE_MILLION;
diameterEarthMetersMillions = diameterEarthMeters/ONE_MILLION;
 
# ** Universe **
diameterUniverseMeters = RADIUS_UNIVERSE_METERS*2;
radiusUniverseLightYears = RADIUS_UNIVERSE_METERS/DISTANCE_LIGHT_YEAR_METERS;
diameterUniverseLightYears = radiusUniverseLightYears*2;
radiusUniverseLightYearsBillions = radiusUniverseLightYears/ONE_BILLION;
diameterUniverseLightYearsBillions = diameterUniverseLightYears/ONE_BILLION;
 
# ** Shrinkage **
shrinkFactorEarthToHumanHair = DIAMETER_HUMAN_HAIR_METERS/diameterEarthMeters;
shrinkFactorEarthToHumanHairTrillionths = shrinkFactorEarthToHumanHair*ONE_TRILLION;
diameterShrunkenUniverseMeters = diameterUniverseMeters*shrinkFactorEarthToHumanHair;
diameterShrunkenUniverseLightYears = diameterShrunkenUniverseMeters/DISTANCE_LIGHT_YEAR_METERS;

solarSystemsCount = (shrinkFactorEarthToHumanHair*diameterUniverseMeters)/DIAMETER_SOLAR_SYSTEM_METERS;

# Story

# ** The Earth **
printf("THE SHRUNKEN EARTH\nIf we could shrink the Earth to fit inside a human hair, how big would the observable universe, reduced by the same ratio, be? Technically, the Earth is an \"Oblate Spheroid,\" but, for our purposes, we'll assume it's a perfect sphere with a radius of %1.3e meters, which is %1.3f million meters. Its diameter is twice as much—%1.3f million meters.\n\n", RADIUS_EARTH_METERS, radiusEarthMetersMillions, diameterEarthMetersMillions);

# ** The Hair **
printf("Our hair, for this exercise, is 50 micrometers in diameter. As such, the Earth to Human Hair \"Shrink Factor\" is %1.3e. In other words, a human hair is about %1.0f trillionths the diameter of the Earth.\n\n", shrinkFactorEarthToHumanHair, shrinkFactorEarthToHumanHairTrillionths);

# ** The Universe **
printf("The radius of the observable universe is %1.1e meters, which is %1.3f billion light years. The diameter of the observable universe is twice that, or %1.3f billion light years. (Our Solar System, for comparison, is a little less than one thousandth of a light year across.)\n\n", RADIUS_UNIVERSE_METERS, radiusUniverseLightYearsBillions, diameterUniverseLightYearsBillions);

# ** Shrink the Universe **
printf("Shrinking the observable universe by %1.0f trillionths means multiplying the universe's diameter by a \"shrink factor\" of %1.3e. When reduced to %1.0f trillionths its current size, the observable universe is %1.3e meters in diameter — a little more than 1/3 of a light year. Which is still pretty big.\n\n", shrinkFactorEarthToHumanHairTrillionths, shrinkFactorEarthToHumanHair, shrinkFactorEarthToHumanHairTrillionths, diameterShrunkenUniverseMeters);

printf("How big?\n\n");

printf("If we use Neptune's aphelion (Neptune's farthest point from the Sun) as the Solar System's radius, the Solar System is %1.2e meters in diameter. ", DIAMETER_SOLAR_SYSTEM_METERS);

# ** Solar Systems per Shrunken Universe **
printf("To calculate the ratio of the Solar System's diameter to the \"shrunken\" universe, we divide the diameter of the shrunken universe by the diameter of the Solar System. And, voila! With the Earth inside a human hair, the universe is still about %3.0f current solar systems across.\n\n", solarSystemsCount);

printf("Far too large to find, much less encounter, intelligent extra-terrestrial life.");

printf("\n");
