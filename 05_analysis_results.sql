USE cancer_insurance;

-- =====================================================
-- ANALYSIS 1 RESULT: Total Number of Cancer Claims

-- Result:
-- Total cancer claims = 75

-- Finding:
-- The dataset contains 75 cancer insurance claims.
-- =====================================================

-- ANALYSIS 2 RESULT: Approved vs Rejected Claims

-- Result:
-- Approved claims = 53
-- Rejected claims = 22

-- Finding:
-- Out of 75 cancer insurance claims, 53 were approved and 22 were rejected.
-- =====================================================

-- ANALYSIS 3 RESULT: Claims by Cancer Type

-- Result:
-- Breast = 23 claims
-- Lung = 16 claims
-- Colon = 15 claims
-- Blood = 14 claims
-- Prostate = 7 claims

-- Finding:
-- Breast cancer has the highest number of claims in the dataset with 23 claims, while prostate cancer has the lowest with 7 claims.

-- =====================================================
-- ANALYSIS 4 RESULT: Average Claim Amount by Treatment

-- Result:
-- Immunotherapy = ₹1,075,556 approximately
-- Chemotherapy = ₹682,581 approximately
-- Radiotherapy = ₹468,000
-- Surgery = ₹362,000

-- Finding:
-- Immunotherapy has the highest average claim amount, followed by chemotherapy, radiotherapy and surgery.
-- This indicates that immunotherapy claims have the highest average financial value in our dataset.
-- =====================================================

-- ANALYSIS 5 RESULT: Cancer Claims by Sex

-- Result:
-- Female = 38 claims
-- Male = 37 claims

-- Finding:
-- The number of cancer claims is almost evenly distributed between females and males in our dataset, with 38 claims for females and 37 claims for males.

-- =====================================================
-- ANALYSIS 6 RESULT: Reasons for Rejected Claims

-- Result:
-- Treatment not covered = 22 rejected claims

-- Finding:
-- All 22 rejected claims in the dataset were rejected because the treatment was not covered by the policy.

-- =====================================================
-- ANALYSIS 7 RESULT: Average Claim Amount by Cancer Type

-- Result:
-- Lung = ₹894,375 approximately
-- Blood = ₹658,571 approximately
-- Breast = ₹512,609 approximately
-- Colon = ₹468,667 approximately
-- Prostate = ₹317,143 approximately

-- Finding:
-- Lung cancer has the highest average claim amount at approximately ₹894,375, while prostate cancer has the lowest average claim amount at approximately ₹317,143 in our dataset.

-- =====================================================
-- ANALYSIS 8 RESULT: Average Claim Amount by Claim Status

-- Result:
-- Approved = ₹669,245 approximately
-- Rejected = ₹413,636 approximately

-- Finding:
-- Approved claims have a higher average claim amount than rejected claims in our dataset. The average approved claim is approximately ₹669,245, compared with approximately ₹413,636 for rejected claims.

-- =====================================================
-- ANALYSIS 9 RESULT: Claims by Cancer Stage

-- Result:
-- Stage II = 29 claims
-- Stage III = 23 claims
-- Stage IV = 13 claims
-- Stage I = 10 claims

-- Finding:
-- Stage II has the highest number of claims with 29, followed by Stage III with 23 claims. Stage I has the lowest number of claims with 10 in our dataset.

-- =====================================================
-- ANALYSIS 10 RESULT: Total Claim Amount by Cancer Type

-- Result:
-- Lung = ₹14,310,000
-- Breast = ₹11,790,000
-- Blood = ₹9,220,000
-- Colon = ₹7,030,000
-- Prostate = ₹2,220,000

-- Finding:
-- Lung cancer accounts for the highest total claim amount at ₹14.31 million, while prostate cancer accounts for the lowest total claim amount at ₹2.22 million in our 

-- =====================================================
-- ANALYSIS 11 RESULT: Claims by Policy Type

-- Result:
-- Standard = 26 claims
-- Premium = 26 claims
-- Basic = 23 claims

-- Finding:
-- Standard and Premium policies have the highest number of claims, with 26 claims each, while Basic policies have 23 claims in our dataset.

-- =====================================================
-- ANALYSIS 12 RESULT: Total Claim Amount by Policy Type

