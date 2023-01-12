SELECT schools.name AS school, courses.name AS course, COUNT("courseId") AS "studentsCount", educations.status AS status 
FROM users 
JOIN educations ON users.id = educations."userId" 
JOIN schools ON schools.id = educations."schoolId" 
JOIN courses ON educations."courseId" = courses.id 
WHERE status = 'finished' OR status = 'ongoing' 
GROUP BY schools.name, courses.name, educations.status 
LIMIT 3;
