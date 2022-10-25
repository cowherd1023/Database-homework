SELECT Region.RegionDescription,Employee.FirstName,Employee.LastName,max(Employee.BirthDate)
FROM EmployeeTerritory,Employee,Territory,Region
WHERE EmployeeTerritory.EmployeeId=Employee.Id and EmployeeTerritory.TerritoryId=Territory .Id and Territory .RegionId=Region.Id
GROUP BY Region.Id