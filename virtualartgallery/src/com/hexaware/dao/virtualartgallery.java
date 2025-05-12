package com.hexaware.dao;

import java.util.List;

import com.hexaware.entity.Artist;
import com.hexaware.entity.Artwork;
import com.hexaware.entity.Gallery;
import com.hexaware.entity.User;
import com.hexaware.exceptions.ArtworkNotFoundException;
import com.hexaware.exceptions.UserNotFoundException;


public interface virtualartgallery {
    boolean addArtwork(Artwork artwork);
    boolean updateArtwork(Artwork artwork);
    boolean removeArtwork(int artworkID);
    Artwork getArtworkById(int artworkID) throws ArtworkNotFoundException;
    boolean addUser(User user);
    boolean addArtist(Artist artist);
    boolean addGallery(Gallery gallery);
    boolean updateGallery(Gallery gallery);
    boolean removeGallery(int galleryID);
    List<Artwork> searchArtworks(String keyword);
    List<Gallery> searchGallerys(String keyword);
    boolean addArtworkToFavorite(int userId, int artworkId) throws UserNotFoundException;
    boolean removeArtworkFromFavorite(int userId, int artworkId);
    List<Artwork> getUserFavoriteArtworks(int userId);
}