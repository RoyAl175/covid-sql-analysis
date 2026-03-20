-- Exploring dataset

SELECT *
FROM CovidDeaths;

SELECT *
FROM CovidVaccinations;

-- Checking null values
SELECT location, date, total_cases, total_deaths
FROM CovidDeaths
WHERE total_cases IS NULL OR total_deaths IS NULL;
