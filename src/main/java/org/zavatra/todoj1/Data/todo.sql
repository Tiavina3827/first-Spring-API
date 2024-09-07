\c postgres
DROP DATABASE todo;
CREATE DATABASE todo;
\c todo;
CREATE TABLE todo(
    todo_id int PRIMARY KEY ,
    title VARCHAR ,
    description TEXT,
    importance VARCHAR CHECK(importance in ('High','Medium','Low')),
    creation_date DATE,
    deadline DATE,
    execution_date DATE,
    status VARCHAR CHECK(status in ('Done','In Progress'))
);

INSERT INTO todo (todo_id, title, description, importance, creation_date, deadline, execution_date, status) VALUES
(1, 'Buy groceries', 'Buy fruits, vegetables, and dairy products.', 'High', '2024-08-25', '2024-08-26', NULL, 'In Progress'),
(2, 'Write report', 'Finish the quarterly financial report.', 'Medium', '2024-08-26', '2024-08-30', NULL, 'In Progress'),
(3, 'Gym', 'Complete the weekly workout session.', 'Low', '2024-08-26', '2024-08-27', '2024-08-27', 'Done'),
(4, 'Book flight', 'Book a flight for the conference.', 'High', '2024-08-27', '2024-08-28', NULL, 'In Progress'),
(5, 'Meeting with client', 'Discuss the project details and timeline.', 'Medium', '2024-08-27', '2024-08-29', '2024-08-29', 'Done'),
(6, 'Renew subscription', 'Renew the software subscription.', 'Low', '2024-08-28', '2024-09-01', NULL, 'In Progress'),
(7, 'Pay bills', 'Pay electricity and water bills.', 'High', '2024-08-28', '2024-08-29', '2024-08-29', 'Done'),
(8, 'Team lunch', 'Organize a team lunch at a nearby restaurant.', 'Medium', '2024-08-29', '2024-09-02', NULL, 'In Progress'),
(9, 'Doctor appointment', 'Visit the doctor for a routine checkup.', 'Low', '2024-08-29', '2024-08-30', '2024-08-30', 'Done'),
(10, 'Prepare presentation', 'Prepare the slides for the upcoming presentation.', 'High', '2024-08-30', '2024-09-03', NULL, 'In Progress'),

(11, 'Schedule meeting', 'Schedule a meeting with the marketing team.', 'Medium', '2024-08-30', '2024-09-01', NULL, 'In Progress'),
(12, 'Laundry', 'Do the laundry and fold clothes.', 'Low', '2024-09-01', '2024-09-01', '2024-09-01', 'Done'),
(13, 'Update software', 'Update the system software to the latest version.', 'High', '2024-09-01', '2024-09-02', NULL, 'In Progress'),
(14, 'Plan vacation', 'Plan the itinerary for the upcoming vacation.', 'Medium', '2024-09-02', '2024-09-05', NULL, 'In Progress'),
(15, 'Research project', 'Conduct research for the new project.', 'High', '2024-09-02', '2024-09-07', NULL, 'In Progress'),
(16, 'Clean house', 'Clean the living room and kitchen.', 'Low', '2024-09-03', '2024-09-04', NULL, 'In Progress'),
(17, 'Prepare tax documents', 'Gather and prepare tax documents for filing.', 'Medium', '2024-09-03', '2024-09-10', NULL, 'In Progress'),
(18, 'Dentist appointment', 'Visit the dentist for a cleaning.', 'Low', '2024-09-04', '2024-09-05', '2024-09-05', 'Done'),
(19, 'Submit assignment', 'Submit the project assignment to the professor.', 'High', '2024-09-04', '2024-09-06', NULL, 'In Progress'),
(20, 'Yoga class', 'Attend the weekly yoga class.', 'Low', '2024-09-05', '2024-09-05', '2024-09-05', 'Done'),

(21, 'Organize files', 'Organize documents and files on the computer.', 'Medium', '2024-09-05', '2024-09-06', NULL, 'In Progress'),
(22, 'Grocery shopping', 'Restock pantry items and household supplies.', 'Low', '2024-09-06', '2024-09-07', NULL, 'In Progress'),
(23, 'Prepare dinner', 'Cook a special dinner for guests.', 'High', '2024-09-06', '2024-09-06', '2024-09-06', 'Done'),
(24, 'Write blog post', 'Write and publish a new blog post.', 'Medium', '2024-09-07', '2024-09-09', NULL, 'In Progress'),
(25, 'Watch webinar', 'Attend an online webinar on industry trends.', 'Low', '2024-09-07', '2024-09-08', '2024-09-08', 'Done'),
(26, 'Plan birthday party', 'Plan the details for the birthday party.', 'High', '2024-09-08', '2024-09-15', NULL, 'In Progress'),
(27, 'Meditation', 'Spend time meditating and relaxing.', 'Low', '2024-09-08', '2024-09-08', '2024-09-08', 'Done'),
(28, 'Order supplies', 'Order office supplies for the team.', 'Medium', '2024-09-09', '2024-09-11', NULL, 'In Progress'),
(29, 'Read book', 'Finish reading the current book.', 'Low', '2024-09-09', '2024-09-10', NULL, 'In Progress'),
(30, 'Client feedback', 'Gather feedback from clients on the new service.', 'High', '2024-09-10', '2024-09-12', NULL, 'In Progress'),

(31, 'Visit parents', 'Spend the weekend with parents.', 'Medium', '2024-09-10', '2024-09-11', NULL, 'In Progress'),
(32, 'Repair car', 'Take the car to the workshop for repairs.', 'Low', '2024-09-11', '2024-09-12', NULL, 'In Progress'),
(33, 'Exercise', 'Complete the daily workout routine.', 'High', '2024-09-11', '2024-09-11', '2024-09-11', 'Done'),
(34, 'Brainstorm ideas', 'Brainstorm ideas for the new campaign.', 'Medium', '2024-09-12', '2024-09-14', NULL, 'In Progress'),
(35, 'Volunteer', 'Volunteer at the community center.', 'Low', '2024-09-12', '2024-09-13', NULL, 'In Progress'),
(36, 'Prepare budget', 'Prepare the budget for the next quarter.', 'High', '2024-09-13', '2024-09-15', NULL, 'In Progress'),
(37, 'Walk dog', 'Take the dog for a walk in the park.', 'Low', '2024-09-13', '2024-09-13', '2024-09-13', 'Done'),
(38, 'Update website', 'Update the content and design of the website.', 'Medium', '2024-09-14', '2024-09-20', NULL, 'In Progress'),
(39, 'Plan workshop', 'Organize a workshop for the team.', 'High', '2024-09-14', '2024-09-18', NULL, 'In Progress'),
(40, 'Weekend getaway', 'Plan a weekend getaway to the mountains.', 'Low', '2024-09-15', '2024-09-18', NULL, 'In Progress');
