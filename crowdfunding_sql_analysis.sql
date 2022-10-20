-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT cf_id, backers_count from campaign
	WHERE outcome = 'live'
ORDER by backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT count (backer_id), cf_id from backers
group by cf_id
order by count(backer_id) DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT 
	first_name,
	last_name,
	email
	into email_contacts_remaining_goal_amount
	FROM contacts
	inner join campaign ON (campaign.contact_id = contacts.contact_id)
	WHERE outcome = 'live'
	;
Alter TABLE email_contacts_remaining_goal_amount
	ADD Remaining_Goal_Amount NUMERIC
insert into email_contacts_remaining_goal_amount (Remaining_Goal_Amount)


select * from email_contacts_remaining_goal_amount	
	


-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table