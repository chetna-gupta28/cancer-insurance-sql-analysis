USE cancer_insurance;


-- =====================================================
-- ANALYSIS 1: Total Number of Cancer Claims
-- Business Question:
-- How many cancer insurance claims are present
-- in our database?
-- =====================================================

SELECT COUNT(*) AS total_claims
FROM cancer_claims;


-- =====================================================
-- ANALYSIS 2: Approved vs Rejected Claims
-- Business Question:
-- How many cancer insurance claims were approved
-- and how many were rejected?
-- =====================================================

SELECT claim_status, COUNT(*) AS total_claims
FROM cancer_claims
GROUP BY claim_status;


-- =====================================================
-- ANALYSIS 3: Claims by Cancer Type
-- Business Question:
-- Which cancer type has the highest number of claims?
-- =====================================================

SELECT cancer_type, COUNT(*) AS total_claims
FROM cancer_claims
GROUP BY cancer_type
ORDER BY total_claims DESC;

-- =====================================================
-- ANALYSIS 4: Average Claim Amount by Treatment Type
-- Business Question:
-- Which treatment type has the highest average
-- insurance claim amount?
-- =====================================================

SELECT
    treatment_type,
    AVG(claim_amount) AS average_claim_amount
FROM cancer_claims
GROUP BY treatment_type
ORDER BY average_claim_amount DESC;


-- =====================================================
-- ANALYSIS 5: Cancer Claims by Sex
-- Business Question:
-- How many cancer claims are associated with
-- each sex in our dataset?
-- =====================================================

SELECT policyholders.sex, COUNT(*) AS total_claims
FROM policyholders
JOIN policies
ON policyholders.policyholder_id = policies.policyholder_id
JOIN cancer_claims
ON policies.policy_id = cancer_claims.policy_id
GROUP BY policyholders.sex;

-- =====================================================
-- ANALYSIS 6: Reasons for Rejected Claims
-- Business Question:
-- What are the reasons given for rejected
-- cancer insurance claims?
-- =====================================================

SELECT rejection_reason, COUNT(*) AS rejected_claims
FROM cancer_claims
WHERE claim_status = 'Rejected'
GROUP BY rejection_reason;

-- =====================================================
-- ANALYSIS 7: Average Claim Amount by Cancer Type
-- Business Question:
-- Which cancer type has the highest average
-- insurance claim amount?
-- =====================================================

SELECT cancer_type, AVG(claim_amount) AS average_claim_amount
FROM cancer_claims
GROUP BY cancer_type
ORDER BY average_claim_amount DESC;

-- =====================================================
-- ANALYSIS 8: Average Claim Amount by Claim Status
-- Business Question:
-- Is the average claim amount different for approved
-- and rejected claims?
-- =====================================================

SELECT
    claim_status,
    AVG(claim_amount) AS average_claim_amount
FROM cancer_claims
GROUP BY claim_status;

-- =====================================================
-- ANALYSIS 9: Claims by Cancer Stage
-- Business Question:
-- Which cancer stage has the highest number of claims?
-- =====================================================

SELECT cancer_stage, COUNT(*) AS total_claims
FROM cancer_claims
GROUP BY cancer_stage
ORDER BY total_claims DESC;

-- =====================================================
-- ANALYSIS 10: Total Claim Amount by Cancer Type
-- Business Question:
-- Which cancer type accounts for the highest
-- total amount claimed from insurance?
-- =====================================================

SELECT
    cancer_type,
    SUM(claim_amount) AS total_claim_amount
FROM cancer_claims
GROUP BY cancer_type
ORDER BY total_claim_amount DESC;

-- =====================================================
-- ANALYSIS 11: Claims by Policy Type
-- Business Question:
-- Which type of insurance policy has the highest
-- number of cancer claims?
-- =====================================================

SELECT
    policies.policy_type,
    COUNT(*) AS total_claims
