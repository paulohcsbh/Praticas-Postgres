SELECT educations.id, users.name AS "name", courses.name AS "course", schools.name AS "school", educations."endDate" AS "endDate" 
FROM educations 
JOIN users ON educations."userId" = users.id 
JOIN courses ON courses.id = educations."courseId" 
JOIN schools ON schools.id = educations."schoolId" 
WHERE "userId" = 30;