// SPDX-License-Identifier: MIT

pragma solidity ^0.6.8;
  
// Creating a Smart Contract
contract Userdetailstore{
  
   // Structure of User
   struct User{
       
       // State variables
       int userid;
       string name;
       string email;
       string phno;
   }
   
   User []emps;
  
   // Function to add 
   // User details
   function addUser(
     int userid, string memory name, 
     string memory email, 
     string memory phno
   ) public{
       User memory e
         =User(userid,
                   name,
                   email,
                   phno);
       emps.push(e);
   }
  
  // Function to get
  // details of User
   function getUser(
     int userid
   ) public view returns(
     string memory, 
     string memory, 
     string memory){
       uint i;
       for(i=0;i<emps.length;i++)
       {
           User memory e
             =emps[i];
           
           // Looks for a matching 
           // User id
           if(e.userid==userid)
           {
                  return(e.name,
                      e.email,
                      e.phno);
           }
       }
       
     // If provided User 
     // id is not present
     // it returns Not 
     // Found
     return("Not Found",
            "Not Found",
            "Not Found");
   }
}
