select*
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
join SQ_TutorialAlexAnalystYT..EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId

select Job_Title, count(Job_Title)
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
join SQ_TutorialAlexAnalystYT..EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId
group by Job_Title
having count(Job_Title) > 1;
-- penggunaan having count untuk melakukan kolom yang melakukan agregasi
-- agregasi disini adalah count(job_title)
-- where digunakan yang tidak agregasi
-- peletakan having count setelah group by

select Job_Title, avg(Salary)
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
join SQ_TutorialAlexAnalystYT..EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId
group by Job_Title
having avg(salary) > 45000
order by avg(salary);
-- bisa digabungkan dengan perintah order by
