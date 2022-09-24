-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-05-21 02:52:07.79

-- tables
-- Table: Billing
CREATE TABLE Billing (
    BillingID int  NOT NULL,
    PatientID int  NOT NULL,
    Visits varchar(50)  NULL,
    MedicalBillingCodes varchar(50)  NULL,
    Payor varchar(50)  NULL,
    PaymentMethod varchar(50)  NULL,
    CONSTRAINT Billing_pk PRIMARY KEY  (BillingID)
);

-- Table: Costs
CREATE TABLE Costs (
    CostsID int  NOT NULL,
    PatientID int  NOT NULL,
    Medications varchar(50)  NULL,
    Procedures varchar(50)  NULL,
    CONSTRAINT Costs_pk PRIMARY KEY  (CostsID)
);

-- Table: Employee
CREATE TABLE Employee (
    EmployeeID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Address varchar(50)  NOT NULL,
    Phone int  NOT NULL,
    Email varchar(50)  NOT NULL,
    Salary varchar(50)  NOT NULL,
    Benefits varchar(50)  NULL,
    ContractType varchar(50)  NULL,
    ContractTerm varchar(50)  NULL,
    Reviews varchar(50)  NULL,
    Department varchar(50)  NULL,
    Office varchar(50)  NULL,
    OfficePhone varchar(50)  NULL,
    WorkSchedule varchar(50)  NULL,
    CONSTRAINT Employee_pk PRIMARY KEY  (EmployeeID)
);

-- Table: EquipmentReservations
CREATE TABLE EquipmentReservations (
    EquResID int  NOT NULL,
    FacilityID int  NOT NULL,
    EquipmentName varchar(50)  NOT NULL,
    CheckInTime datetime  NULL,
    CheckOutTime datetime  NULL,
    CONSTRAINT EquipmentReservations_pk PRIMARY KEY  (EquResID)
);

-- Table: Facility
CREATE TABLE Facility (
    FacilityID int  NOT NULL,
    FacilityName varchar(50)  NOT NULL,
    Location varchar(50)  NOT NULL,
    Hours datetime  NULL,
    RoomCapacity varchar(50)  NULL,
    Departments varchar(50)  NULL,
    CareCapcity varchar(50)  NULL,
    MedicalEquipment varchar(50)  NULL,
    CONSTRAINT Facility_pk PRIMARY KEY  (FacilityID)
);

-- Table: FacilityDetail
CREATE TABLE FacilityDetail (
    FacilityDetailID int  NOT NULL,
    FacilityID int  NOT NULL,
    LabID int  NOT NULL,
    ImagingID int  NOT NULL,
    PharmacyID int  NOT NULL,
    CONSTRAINT FacilityDetail_pk PRIMARY KEY  (FacilityDetailID)
);

-- Table: Imaging
CREATE TABLE Imaging (
    ImagingID int  NOT NULL,
    ImagingName varchar(50)  NOT NULL,
    Testing varchar(50)  NULL,
    CONSTRAINT Imaging_pk PRIMARY KEY  (ImagingID)
);

-- Table: InpatientRoomSchedules
CREATE TABLE InpatientRoomSchedules (
    InpRooScheID int  NOT NULL,
    EmployeeID int  NOT NULL,
    FacilityID int  NOT NULL,
    InpatientRoomName varchar(50)  NOT NULL,
    PatientID int  NOT NULL,
    Schedule datetime  NULL,
    CONSTRAINT InpatientRoomSchedules_pk PRIMARY KEY  (InpRooScheID)
);

-- Table: InsuranceCoverage
CREATE TABLE InsuranceCoverage (
    InsuranceID int  NOT NULL,
    PatientID int  NOT NULL,
    HealthInsuranceCompanyName varchar(50)  NOT NULL,
    Phone int  NOT NULL,
    ContactInfo varchar(50)  NULL,
    InsuranceCoverages varchar(50)  NOT NULL,
    CONSTRAINT InsuranceCoverage_pk PRIMARY KEY  (InsuranceID)
);

-- Table: Lab
CREATE TABLE Lab (
    LabID int  NOT NULL,
    LabName varchar(50)  NOT NULL,
    Tests varchar(50)  NULL,
    Results varchar(50)  NULL,
    MandatedReportingtoCountyState varchar(50)  NULL,
    CONSTRAINT Lab_pk PRIMARY KEY  (LabID)
);

-- Table: MedicalStaff
CREATE TABLE MedicalStaff (
    EmployeeID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Type varchar(50)  NOT NULL,
    Position varchar(50)  NOT NULL,
    Status varchar(50)  NOT NULL,
    CONSTRAINT MedicalStaff_pk PRIMARY KEY  (EmployeeID)
);

