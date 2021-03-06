package de.htwg.Seapal.server;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;
import de.htwg.Seapal.client.DatabaseService;
import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.mysql.jdbc.Connection;

/**
 * The server side implementation of the RPC service.
 */
@SuppressWarnings("serial")
public class DatabaseServiceImpl extends RemoteServiceServlet implements DatabaseService {

	private Database db = new Database();

	/* Delete entry from table */
	@Override
	public Boolean deleteEntry(int bnr) throws IllegalArgumentException {
		
		Connection conn = db.getConnection();
		 
		if(conn != null)
		{
            Statement query;            
            
            try {
            	
	            query = conn.createStatement();
	            String sql = "DELETE FROM seapal.bootinfo " +  "WHERE bnr = " + bnr;
	            query.executeUpdate(sql);
               
	       } catch (Exception e) {
	    	   		e.printStackTrace();
	       }
		}
		return Boolean.TRUE;
	}

	/* Load all entries from database */
	@Override
	public LinkedList<String> loadEntries() throws IllegalArgumentException {
		
		Connection conn = db.getConnection();
		
		LinkedList<String> entries = new LinkedList<String>();
		 
		if(conn != null)
		{
            Statement query;            
            ResultSet result;
            
            try {
            	
	            query = conn.createStatement();
	 
	            String sql = "SELECT * " + "FROM bootinfo ";
	        
	            result = query.executeQuery(sql);
	        
	            while (result.next()) {
	        	
	            	StringBuilder row = new StringBuilder();
	        	
			       	row.append("{ ");
			        	
			       	row.append("\"bnr\":\"").append(result.getString("bnr")).append("\", ");
			       	row.append("\"bootname\":\"").append(result.getString("bootname")).append("\", ");
			       	row.append("\"typ\":\"").append(result.getString("typ")).append("\", ");
			       	row.append("\"konstrukteur\":\"").append(result.getString("konstrukteur")).append("\", ");
		        	row.append("\"baujahr\":").append(result.getString("baujahr")).append(", ");
		        	row.append("\"heimathafen\":\"").append(result.getString("heimathafen")).append("\", ");
		        	row.append("\"laenge\":").append(result.getString("laenge")).append(", ");
		        	row.append("\"breite\":").append(result.getString("breite")).append(", ");
		        	row.append("\"tiefgang\":").append(result.getString("tiefgang")).append(", ");
		        	row.append("\"eigner\":\"").append(result.getString("eigner")).append("\"");
		        
		        	row.append(" }");
		            	
		            entries.add(row.toString());
			    }
               
	       } catch (Exception e) {
	    	   e.printStackTrace();
	       }
		}
		return entries;
	}

	/* Load values for entries */
	@Override
	public String loadValues(int bnr) {
		
		Connection conn = db.getConnection();
		 
		StringBuilder row = new StringBuilder();
		
		if(conn != null)
		{
	        Statement query;            
	        ResultSet result;

	        try {
	        	
	            query = conn.createStatement();
	 
	            String sql = "SELECT * " + "FROM bootinfo " + "WHERE bnr = " + bnr;
	        
	            result = query.executeQuery(sql);
	        
	            while (result.next()) {
	        	
			       	row.append("{ ");
			        	
			       	row.append("\"bnr\":").append(result.getString("bnr")).append(", ");
			       	row.append("\"bootname\":\"").append(result.getString("bootname")).append("\", ");
			       	row.append("\"typ\":\"").append(result.getString("typ")).append("\", ");    	
		        	row.append("\"baujahr\":").append(result.getString("baujahr")).append(", ");
		        	row.append("\"registernummer\":").append(result.getString("registernummer")).append(", ");
		        	row.append("\"konstrukteur\":\"").append(result.getString("konstrukteur")).append("\", ");
		        	row.append("\"heimathafen\":\"").append(result.getString("heimathafen")).append("\", ");
		        	row.append("\"yachtclub\":\"").append(result.getString("yachtclub")).append("\", ");
		        	row.append("\"laenge\":").append(result.getString("laenge")).append(", ");
		        	row.append("\"breite\":").append(result.getString("breite")).append(", ");
		        	row.append("\"tiefgang\":").append(result.getString("tiefgang")).append(", ");
		        	row.append("\"eigner\":\"").append(result.getString("eigner")).append("\", ");
			       	row.append("\"motor\":\"").append(result.getString("motor")).append("\", ");
			       	row.append("\"segelzeichen\":\"").append(result.getString("segelzeichen")).append("\", ");
			       	row.append("\"masthoehe\":").append(result.getString("masthoehe")).append(", ");
		        	row.append("\"tankgroesse\":").append(result.getString("tankgroesse")).append(", ");
		        	row.append("\"versicherung\":\"").append(result.getString("versicherung")).append("\", ");
		        	row.append("\"wassertankgroesse\":").append(result.getString("wassertankgroesse")).append(", ");
		        	row.append("\"abwassertankgroesse\":").append(result.getString("abwassertankgroesse")).append(", ");
		        	row.append("\"grosssegelgroesse\":").append(result.getString("grosssegelgroesse")).append(", ");
		        	row.append("\"verdraengung\":").append(result.getString("verdraengung")).append(", ");
		        	row.append("\"genuagroesse\":").append(result.getString("genuagroesse")).append(", ");
		        	row.append("\"spigroesse\":").append(result.getString("spigroesse")).append(", ");
		        	row.append("\"rufzeichen\":\"").append(result.getString("rufzeichen")).append("\", ");
		        	row.append("\"rigart\":\"").append(result.getString("rigart")).append("\"");
		        
		        	row.append(" }");  	
	            }
			    
	       } catch (Exception e) {
	    	   e.printStackTrace();
	       }
		}
		return row.toString();
	}

