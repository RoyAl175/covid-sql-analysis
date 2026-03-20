-- Total cases vs population
SELECT location, population, MAX(total_cases) AS max_cases,
(MAX(total_cases) / population) * 100 AS infection_rate
FROM CovidDeaths
GROUP BY location, population
ORDER BY infection_rate DESC;

-- Death percentage
SELECT location, MAX(total_deaths) AS deaths,
MAX(total_cases) AS cases,
(MAX(total_deaths) / MAX(total_cases)) * 100 AS death_rate
FROM CovidDeaths
GROUP BY location
ORDER BY death_rate DESC;

