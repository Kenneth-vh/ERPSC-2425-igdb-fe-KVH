using { sap.igdbfe.cap as my } from '../db/schema';

service GameService {

  entity Game @readonly as projection on my.Game;

  // Add Insertable to the Student entity
  entity Student  as projection on my.Student;

  // Add Insertable to the FavoriteGame entity (if you want users to add favorites)
  entity FavoriteGame as projection on my.FavoriteGame;

}