-- Table: NonMedicalStaffSchedule
CREATE TABLE NonMedicalStaffSchedule (
    NonMedStaScheID int  NOT NULL,
    EmployeeID int  NOT NULL,
    FacilityID int  NOT NULL,
    Schedule datetime  NULL,
    CONSTRAINT NonMedicalStaffSchedule_pk PRIMARY KEY  (NonMedStaScheID)
);

-- Table: NurseSchedules
CREATE TABLE NurseSchedules (
    NurScheID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    EmployeeID int  NOT NULL,
    FacilityID int  NOT NULL,
    Schedule datetime  NULL,
    CONSTRAINT NurseSchedules_pk PRIMARY KEY  (NurScheID)
);

-- Table: Patient
CREATE TABLE Patient (
    PatientID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Address varchar(50)  NULL,
    Phone int  NULL,
    Email varchar(50)  NULL,
    HealthInsuranceInfo varchar(50)  NULL,
    PrimaryCareDoctor varchar(50)  NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY  (PatientID)
);

-- Table: PatientAppointments
CREATE TABLE PatientAppointments (
    PatAppID int  NOT NULL,
    PatientID int  NOT NULL,
    EmployeeID int  NOT NULL,
    AppointmentDate datetime  NOT NULL,
    Description varchar(50)  NULL,
    CONSTRAINT PatientAppointments_pk PRIMARY KEY  (PatAppID)
);

-- Table: PatientMedicalRecords
CREATE TABLE PatientMedicalRecords (
    PatMedRecID int  NOT NULL,
    PatientID int  NOT NULL,
    Weight int  NULL,
    Height int  NULL,
    Vitals varchar(50)  NULL,
    CheckInTime datetime  NULL,
    CheckOutTime datetime  NULL,
    SymptomDiagnosticProcedureCodes int  NULL,
    AttendingPhysician varchar(50)  NULL,
    ReferralDoctor varchar(50)  NULL,
    MedicationHospitalizationDischarge varchar(50)  NULL,
    CONSTRAINT PatientMedicalRecords_pk PRIMARY KEY  (PatMedRecID)
);

-- Table: Pharmacy
CREATE TABLE Pharmacy (
    PharmacyID int  NOT NULL,
    PharmacyName varchar(50)  NOT NULL,
    Medicines varchar(50)  NULL,
    RentalEquipment varchar(50)  NULL,
    CONSTRAINT Pharmacy_pk PRIMARY KEY  (PharmacyID)
);

-- Table: PhysicianSchedules
CREATE TABLE PhysicianSchedules (
    PhyScheID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    EmployeeID int  NOT NULL,
    FacilityID int  NOT NULL,
    Schedule datetime  NULL,
    CONSTRAINT PhysicianSchedules_pk PRIMARY KEY  (PhyScheID)
);

-- Table: SurgeryRoomSchedules
CREATE TABLE SurgeryRoomSchedules (
    SurRooScheID int  NOT NULL,
    EmployeeID int  NOT NULL,
    FacilityID int  NOT NULL,
    SurgeryRoomName varchar(50)  NOT NULL,
    Schedule datetime  NULL,
    CONSTRAINT SurgeryRoomSchedules_pk PRIMARY KEY  (SurRooScheID)
);

-- Table: VisitingInfo
CREATE TABLE VisitingInfo (
    VisitingInfoID int  NOT NULL,
    PatientID int  NOT NULL,
    VisitorsID int  NOT NULL,
    CONSTRAINT VisitingInfo_pk PRIMARY KEY  (VisitingInfoID)
);

-- Table: Visitors
CREATE TABLE Visitors (
    VisitorsID int  NOT NULL,
    VisitorsName varchar(50)  NOT NULL,
    IDNumber varchar(50)  NOT NULL,
    DateOfBirth datetime  NULL,
    Picture image  NULL,
    PatientBeingVisited varchar(50)  NOT NULL,
    EntryTime datetime  NULL,
    ExitTime datetime  NULL,
    CONSTRAINT Visitors_pk PRIMARY KEY  (VisitorsID)
);