FROM policies
JOIN cancer_claims
ON policies.policy_id = cancer_claims.policy_id
GROUP BY policies.policy_type
ORDER BY total_claims DESC;

-- =====================================================
-- ANALYSIS 12: Total Claim Amount by Policy Type
-- Business Question:
-- Which type of insurance policy accounts for the
-- highest total claim amount?
-- =====================================================

SELECT
    policies.policy_type,
    SUM(cancer_claims.claim_amount) AS total_claim_amount
FROM policies
JOIN cancer_claims
ON policies.policy_id = cancer_claims.policy_id
GROUP BY policies.policy_type
ORDER BY total_claim_amount DESC;

-- =====================================================
-- ANALYSIS 13: Average Claim Amount by Policy Type
-- Business Question:
-- What is the average claim amount for each
-- insurance policy type?
-- =====================================================

SELECT
    policies.policy_type,
    AVG(cancer_claims.claim_amount) AS average_claim_amount
FROM policies
JOIN cancer_claims
ON policies.policy_id = cancer_claims.policy_id
GROUP BY policies.policy_type
ORDER BY average_claim_amount DESC;

-- =====================================================
-- ANALYSIS 14: Chemotherapy Coverage
-- Business Question:
-- How many policies cover chemotherapy?
-- =====================================================

SELECT
    chemotherapy_covered,
    COUNT(*) AS total_policies
FROM policy_coverage
GROUP BY chemotherapy_covered;

-- =====================================================
-- ANALYSIS 15: Overall Treatment Coverage
-- Business Question:
-- How many policies provide coverage for each
-- major treatment or service?
-- =====================================================

SELECT
    SUM(daycare_covered) AS daycare_covered_policies,
    SUM(hospitalization_covered) AS hospitalization_covered_policies,
    SUM(chemotherapy_covered) AS chemotherapy_covered_policies,
    SUM(surgery_covered) AS surgery_covered_policies
FROM policy_coverage;

-- =====================================================
-- ANALYSIS 16: Average Claim Amount by Treatment
-- and Claim Status
-- Business Question:
-- How does the average claim amount differ between
-- approved and rejected claims for each treatment type?
-- =====================================================

SELECT
    treatment_type,
    claim_status,
    AVG(claim_amount) AS average_claim_amount
FROM cancer_claims
GROUP BY treatment_type, claim_status
ORDER BY treatment_type;

-- =====================================================
-- ANALYSIS 17: Claims by Year
-- Business Question:
-- How many cancer insurance claims were made
-- in each year?
-- =====================================================

SELECT
    YEAR(claim_date) AS claim_year,
    COUNT(*) AS total_claims
FROM cancer_claims
GROUP BY YEAR(claim_date)
ORDER BY claim_year;

-- =====================================================
-- ANALYSIS 18: Total Approved Claim Amount by Cancer Type
-- Business Question:
-- Which cancer type has the highest total amount
-- of approved claims?
-- =====================================================

SELECT
    cancer_type,
    SUM(claim_amount) AS total_approved_claim_amount
FROM cancer_claims
WHERE claim_status = 'Approved'
GROUP BY cancer_type
ORDER BY total_approved_claim_amount DESC;

-- =====================================================
-- ANALYSIS 19: Claims by Hospital Type
-- Business Question:
-- Which type of hospital handles the highest
-- number of cancer claims?

SELECT
    hospitals.hospital_type,
    COUNT(*) AS total_claims
FROM hospitals
JOIN cancer_claims
ON hospitals.hospital_id = cancer_claims.hospital_id
GROUP BY hospitals.hospital_type
ORDER BY total_claims DESC;

-- =====================================================
-- ANALYSIS 20: Claims by Hospital City
-- Business Question:
-- Which city has the highest number of cancer claims?

SELECT
    hospitals.city,
    COUNT(*) AS total_claims
FROM hospitals
JOIN cancer_claims
ON hospitals.hospital_id = cancer_claims.hospital_id
GROUP BY hospitals.city
ORDER BY total_claims DESC;