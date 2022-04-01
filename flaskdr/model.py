
from flask_sqlalchemy import SQLAlchemy



db= SQLAlchemy()




client_pet=db.Table(
    'client_pet',
    db.Column('account_id',db.Integer,db.ForeignKey('clients.account_id'),primary_key=True),
    db.Column('patient_id',db.Integer,db.ForeignKey('pets.patient_id'),primary_key=True),
    

)

class Client(db.Model):
    __tablename__='clients'
    account_id= db.Column(db.Integer,primary_key=True,autoincrement=True)
    first_name= db.Column(db.String(20),nullable=False)
    last_name=db.Column(db.String(20),nullable=False)
    animal_count=db.Column(db.Integer,nullable=False)
    new_client=db.Column(db.Boolean,nullable=False)
    children = db.relationship("Contact_information", back_populates="parent")
    pet_rel = db.relationship("Pet",secondary=client_pet,backref="owns")
    
    def __init__(self,first,last,animals,newClient):
        self.first_name=first
        self.last_name=last
        self.animal_count=animals
        self.new_client=newClient
    
    def serialize(self):
        return{
            'id':self.account_id,
            'name':self.first_name + self.last_name,
            'pet count':self.animal_count,
            'Are they new?':self.new_client
        }
    





class Contact_information(db.Model):
    __tablename__='contact_information'
    account_id=db.Column('account_id',db.Integer,db.ForeignKey('clients.account_id'),primary_key=True,autoincrement=True)
    address=db.Column(db.String(50),nullable=False)
    phone_number=db.Column(db.String(13),nullable=False)
    email=db.Column(db.String(50),nullable=True)
    parent = db.relationship("Client", back_populates="children")
    def __init__(self,address,phoneNumber,email):
    
        self.address=address
        self.phone_number=phoneNumber
        self.email=email

    def serialize(self):
        return{
            'account ID':self.account_id,
            'address':self.address,
            'phone number':self.phone_number,
            'email':self.email
        }

    





class Pet(db.Model):
    __tablename__='pets'
    patient_id=db.Column(db.Integer,primary_key=True)
    pet_name=db.Column(db.String(20),nullable=False)
    dob=db.Column(db.Date,nullable=False)
    species=db.Column(db.String(20),nullable=False)
    breed=db.Column(db.String(20),nullable=False)
    sex=db.Column(db.String(1),nullable=True)
    weight=db.Column(db.Integer,nullable=True)
    prev_diagnosis=db.Column(db.Text,nullable=True)
    

    def __init__(self,name,dob,species,breed,sex,weight,prev_diagnosis):
        self.pet_name=name
        self.dob=dob
        self.species=species
        self.breed=breed
        self.sex=sex
        self.weight=weight
        self.prev_diagnosis=prev_diagnosis
    def __repr__(self):
        return self.pet_name


class Appointment(db.Model):
    _tablename__='appointments'
    appointment_id=db.Column(db.Integer,primary_key=True,autoincrement=True)
    patient_id=db.Column(db.Integer,db.ForeignKey('pets.patient_id'),nullable=False)
    doctor_id=db.Column(db.Integer,db.ForeignKey('veterinarians.doctor_id'),nullable=False)
    date=db.Column(db.Date,nullable=False)
    time=db.Column(db.Time,nullable=False)
    appt_pet = db.relationship("Pet",backref="pet")
    appt_vet=db.relationship("Veterinarian",backref="vet")

   
   
    def __init__(self,date,time):
        self.date=date
        self.time=time

   




class Veterinarian(db.Model):
    __tablename__='veterinarians'
    doctor_id=db.Column(db.Integer,primary_key=True,autoincrement=True)
    name=db.Column(db.String(20),nullable=False)
    license_number=db.Column(db.String(15),nullable=False,unique=True)
    speciality=db.Column(db.Text,nullable=False)
    #appt = db.relationship("Appointment")

    def __init__(self,name,license,speciality):
        self.name=name
        self.license_number=license
        self.speciality=speciality
    def __repr__(self):
        return self.name




        

    


