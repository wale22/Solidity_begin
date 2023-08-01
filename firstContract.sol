// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.9.0;

contract Myfirst{
   // varaibles and data types
   string public mystr= "i am a string";
   int public myInt=1;
   // or 
   int public myIntnve =-2;
   uint public mypveInt=1;
   bool public myBool= true;

   // this is a function that is executed immediately the contract is called, it can be used for varriable declaration or to call other functions
   constructor() {   
   }

   // stucts in solidity are just like classes they are used to create other datatypes and they can be used to create a model for saving datas in the database
   struct person {
        string usrName;
        int age;
        string height;
    }

    // array declartion in solidiy, an array acts as a storage in solidity

    uint8[] public numbers=[1,2,3,3,4];

    person[] public persons;


    // mappings, they are also used to create key-value pair, ie they can be used to assign a value to a key or and id to it's value

    mapping(int => person) public user;

    // functions, there are two types of function; one for viewing and showing results, the other for execution of an action

    function addUser(string memory userName, int age, string memory height) public{
        person memory newperson= person(userName, age, height);
        persons.push(newperson);
    }

    // repeating adding user using maping
    
    function addmpUser(int id, string memory userName, int age, string memory height) public{
        person memory newperson= person(userName, age, height);
        user[id] =newperson;
    }

}


