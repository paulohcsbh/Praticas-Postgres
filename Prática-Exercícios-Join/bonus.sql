SELECT users.id as id, schools.name as school, courses.name as course, companies.name as company, roles.name as role 
FROM users
JOIN educations ON educations."userId" = users.id 
JOIN schools ON educations."schoolId" = schools.id 
JOIN courses ON educations."courseId" = courses.id 
JOIN applicants ON users.id = applicants."userId" 
JOIN jobs ON applicants."jobId" = jobs.id 
JOIN companies ON jobs."companyId" = companies.id 
JOIN roles ON jobs."roleId" = roles.id 
WHERE companies.id = 10 AND jobs.active = TRUE AND roles.name = 'Software Engineer';
