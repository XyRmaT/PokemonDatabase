//TEST QUERIES

//1. 

update location l set l.lname = 'route 5' where l.lname = 'Cerulean City Gym'
//any location name called cerulean city gym will be updated to route 5

select t.LName from trainers t where t.name = 'Leader Misty'
//location of Leader Misty should now be route 5

select l.Lname from live l where l.TID = "Misty"
//location name in table: live where TID: misty should be changed to route 5


//2. 

delete from pokemon p where p.PID = 1
//the entire row - where PID= 1 should be deleted


//3.

update type_is t set t.Tname = 'stone' where t.Tname = 'rock'
// updates the type name to stone from rock

select m.Name from moves m where m.type ="stone"
//the type: rock in table: moves should be: stone

select g.TID from gymLeader g where g.type = "stone"
//the # of TID should be the same as before - all types: rock should be changed to: stone

select t.PID from type_is t where t.TName = "stone"
//the # of TID should be the same as before - all types: rock should be changed to: stone


// 4.

delete from item i where i.IID = "Thunderstone"
// check the evolves table: e.requirement= null where e.PID = 26

select il.iid from item_Loc il where il.name = 'Celadon Dept. Store'
//should give null (or empty?) since thunderstone is deleted


//5.

update pokemon p set p.PID = 200 where p.PID = 2
//evolves_from becomes 200

select e.evolves_from from evolves e where e.PID = 3

select p.Lname from poke_found p where p.PID = 200
//PID in pokemon_found will also change


//6. 

update gymLeader g set g.TID "Gary" where g.TID = "Brock"
//Brock is changed to Gary in tables: trainer_lives

select l.Lname from live l where l.TID = "Gary"
//returns the lname for brock whose name is changed to Gary


//7. 

update pokemon p set p.pid = 200 where p.pid = 1
//check in table: evolve, evolves from of venasaur, pid is now 200
































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































