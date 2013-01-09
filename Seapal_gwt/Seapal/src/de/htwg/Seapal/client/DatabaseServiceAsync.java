package de.htwg.Seapal.client;

import java.util.LinkedList;

import com.google.gwt.user.client.rpc.AsyncCallback;

/**
 * The async counterpart of <code>GreetingService</code>.
 */
public interface DatabaseServiceAsync {
	void loadEntries(AsyncCallback<LinkedList<String>> callback) throws IllegalArgumentException;
	void deleteEntry(int bnr, AsyncCallback<Boolean> callback) throws IllegalArgumentException;
	void loadValues(int bnr, AsyncCallback<String> callback);
	void insertEntry(String jsonString, AsyncCallback<String> callback);
}
