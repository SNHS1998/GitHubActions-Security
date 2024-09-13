@isTest
private class GeoCodeFacingTest {

    @isTest
    static void testGeoCodeFacingConstructor() {
        // Arrange & Act: Create instance of GeoCodeFacing
        GeoCodeFacing geoCodeFacing = new GeoCodeFacing();
        
        // Assert: Ensure the instance is not null
        System.assertNotEquals(null, geoCodeFacing, 'GeoCodeFacing instance should not be null');
    }
}