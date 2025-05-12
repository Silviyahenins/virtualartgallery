package com.hexaware.exceptions;

public class ArtworkNotFoundException extends RuntimeException {

	
private static final long serialVersionUID=1L;
	public ArtworkNotFoundException(String message) {
        super("Artwork not found:" + message);
    }
}
