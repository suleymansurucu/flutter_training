main(){

  BusinessWorkerPlan worker=BusinessWorkerPlan("Suleyman", 29);
  BusinessWorkerPlan worker2= Worker("Fatma Sara", 2, 120000);
  worker.showTheWorker();
  print("*******");
  worker2.showTheWorker();
}

class BusinessWorkerPlan{
String name;
int age;

BusinessWorkerPlan(this.name,this.age);

void showTheWorker(){
  print("Worker name is $name, age is $age");
}
}

class Worker extends BusinessWorkerPlan{
  int salary;
  Worker(super.name, super.age,this.salary);
  @override
  void showTheWorker() {
    print("Worker name is $name, age is $age, Yearly salary is $salary");

  }
}
