import std.stdio;
import std.json:JSONValue, parseJSON;

import meilisearch;
import requests: Response;

void main()
{
	// run your melisearch instance with:
	// ./meilisearch --master-key 12345 
	// where 12345 is your key. Replace key with your own.
	auto client = Client(Config("http://127.0.0.1:7700", "12345"));
	auto index = client.createIndex("users");

	//Response r = index.health();
	//writeln("code ", r.code);
	//writeln("body ", r.responseBody);

	//Response r2 = index.addDocuments(`[{"id":"1", "name":"Car", "age":"13"}, {"id":"2", "name":"Bike", "age":"20"}]`);
	//writeln("code ", r2.code);
	//writeln("body r2", r2.responseBody);
	//writeln("body json", JSONValue(r2.responseBody.toString()));
	//auto r2Json = parseJSON(r2.responseBody.toString());
	//writeln(r2Json);
	//writeln(r2Json["updateId"].get!int);

	//Response r3 = index.search(`Car`);
	//writeln("code ", r3.code);
	//writeln("body ", r3.responseBody);

	//SearchParams options;
	//options.limit = 3;
	//options.attributesToRetrieve = ["name", "id"];
	//Response r3b = index.search(`Car`, options);
	//writeln("code ", r3b.code);
	//writeln("body ", r3b.responseBody);

	//Response r4 = index.getUpdateStatus(r2Json["updateId"].get!int);
	//writeln("code ", r4.code);
	//writeln("body ", r4.responseBody);

	//Response r5 = index.getAllUpdateStatus();
	//writeln("code ", r5.code);
	//writeln("body ", r5.responseBody);

	//Response r6 = index.getRawInfo();
	//writeln("code ", r6.code);
	//writeln("body ", r6.responseBody);

	//index.fetchInfo();
	//writeln("primaryKey ", index.primaryKey);

	//index.crea();
	//writeln("primaryKey ", index.primaryKey);
	
	// writeln("primaryKey ", index.fetchPrimaryKey());
	// writeln("stats ", index.getStats());

	//Response r7 = index.updateIndex(`{"primaryKey":"boys"}`);
	//writeln("code ", r7.code);
	//writeln("body ", r7.responseBody);

	//Response r8 = index.getDocuments();
	//writeln("code ", r8.code);
	//writeln("body ", r8.responseBody);

	GetDocumentsParams gdOptions;
	gdOptions.limit = 3;
	Response r8b = index.getDocuments(gdOptions);
	writeln("code ", r8b.code);
	writeln("body ", r8b.responseBody);

	//Response r9 = index.getDocument(1);
	//writeln("code ", r9.code);
	//writeln("body ", r9.responseBody);

	//Response r10 = index.deleteIndex();
	//writeln("code ", r10.code);
	//writeln("body ", r10.responseBody);

	//Response r10 = index.updateDocuments(`[{"id":"1", "name":"Motor"}]`);
	//writeln("code ", r10.code);
	//writeln("body ", r10.responseBody);

	//Response r11 = index.deleteDocument("1");
	//writeln("code ", r11.code);
	//writeln("body ", r11.responseBody);

	//Response r12 = index.deleteDocuments(["1", "2"]);
	//writeln("code ", r12.code);
	//writeln("body ", r12.responseBody);

	//Response r13 = index.deleteAllDocuments();
	//writeln("code ", r13.code);
	//writeln("body ", r13.responseBody);

	//Response r14 = index.getSettings();
	//writeln("code ", r14.code);
	//writeln("body ", r14.responseBody);

	//Response r15 = index.getSettings();
	//writeln("code ", r15.code);
	//writeln("body ", r15.responseBody);

	//Response r15b = index.updateSettings(`
	//{
	//    "rankingRules": [
	//        "typo",
	//        "words",
	//        "proximity",
	//        "attribute",
	//        "wordsPosition",
	//        "exactness",
	//        "desc(age)",
	//        "desc(name)"
	//    ],
	//    "distinctAttribute": "id",
	//    "searchableAttributes": [
	//        "name",
	//        "age"
	//    ],
	//    "displayedAttributes": [
	//        "id",
	//        "name",
	//        "age"
	//    ],
	//    "stopWords": [
	//        "the",
	//        "a",
	//        "an"
	//    ],
	//    "synonyms": {
	//        "car": ["vehicle", "truck"],
	//        "bike": ["bicycle"]
	//    }
	//}
	//`);
	//writeln("code ", r15b.code);
	//writeln("body ", r15b.responseBody);

	//Response r16 = index.resetSettings();
	//writeln("code ", r16.code);
	//writeln("body ", r16.responseBody);

	//Response r17 = index.getSynonyms();
	//writeln("code ", r17.code);
	//writeln("body ", r17.responseBody);

	//Response r18 = index.updateSynonyms(`
	//	{
	//	   	"car": ["vehicle", "truck", "SUV"],
	//		"bike": ["bicycle","BMX"]
	//  	}
	//`);
	//writeln("code ", r18.code);
	//writeln("body ", r18.responseBody);

	//Response r19 = index.getStopWords();
	//writeln("code ", r19.code);
	//writeln("body ", r19.responseBody);

	//Response r20 = index.updateStopWords(`["the", "is", "an"]`);
	//writeln("code ", r20.code);
	//writeln("body ", r20.responseBody);

	//Response r20b = index.updateStopWords(["the", "is", "an","as"]);
	//writeln("code ", r20b.code);
	//writeln("body ", r20b.responseBody);

	//Response r21 = index.resetStopWords();
	//writeln("code ", r21.code);
	//writeln("body ", r21.responseBody);

	//Response r22 = index.getRankingRules();
	//writeln("code ", r22.code);
	//writeln("body ", r22.responseBody);

	//Response r23 = index.updateRankingRules(`
	//	[
	//	      "typo",
	//	      "words",
	//	      "proximity",
	//	      "attribute",
	//	      "wordsPosition",
	//	      "exactness",
	//	      "asc(name)",
	//	      "desc(age)"
	//  	]
 // `);
	//writeln("code ", r23.code);
	//writeln("body ", r23.responseBody);

	//Response r24 = index.resetRankingRules();
	//writeln("code ", r24.code);
	//writeln("body ", r24.responseBody);


	//Response r25 = index.getDistinctAttribute();
	//writeln("code ", r25.code);
	//writeln("body ", r25.responseBody);

	//Response r26 = index.updateDistinctAttribute(`id`);
	//writeln("code ", r26.code);
	//writeln("body ", r26.responseBody);

	//Response r27 = index.resetDistinctAttribute();
	//writeln("code ", r27.code);
	//writeln("body ", r27.responseBody);


	//Response r25 = index.getDistinctAttribute();
	//writeln("code ", r25.code);
	//writeln("body ", r25.responseBody);

	//Response r26 = index.updateDistinctAttribute(`"name"`);
	//writeln("code ", r26.code);
	//writeln("body ", r26.responseBody);

	//Response r27 = index.resetDistinctAttribute();
	//writeln("code ", r27.code);
	//writeln("body ", r27.responseBody);

	//Response r28 = index.getSearchableAttributes();
	//writeln("code ", r28.code);
	//writeln("body ", r28.responseBody);

	//Response r29 = index.updateSearchableAttributes(`["name", "age"]`);
	//writeln("code ", r29.code);
	//writeln("body ", r29.responseBody);

	//Response r27 = index.resetSearchableAttributes();
	//writeln("code ", r27.code);
	//writeln("body ", r27.responseBody);
}
