import std.stdio;
import meilisearch;
import requests: Response;

void main()
{
	auto client = new Client("http://127.0.0.1:7700", "12345");
	auto index = client.createIndex("users");

	Response r = index.health();
	writeln("code ", r.code);
	writeln("body ", r.responseBody);

	Response r2 = index.addDocuments(`[{"id":"1", "name":"Car"}, {"id":"2", "name":"Bike"}]`);
	writeln("code ", r2.code);
	writeln("body ", r2.responseBody);


	Response r3 = index.search(`Car`);
	writeln("code ", r3.code);
	writeln("body ", r3.responseBody);
}
