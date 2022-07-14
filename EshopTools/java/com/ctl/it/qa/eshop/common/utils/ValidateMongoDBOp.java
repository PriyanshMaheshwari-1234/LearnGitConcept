package com.ctl.it.qa.eshop.common.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.bson.BasicBSONObject;
import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;

import cucumber.api.PendingException;

public class ValidateMongoDBOp {
	
	private static MongoClient mongoClient;

	public Boolean validateInsert(String dataBaseName, String collection, Map<String, Object> values) {
		
		mongoClient = getmongoValidateClient();
		BasicDBObject valuesQuery = new BasicDBObject();
		valuesQuery = createQuery(values);
		DB database = mongoClient.getDB(dataBaseName);
		DBCollection coll = database.getCollection(collection);
		DBCursor resultSet = coll.find(valuesQuery).limit(1);
		
		System.out.println(resultSet);
		
		     
		
		if (resultSet.hasNext())
		{
			BasicDBObject object = (BasicDBObject) resultSet.next();
		    String currentValue = object.getString("jeopardySubType");
			System.out.println(currentValue);
			
			if(currentValue.equalsIgnoreCase("Interrupting"))
			{
				return Boolean.TRUE;
				
			}
			else
			{
			//System.out.println("Successfully Validated the DB" + valuesQuery);
			return Boolean.FALSE;
			}
		}
		else 
		{
		
		return Boolean.FALSE;
		}		
}
		
		
		
	private String resultSet(String string) {
		// TODO Auto-generated method stub
		return null;
	}



	public Boolean validatePutAndPostOperation(String dataBaseName, String collection, Map<String, Object> values,
			String validationId) {
		try {
			mongoClient = getmongoValidateClient();
			BasicDBObject valuesQuery = new BasicDBObject();
			valuesQuery = createQuery(values);
			DB database = mongoClient.getDB(dataBaseName);
			DBCollection coll = database.getCollection(collection);
			DBCursor resultSet = coll.find(valuesQuery).limit(1);
			if (resultSet.hasNext()) {
				System.out.println("Successfully Validated the DB" + valuesQuery);
				return Boolean.TRUE;
			}
		} catch (Exception e) {
			//throw new EshopException("Error. Validation ID: " + validationId
				//	+ ", DB Validation failed. Possibly there was a connection problem or some other issue. Please analyse before trying again");
		}
		return Boolean.FALSE;
	}
	

	
	//Old Method to create MongoDB Connection
	/*public MongoClient getmongoValidateClient() {
		String host = "vlmddmong01.dev.intranet";
		int port = 26000;
		ServerAddress serveradds = null;
		serveradds = new ServerAddress(host, port);
		List<ServerAddress> serveraddsList = new ArrayList<>();
		serveraddsList.add(serveradds);
		mongoClient = new MongoClient(serveraddsList,Arrays.asList(MongoCredential.createCredential("BMP_rep","admin","BMP_rep_ctl123".toCharArray())));
		System.out.println("DB Connection Successfull");
		return mongoClient;

	}*/
	
// New method to create Environment Specific Mongodb Connection as per the input from Config file - Added by Arifa
	public MongoClient getmongoValidateClient() {
		
		String hostval = null;
		String portval = null;
		String usernameval = null;
		String passwordval = null;

		File file = new File("config.properties");
		FileInputStream fileinput = null;
		try {
			fileinput = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Properties property = new Properties();
		try {
			property.load(fileinput);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			fileinput.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Enumeration enumKeys = property.keys();

		while(enumKeys.hasMoreElements()){
		String key = (String) enumKeys.nextElement();

		if(key.equals("host"))
		hostval = property.getProperty(key);
		if(key.equals("port"))
		portval = property.getProperty(key);
		if(key.equals("username"))
		usernameval = property.getProperty(key);
		if(key.equals("password"))
		passwordval = property.getProperty(key);
		}
		
		//String host = "vlmddmong01.dev.intranet";
		
		int port = Integer.parseInt(portval);	
		ServerAddress serveradds = null;
		serveradds = new ServerAddress(hostval, port);
		List<ServerAddress> serveraddsList = new ArrayList<>();
		serveraddsList.add(serveradds);
		//mongoClient = new MongoClient(serveraddsList,Arrays.asList(MongoCredential.createCredential("BMP_rep","admin","BMP_rep_ctl123".toCharArray())));
		mongoClient = new MongoClient(serveraddsList,Arrays.asList(MongoCredential.createCredential(usernameval,"admin",passwordval.toCharArray())));
		System.out.println("DB Connection Successfull");
		return mongoClient;

	}
	
	

	/*public BasicDBObject createQuery(Map<String, String> val) {
		BasicDBObject fie = new BasicDBObject();
		val.forEach((key, value) -> {
			fie.put(key, value);
		});
		System.out.println("createQuery" +fie);
		return fie;
				
	}*/
	public BasicDBObject createQuery(Map<String, Object> val) {
		List<BasicDBObject> queryList = new ArrayList<>();
		BasicDBObject fie=null;
		BasicDBObject andQuery=new BasicDBObject();
		Iterator<Map.Entry<String, Object>> valIterator=val.entrySet().iterator();
		while(valIterator.hasNext()){
		fie=new BasicDBObject();
		Map.Entry<String, Object> entry = valIterator.next();
		fie.put(entry.getKey(), entry.getValue());	
		queryList.add(fie);	
		}
		andQuery.put("$and",queryList);
		System.out.println("createQuery" +andQuery);
		return andQuery;
	}
	
}
