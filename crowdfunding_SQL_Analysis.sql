-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT COUNT(b.backer_id), cp.cf_id 
INTO backer_count_live
FROM campaign as cp
	INNER JOIN backers as b
		ON cp.cf_id = b.cf_id
	WHERE (outcome = 'live')
	Group BY cp.cf_id
	ORDER BY Count(b.backer_id) DESC;
	
SELECT * FROM backer_count_live;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT COUNT(b.backer_id), cp.cf_id 
INTO backer_count_live_check
FROM backers as b
	INNER JOIN campaign as cp
		ON cp.cf_id = b.cf_id
	WHERE (outcome = 'live')
	Group BY cp.cf_id
	ORDER BY Count(b.backer_id) DESC;
	
SELECT * FROM backer_count_live_check;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT co.first_name,
	co.last_name,
	co.email,
	(cp.goal - cp.pledged) AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts as co
	INNER JOIN campaign as cp
		ON co.contact_id = cp.contact_id
	WHERE (outcome = 'live')
	ORDER BY "Remaining Goal Amount" DESC;

-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT b.email,
	b.first_name,
	b.last_name,
	cp.cf_id,
	cp.company_name,
	cp.description,
	cp.end_date,
	(cp.goal - cp.pledged) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers as b
	INNER JOIN campaign as cp
		ON b.cf_id = cp.cf_id
	WHERE (outcome = 'live')
	ORDER BY b.last_name, b.email ASC;
		
-- Check the table
SELECT * FROM email_backers_remaining_goal_amount;