-- Result:
-- Premium = ₹20,520,000
-- Standard = ₹14,600,000
-- Basic = ₹9,450,000

-- Finding:
-- Premium policies account for the highest total claim amount at ₹20.52 million, followed by Standard policies at ₹14.60 million and Basic policies at ₹9.45 million.

-- =====================================================
-- ANALYSIS 13 RESULT: Average Claim Amount by Policy Type

-- Result:
-- Premium = ₹789,231 approximately
-- Standard = ₹561,538 approximately
-- Basic = ₹410,870 approximately

-- Finding:
-- Premium policies have the highest average claim amount at approximately ₹789,231, followed by Standard policies at approximately ₹561,538 and Basic policies at approximately ₹410,870.

-- =====================================================
-- ANALYSIS 14 RESULT: Chemotherapy Coverage

-- Result:
-- Chemotherapy covered (1) = 70 policies
-- Chemotherapy not covered (0) = 30 policies

-- Finding:
-- 70 out of 100 policies provide chemotherapy coverage,
-- while 30 policies do not provide chemotherapy coverage.

-- =====================================================
-- ANALYSIS 15 RESULT: Overall Treatment Coverage

-- Result:
-- Daycare covered = 70 policies
-- Hospitalization covered = 100 policies
-- Chemotherapy covered = 70 policies
-- Surgery covered = 60 policies

-- Finding:
-- All 100 policies provide hospitalization coverage. Daycare and chemotherapy are covered by 70 policies each, while surgery is covered by 60 policies.

-- =====================================================
-- ANALYSIS 16 RESULT: Average Claim Amount by Treatment and Claim Status

-- Result:
-- Chemotherapy - Approved = ₹692,593 approximately
-- Chemotherapy - Rejected = ₹615,000
-- Immunotherapy - Approved = ₹1,075,556 approximately
-- Radiotherapy - Approved = ₹456,667 approximately
-- Radiotherapy - Rejected = ₹485,000
-- Surgery - Approved = ₹395,455 approximately
-- Surgery - Rejected = ₹335,714 approximately

-- Finding:
-- Immunotherapy has the highest average claim amount among the treatment types in our dataset. For chemotherapy and surgery, approved claims have higher average claim amounts than rejected claims. For radiotherapy, rejected claims have a slightly higher average claim amount than approved claims. There were no rejected immunotherapy claims in the dataset.

-- =====================================================
-- ANALYSIS 17 RESULT: Claims by Year

-- Result:
-- 2021 = 15 claims
-- 2022 = 26 claims
-- 2023 = 34 claims

-- Finding:
-- The number of cancer claims increased each year, from 15 claims in 2021 to 26 claims in 2022 and 34 claims in 2023.

-- =====================================================
-- ANALYSIS 18 RESULT: Total Approved Claim Amount by Cancer Type

-- Result:
-- Lung = ₹12,270,000
-- Breast = ₹10,590,000
-- Blood = ₹9,220,000
-- Colon = ₹3,390,000
-- Prostate = ₹0

-- Finding:
-- Lung cancer accounts for the highest total approved claim amount at ₹12.27 million, followed by breast cancer at ₹10.59 million and blood cancer at ₹9.22 million. Prostate has no approved claim amount in this dataset because all prostate claims were rejected.
-- =====================================================
-- ANALYSIS 19 RESULT: Claims by Hospital Type
-- =====================================================

-- Result:
-- Private = 54 claims
-- Public = 21 claims

-- Finding:
-- Private hospitals handled the higher number of cancer claims in our dataset, with 54 claims compared with 21 claims handled by public hospitals.

-- =====================================================
-- ANALYSIS 20 RESULT: Claims by Hospital City

-- Result:
-- Delhi = 15 claims
-- Mumbai = 15 claims
-- Bengaluru = 15 claims
-- Jaipur = 8 claims
-- Pune = 8 claims
-- Kolkata = 7 claims
-- Chennai = 7 claims

-- Finding:
-- Delhi, Mumbai and Bengaluru have the highest number of cancer claims, with 15 claims each. Kolkata and Chennai have the lowest number of claims, with 7 claims each, in our dataset.