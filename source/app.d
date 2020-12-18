import std.stdio;
import meilisearch;

void main()
{
	auto client = new Client("http://127.0.0.1:7700", "12345");
	auto index = client.createIndex("users");

	index.health();
	index.addDocuments(`[{"id":"1", "name":"Car"}, {"id":"2", "name":"Bike"}]`);
	index.search(`Car`);
}