-- foreign keys
-- Reference: Billing_Patient (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: Costs_Patient (table: Costs)
ALTER TABLE Costs ADD CONSTRAINT Costs_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: EquipmentReservations_Facility (table: EquipmentReservations)
ALTER TABLE EquipmentReservations ADD CONSTRAINT EquipmentReservations_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: FacilityDetail_Facility (table: FacilityDetail)
ALTER TABLE FacilityDetail ADD CONSTRAINT FacilityDetail_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: FacilityDetail_Imaging (table: FacilityDetail)
ALTER TABLE FacilityDetail ADD CONSTRAINT FacilityDetail_Imaging
    FOREIGN KEY (ImagingID)
    REFERENCES Imaging (ImagingID);

-- Reference: FacilityDetail_Lab (table: FacilityDetail)
ALTER TABLE FacilityDetail ADD CONSTRAINT FacilityDetail_Lab
    FOREIGN KEY (LabID)
    REFERENCES Lab (LabID);

-- Reference: FacilityDetail_Pharmacy (table: FacilityDetail)
ALTER TABLE FacilityDetail ADD CONSTRAINT FacilityDetail_Pharmacy
    FOREIGN KEY (PharmacyID)
    REFERENCES Pharmacy (PharmacyID);

-- Reference: InpatientRoomSchedules_Facility (table: InpatientRoomSchedules)
ALTER TABLE InpatientRoomSchedules ADD CONSTRAINT InpatientRoomSchedules_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: InpatientRoomSchedules_MedicalStaff (table: InpatientRoomSchedules)
ALTER TABLE InpatientRoomSchedules ADD CONSTRAINT InpatientRoomSchedules_MedicalStaff
    FOREIGN KEY (EmployeeID)
    REFERENCES MedicalStaff (EmployeeID);

-- Reference: InsuranceCoverage_Patient (table: InsuranceCoverage)
ALTER TABLE InsuranceCoverage ADD CONSTRAINT InsuranceCoverage_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: MedicalStaff_Employee (table: MedicalStaff)
ALTER TABLE MedicalStaff ADD CONSTRAINT MedicalStaff_Employee
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID);

-- Reference: NurseSchedules_Facility (table: NurseSchedules)
ALTER TABLE NurseSchedules ADD CONSTRAINT NurseSchedules_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: NurseSchedules_MedicalStaff (table: NurseSchedules)
ALTER TABLE NurseSchedules ADD CONSTRAINT NurseSchedules_MedicalStaff
    FOREIGN KEY (EmployeeID)
    REFERENCES MedicalStaff (EmployeeID);

-- Reference: PatientAppointments_Employee (table: PatientAppointments)
ALTER TABLE PatientAppointments ADD CONSTRAINT PatientAppointments_Employee
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID);

-- Reference: PatientAppointments_Patient (table: PatientAppointments)
ALTER TABLE PatientAppointments ADD CONSTRAINT PatientAppointments_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: PatientMedicalRecords_Patient (table: PatientMedicalRecords)
ALTER TABLE PatientMedicalRecords ADD CONSTRAINT PatientMedicalRecords_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: PhysicianSchedules_Facility (table: PhysicianSchedules)
ALTER TABLE PhysicianSchedules ADD CONSTRAINT PhysicianSchedules_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: PhysicianSchedules_MedicalStaff (table: PhysicianSchedules)
ALTER TABLE PhysicianSchedules ADD CONSTRAINT PhysicianSchedules_MedicalStaff
    FOREIGN KEY (EmployeeID)
    REFERENCES MedicalStaff (EmployeeID);

-- Reference: SurgeryRoomSchedules_Facility (table: SurgeryRoomSchedules)
ALTER TABLE SurgeryRoomSchedules ADD CONSTRAINT SurgeryRoomSchedules_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: SurgeryRoomSchedules_MedicalStaff (table: SurgeryRoomSchedules)
ALTER TABLE SurgeryRoomSchedules ADD CONSTRAINT SurgeryRoomSchedules_MedicalStaff
    FOREIGN KEY (EmployeeID)
    REFERENCES MedicalStaff (EmployeeID);

-- Reference: Task_Employee (table: NonMedicalStaffSchedule)
ALTER TABLE NonMedicalStaffSchedule ADD CONSTRAINT Task_Employee
    FOREIGN KEY (EmployeeID)
    REFERENCES Employee (EmployeeID);

-- Reference: Task_Facility (table: NonMedicalStaffSchedule)
ALTER TABLE NonMedicalStaffSchedule ADD CONSTRAINT Task_Facility
    FOREIGN KEY (FacilityID)
    REFERENCES Facility (FacilityID);

-- Reference: VisitingInfo_Patient (table: VisitingInfo)
ALTER TABLE VisitingInfo ADD CONSTRAINT VisitingInfo_Patient
    FOREIGN KEY (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: VisitingInfo_Visitors (table: VisitingInfo)
ALTER TABLE VisitingInfo ADD CONSTRAINT VisitingInfo_Visitors
    FOREIGN KEY (VisitorsID)
    REFERENCES Visitors (VisitorsID);

-- End of file.

