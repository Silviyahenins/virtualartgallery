package com.hexaware.entity;

public class UserFavouriteArtworks {
	private int userID;
	private int artworkID;
	public UserFavouriteArtworks(int userID, int artworkID) {
		super();
		this.userID = userID;
		this.artworkID = artworkID;
	}
	// Getters and Setters
	public int getUserID() { return userID; }
	public void setUserID(int userID) { this.userID = userID; }
	public int getArtworkID() { return artworkID; }
	public void setArtworkID(int artworkID) { this.artworkID = artworkID; }
	

}


