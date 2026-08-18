use cancer_insurance;
CREATE TABLE policyholders (
    policyholder_id INT PRIMARY KEY,
    age INT NOT NULL,
    sex VARCHAR(10) NOT NULL,
    city VARCHAR(50) NOT NULL,
    occupation VARCHAR(50)
);
describe policyholders;

CREATE TABLE policies (
    policy_id INT PRIMARY KEY,
    policyholder_id INT NOT NULL,
    policy_type VARCHAR(30) NOT NULL,
    annual_premium DECIMAL(10,2) NOT NULL,
    sum_insured DECIMAL(12,2) NOT NULL,
    policy_start_date DATE NOT NULL,
    policy_term_years INT NOT NULL,
    FOREIGN KEY (policyholder_id) REFERENCES policyholders(policyholder_id)
);
describe policies;
create table cancer_claims(
claim_id int primary key,
policy_id int not null,
cancer_type varchar(50) not null,
cancer_stage varchar(20) not null,
treatment_type varchar(50) not null,
claim_amount decimal(12,2) not null,
claim_date date not null,
claim_status varchar(20) not null,
rejection_reason varchar(100),
foreign key (policy_id) references policies(policy_id)
);
describe cancer_claims;
create table hospitals(
hospital_id int primary key,
hospital_name varchar(100) not null,
city varchar(50) not null,
hospital_type varchar(30) not null
);
describe hospitals;
CREATE TABLE policy_coverage (
    coverage_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    daycare_covered BOOLEAN NOT NULL,
    hospitalization_covered BOOLEAN NOT NULL,
    chemotherapy_covered BOOLEAN NOT NULL,
    surgery_covered BOOLEAN NOT NULL,
    FOREIGN KEY (policy_id) REFERENCES policies(policy_id)
);
DESCRIBE cancer_claims;


