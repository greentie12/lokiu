public class CarData {
    
    public static void createPackageData(){
        
        Account acc = new Account(Name='Ace Auto');
        insert acc;
        
        List<Car_Type__c> carTypes = new List<Car_Type__c>();
        Car_Type__c carType1 = new Car_Type__c(Name='Exotic');
        Car_Type__c carType2 = new Car_Type__c(Name='Sports');
        Car_Type__c carType3 = new Car_Type__c(Name='Luxury');
        Car_Type__c carType4 = new Car_Type__c(Name='SUV');
        carTypes.add(carType1);
        carTypes.add(carType2);
        carTypes.add(carType3);
        carTypes.add(carType4);
        insert carTypes;
        
        List<Contact> contacts = new List<Contact>();
        Contact con1 = new Contact(Salutation='Ms.', FirstName='Gabriella',
                                  LastName='Conrado', AccountId=acc.id, Email='gabriela@kars-tester-drive.com');

        Contact con2 = new Contact(Salutation='Mr.', FirstName='Marty',
                                  LastName='Luna', AccountId=acc.id, Email='marty@kars-test-drive.com');

        Contact con3 = new Contact(Salutation='Mr.', FirstName='Mohammed',
                                  LastName='Azad', AccountId=acc.id, Email='mohammed@kars-test-drive.com');

        Contact con4 = new Contact(Salutation='Ms.', FirstName='Harini',
                                  LastName='Narendra', AccountId=acc.id, Email='harini@kars-test-drive.com');
        
        contacts.add(con1);
        contacts.add(con2);
        contacts.add(con3);
        contacts.add(con4);
    
        insert contacts;
        
        
        List<Car__c> cars = new List<Car__c>();
        Car__c car1 = new Car__c(Name='Ford Mustang', Contact__c=con1.id, Car_Type__c=carType2.id,
                                Year__c=2022, Description__c='With impressive horsepower & tire-squealing torque, you won\'t be at a loss for power with the 2021 Ford® Mustang GT Fastback.', Available_For_Test__c=true, 
                                Mileage__c=0, Price__c=65000,
                                Picture__c='https://images.unsplash.com/photo-1547744152-14d985cb937f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80' );

        Car__c car2 = new Car__c(Name='Ferrari Portofino', Contact__c=con1.id, Car_Type__c=carType1.id,
                                Year__c=2021, Description__c='The Ferrari Portofino (Type F164) is a grand touring sports car produced by the Italian automotive manufacturer Ferrari and has a 0–60 mph (0–97 km/h) time of 3.5 seconds.', Available_For_Test__c=false, 
                                Mileage__c=0, Price__c=213500,
                                Picture__c='https://images.unsplash.com/photo-1618265397716-9e124a1b75a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1696&q=80' );

        Car__c car3 = new Car__c(Name='Cadillac CT5-V Blackwing', Contact__c=con3.id, Car_Type__c=carType3.id,
                                Year__c=2022, Description__c='6.2L Supercharged V8 engine with 668 hp± and 659 lb-ft of torque. 10-speed automatic transmission. Latest-generation Magnetic Ride Control adaptive suspension', Available_For_Test__c=true, 
                                Mileage__c=20, Price__c=83995,
                                Picture__c='https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-cadillac-ct5-v-blackwing-1-1628524481.jpg' );

        Car__c car4 = new Car__c(Name='Dodge Challenger', Contact__c=con2.id, Car_Type__c=carType2.id,
                                Year__c=2021, Description__c='', Available_For_Test__c=true, 
                                Mileage__c=50, Price__c=52500,
                                Picture__c='https://images.unsplash.com/photo-1622994690845-56efd20992c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80' );

        Car__c car5 = new Car__c(Name='BMW X7', Contact__c=con1.id, Car_Type__c=carType4.id,
                                Year__c=2022, Description__c='The ground-breaking 2022 BMW X7 Sports Activity Vehicle® combines innovative design and an expansive presence, offering 3 rows of comfort seating.', Available_For_Test__c=true, 
                                Mileage__c=0, Price__c=74900,
                                Picture__c='https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-bmw-alpina-xb7-mmp-1-1629487681.jpg?crop=0.814xw:0.916xh;0.0801xw,0.00962xh&resize=640:*' );

        Car__c car6 = new Car__c(Name='Mercedes S580', Contact__c=con1.id, Car_Type__c=carType2.id,
                                Year__c=2022, Description__c='The 2022 Mercedes-Benz S-class is as much a personal limo for the ultra-wealthy as it is a rolling showcase of the company\'s latest tech', Available_For_Test__c=false, 
                                Mileage__c=0, Price__c=118750,
                                Picture__c='https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-mercedes-benz-s580-172-edit-1631555006.jpg?crop=0.696xw:0.520xh;0.242xw,0.480xh&resize=1200:*' );

        Car__c car7 = new Car__c(Name='Chevrolet Camaro ZL1', Contact__c=con1.id, Car_Type__c=carType2.id,
                                Year__c=2020, Description__c='', Available_For_Test__c=true, 
                                Mileage__c=25, Price__c=55950,
                                Picture__c='https://static.wikia.nocookie.net/gran-turismo/images/b/b0/Chevrolet_Camaro_ZL1_1LE_Package_%2718.jpg/revision/latest?cb=20190926080227' );

        Car__c car8 = new Car__c(Name='Ford Mustang Shelby GT500', Contact__c=con1.id, Car_Type__c=carType2.id,
                                Year__c=2021, Description__c='', Available_For_Test__c=true, 
                                Mileage__c=62, Price__c=110400,
                                Picture__c='https://www.jerrysfordofleesburg.net/inventoryphotos/7887/1fa6p8sj7m5502237/ip/2.jpg?height=400' );

        cars.add(car1);
        cars.add(car2);
        cars.add(car3);
        cars.add(car4);
        cars.add(car5);
        cars.add(car6);
        cars.add(car7);
        cars.add(car8);
        
        insert cars;
    }
}