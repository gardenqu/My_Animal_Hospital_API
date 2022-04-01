
from flaskdr.model import Appointment, Client,Contact_information,Pet,Veterinarian,client_pet,db
from flaskdr import create_app
from sqlalchemy_utils import create_database, database_exists
import json
from datetime import datetime








def truncate_tables():
    """Delete all rows from database tables"""
    db.session.execute(client_pet.delete())
    Contact_information.query.delete()
    Client.query.delete()
    Appointment.query.delete()
    Pet.query.delete()
    Veterinarian.query.delete()
    db.session.commit()


    
def main():
    """Main driver function"""
    app = create_app()
    app.app_context().push()

    if not database_exists('postgresql://postgres@localhost/my_animal_hospital'):
        create_database('postgresql://postgres@localhost/my_animal_hospital')
    else:
        truncate_tables()
   
    

    
    vet_data=json.load(open("vet.json"))
    
    for data in vet_data[0]["client"]:

        new_client= Client(data["first_name"],data["last_name"],data["animal_count"], True if data["new_client"]=="TRUE" else False)
        contact=Contact_information(data["address"],data["phone"],data["email"])
    

        db.session.add(new_client)
        db.session.add(contact)
        
        
     
    db.session.commit()
    for index,info in enumerate(vet_data[1]["pets"]):
        #Get Client Objects
        
        #Create Pet objects
        new_pet= Pet(info["pet_name"],info["dob"],info["species"],info["breed"],info["sex"],info["weight"],info["previous_diagnosis"])
        db.session.add(new_pet)
        #For loop to match Clients with their pets 
    db.session.commit()
    i=0
    client=db.session.query(Client).all()

    for c in client:
        pet=db.session.query(Pet).all()
        
        if c.animal_count <=1:
            c.pet_rel.append(pet[i]) 
            i+=1
        else:
            c.pet_rel.append(pet[i])
            c.pet_rel.append(pet[i+1])
            i+=2   
    db.session.commit()

    for v in vet_data[2]["veterinarians"]:
        new_vet=Veterinarian(v["name"],v["license_number"],v["speciality"])
        db.session.add(new_vet)
    db.session.commit()
    index=0
    patient=db.session.query(Pet).all()
    vet=db.session.query(Veterinarian).all()
    for d in vet_data[3]["date_and_time"]:
        times=datetime.strptime(d["time"],"%H:%M")
        new_appt=Appointment(d["date"],times)

       
        new_appt.appt_vet=vet[index]
        new_appt.appt_pet=patient[index]
        
    
       
        index+=1
        db.session.add(new_appt)
    db.session.commit()

    



    






        


   

    


main()




   