	@Override
	public String insertEntry(String jsonString) throws IllegalArgumentException {
		
		Connection conn = db.getConnection();

		JSONObject json = null;
		
		try {
			json = new JSONObject(jsonString);
		} catch (JSONException e1) {
			e1.printStackTrace();
		}

		if(conn != null)
		{
            Statement query;            
            
            try {
            	
	            query = conn.createStatement();
	 
	            StringBuilder columns = new StringBuilder();
	            
	            columns.append("(");
	            columns.append("bootname, ");
	            columns.append("registernummer, ");
	            columns.append("segelzeichen, ");
	            columns.append("heimathafen, ");
	            columns.append("yachtclub, ");
	            columns.append("eigner, ");
	            columns.append("versicherung, ");
	            columns.append("rufzeichen, ");
	            columns.append("typ, ");
	            columns.append("konstrukteur, ");
	            columns.append("laenge, ");
	            columns.append("breite, ");
	            columns.append("tiefgang, ");
	            columns.append("masthoehe, ");
	            columns.append("verdraengung, ");
	            columns.append("rigart, ");
	            columns.append("baujahr, ");
	            columns.append("motor, ");
	            columns.append("tankgroesse, ");
	            columns.append("wassertankgroesse, ");
	            columns.append("abwassertankgroesse, ");
	            columns.append("grosssegelgroesse, ");
	            columns.append("genuagroesse, ");
	            columns.append("spigroesse");
	            columns.append(")");
	            
	            StringBuilder values = new StringBuilder();
	            
	            values.append("(");
	            values.append("\"").append(json.get("bootname")).append("\", ");
	            values.append(json.get("registernummer")).append(", ");
	            values.append("\"").append(json.get("segelzeichen")).append("\", ");
	            values.append("\"").append(json.get("heimathafen")).append("\", ");
	            values.append("\"").append(json.get("yachtclub")).append("\", ");
	            values.append("\"").append(json.get("eigner")).append("\", ");
	            values.append("\"").append(json.get("versicherung")).append("\", ");
	            values.append("\"").append(json.get("rufzeichen")).append("\", ");
	            values.append("\"").append(json.get("typ")).append("\", ");
	            values.append("\"").append(json.get("konstrukteur")).append("\", ");
	            values.append(json.get("laenge")).append(", ");
	            values.append(json.get("breite")).append(", ");
	            values.append(json.get("tiefgang")).append(", ");
	            values.append(json.get("masthoehe")).append(", ");
	            values.append(json.get("verdraengung")).append(", ");
	            values.append("\"").append(json.get("rigart")).append("\", ");
	            values.append(json.get("baujahr")).append(", ");
	            values.append("\"").append(json.get("motor")).append("\", ");
	            values.append(json.get("tankgroesse")).append(", ");
	            values.append(json.get("wassertankgroesse")).append(", ");
	            values.append(json.get("abwassertankgroesse")).append(", ");
	            values.append(json.get("grosssegelgroesse")).append(", ");
	            values.append(json.get("genuagroesse")).append(", ");
	            values.append(json.get("spigroesse"));
	            values.append(")");
	            
	            String sql = "INSERT INTO bootinfo " + columns.toString() + " VALUES " + values.toString();
	            
	            query.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
	            
	            ResultSet rs = query.getGeneratedKeys();
	            
	            if (rs.next()) {
	            	json.put("bnr", rs.getInt(1));
	            }

	       } catch (Exception e) {
	    	   	e.printStackTrace();
	       }
		}
		return json.toString();
	}
}
