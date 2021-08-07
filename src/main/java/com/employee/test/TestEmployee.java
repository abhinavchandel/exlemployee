package com.employee.test;


import static org.hamcrest.CoreMatchers.equalTo;
import static org.junit.Assert.assertThat;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.HttpClientBuilder;
import org.junit.Test;
 

public class TestEmployee {
	
	@Test
	public void givenUserDoesNotExists_whenUserInfoIsRetrieved_then404IsReceived()
	  throws ClientProtocolException, IOException {
	 
	    // Given
	     
	    HttpUriRequest request = new HttpGet( "http://localhost:8085");

	    // When
	    HttpResponse httpResponse = HttpClientBuilder.create().build().execute( request );

	    // Then
	    assertThat(
	      httpResponse.getStatusLine().getStatusCode(),
	      equalTo(HttpStatus.SC_NOT_FOUND));
	}
	
	
}
