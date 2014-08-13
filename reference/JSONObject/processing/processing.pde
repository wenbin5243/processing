JSONObject json;

void setup(){
	json=new JSONObject();

	json.setInt("id",0);
	json.setString("species","Panthera leo");
	json.setString("name","Lion");

	saveJSONObject(json,"data/new.json");
}
