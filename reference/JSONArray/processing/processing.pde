String[] species={"Capra hircus","Panthera pardus","Equus zebra"};
String[] names={"Goat","Leopard","Zebra"};

JSONArray values;
void setup(){
	values=new JSONArray();
	for(int i=0;i<species.length;i++){
		JSONObject animal=new JSONObject();
		animal.setInt("id",i);
		animal.setString("species",species[i]);
		animal.setString("name",names[i]);

		values.setJSONObject(i,animal);
	}

	saveJSONArray(values,"data/new.json");
}
