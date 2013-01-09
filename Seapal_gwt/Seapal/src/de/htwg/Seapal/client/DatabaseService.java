package de.htwg.Seapal.client;

import java.util.LinkedList;

import com.google.gwt.user.client.rpc.RemoteService;
import com.google.gwt.user.client.rpc.RemoteServiceRelativePath;

/**
 * The client side stub for the RPC service.
 */
@RemoteServiceRelativePath("greet")
public interface DatabaseService extends RemoteService {
	LinkedList<String> loadEntries() throws IllegalArgumentException;
	String loadValues(int bnr) throws IllegalArgumentException;
	Boolean deleteEntry(int bnr) throws IllegalArgumentException;
	String insertEntry(String jsonString) throws IllegalArgumentException;
}