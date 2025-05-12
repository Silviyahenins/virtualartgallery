package com.hexaware.test;

import org.junit.jupiter.api.*;

import com.hexaware.dao.VirtualArtGalleryImpl;
import com.hexaware.entity.Artist;
import com.hexaware.entity.Artwork;
//import com.hexaware.entity.Artwork;
import com.hexaware.entity.Gallery;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class Junit {

    static VirtualArtGalleryImpl service;

    @BeforeAll
    static void setup() {
        service = new VirtualArtGalleryImpl();
    }

    // ---------- ARTWORK MANAGEMENT ----------

    @Test
    @Order(1)
    void testAddArtwork() {
        Artwork artwork = new Artwork(14, "Starry Night", "A beautiful painting", "1889-12-12", "Oil on Canvas", "url",10);
        boolean result = service.addArtwork(artwork);
        assertTrue(result, "Artwork should be added successfully");
    }

    @Test
    @Order(2)
    void testSearchArtwork() {
        List<Artwork> results = service.searchArtworks("Starry");
        assertFalse(results.isEmpty(), "Search should return at least one artwork");
    }

    @Test
    @Order(3)
    void testRemoveArtwork() {
        boolean result = service.removeArtwork(14);
        assertTrue(result, "Artwork should be removed successfully");
    }

    // ---------- GALLERY MANAGEMENT ----------
    void testaddArtist() {
    	Artist artist=new Artist(10,"Hero","sad","2002-02-02","indian","asdfghjkl","qwertyuiop");
    	boolean result=service.addArtist(artist);
    	assertTrue(result,"Added Artist Successfully");
    }
    @Test
    @Order(4)
    void testAddGallery() {
        Gallery gallery = new Gallery(201, "Modern Art Gallery", "A modern collection",10);
        boolean result = service.addGallery(gallery);
        assertTrue(result, "Gallery should be added successfully");
    }

    @Test
    @Order(5)
    void testUpdateGallery() {
        Gallery updated = new Gallery(201, "Modern Art Gallery Updated", "Updated info",10);
        boolean result = service.updateGallery(updated);
        assertTrue(result, "Gallery should be updated successfully");
    }

    

    @Test
    @Order(6)
    void testRemoveGallery() {
        boolean result = service.removeGallery(201);
        assertTrue(result, "Gallery should be removed successfully");
    }
}









//@Test
//@Order(2)
//void testUpdateArtwork() {
//  Artwork updated = new Artwork(14, "Starry Night - Updated", "Updated description","1888-02-02","oil","null",10);
//  boolean result = service.updateArtwork(updated);
//  assertTrue(result, "Artwork should be updated successfully");
//}