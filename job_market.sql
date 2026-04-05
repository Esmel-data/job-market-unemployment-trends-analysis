use esmel
-- Top 5 regions with highest average unemployment rate
SELECT
    region,
    ROUND(AVG(unemployment_rate), 2) AS average_unemployment_rate
FROM job_market_unemployment_trends
GROUP BY region
ORDER BY average_unemployment_rate DESC
LIMIT 5;

-- Annual evolution of average unemployment rate
SELECT
    year,
    ROUND(AVG(unemployment_rate), 2) AS average_unemployment_rate
FROM job_market_unemployment_trends
GROUP BY year
ORDER BY year ASC;

-- Regions with high unemployment AND low job offers (double vulnerability)
SELECT
    region,
    ROUND(AVG(unemployment_rate), 2)  AS average_unemployment_rate,
    ROUND(AVG(job_offers), 0) AS average_job_offers
FROM job_market_unemployment_trends
WHERE unemployment_level    = 'High'
  AND categories_offers  = 'Low'
GROUP BY region
ORDER BY average_unemployment_rate DESC;

-- Average market tension index by region
SELECT
    region,
    ROUND(AVG(market_tension), 2) AS average_tension
FROM job_market_unemployment_trends
GROUP BY region
ORDER BY average_tension DESC;

-- Average unemployment rate by age group
SELECT
    age_range,
    ROUND(AVG(unemployment_rate), 2)  AS average_unemployment_rate,
    ROUND(AVG(job_offers), 0) AS average_job_offers
FROM job_market_unemployment_trends
GROUP BY age_range
ORDER BY average_unemployment_rate DESC;

-- Impact of education level on unemployment rate
SELECT
    education_level,
    ROUND(AVG(unemployment_rate), 2)  AS average_unemployment_rate,
    ROUND(AVG(job_offers), 0) AS average_job_offers,
    COUNT(*)                      AS nb_observations
FROM job_market_unemployment_trends
GROUP BY education_level
ORDER BY average_unemployment_rate ASC;

-- Job offers volume by skill family
SELECT
    family_skills,
    SUM(job_offers)            AS total_offers,
    ROUND(AVG(job_offers), 0)  AS average_offers,
    COUNT(*)                       AS nb_observations
FROM job_market_unemployment_trends
GROUP BY family_skills
ORDER BY total_offers DESC;

-- Average job offers by month to detect seasonal recruitment peaks
SELECT
    month,
    ROUND(AVG(job_offers), 0) AS average_offers
FROM job_market_unemployment_trends
GROUP BY month
ORDER BY average_offers DESC;

-- Top region and skill family combinations by job offers volume
SELECT
    region,
    family_skills,
    SUM(job_offers)           AS total_offers,
    ROUND(AVG(unemployment_rate), 2)  AS average_unemployment_rate
FROM job_market_unemployment_trends
GROUP BY region, family_skills
ORDER BY total_offers DESC
LIMIT 10;

-- Profile of low unemployment regions (age, education, skills)
SELECT
    region,
    age_range,
    education_level,
    family_skills,
    ROUND(AVG(unemployment_rate), 2)  AS average_unemployment_rate,
    ROUND(AVG(market_tension), 2) AS average_tension,
    ROUND(AVG(job_offers), 0) AS average_offers
FROM job_market_unemployment_trends
WHERE unemployment_level = 'Low'
GROUP BY region, age_range, education_level, family_skills
ORDER BY average_unemployment_rate ASC
LIMIT 10;