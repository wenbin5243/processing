import java.util.Map;
HashMap<String,Integer> hm=new HashMap<String,Integer>();

hm.put("Ava",1);
hm.put("Cait",35);
hm.put("Casey",36);

for(Map.Entry me:hm.entrySet()){
  print(me.getKey()+" is ");
  println(me.getValue());
}

int val=hm.get("Casey");
println("Casey is "+val);