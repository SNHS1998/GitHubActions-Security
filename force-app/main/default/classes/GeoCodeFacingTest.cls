@isTest
private class GeoCodeFacingTest {

    @isTest
    static void testGeoCodeFacingConstructor() {
        // Act
        GeoCodeFacing geoCodeFacing = new GeoCodeFacing();
        
        // Assert
        System.assertNotEquals(null, geoCodeFacing, 'GeoCodeFacing instance should not be null');
    }
}
