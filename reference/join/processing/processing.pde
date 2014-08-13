String[] animals=new String[3];
animals[0]="cat";
animals[1]="seal";
animals[2]="bear";
String joinedAnimals=join(animals," : ");
println(joinedAnimals);

int[] numbers=new int[3];
numbers[0]=8;
numbers[1]=67;
numbers[2]=5;
String joinedNumbers=join(nf(numbers,0),", ");
println(joinedNumbers);