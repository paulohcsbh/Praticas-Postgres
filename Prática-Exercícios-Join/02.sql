SELECT testimonials.id, users.name AS "writer", users2.name AS "recipient", testimonials.message 
FROM testimonials 
JOIN users ON testimonials."writerId" = users.id 
JOIN users users2 ON testimonials."recipientId" = users2.id
;