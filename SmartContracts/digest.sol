pragama solidity 0.4.21;

contract Digest is DRoom{

//only active player could serve drinks
modifier onlyPlayer(_name) {
    require(msg.sender == player[_name]);
    _;
  }
 
 function digestDrink (uint _guestId, uint _drinkId) public onlyPlayer{
 
 	//add H2O Energy and Alcohol oz to Guest profile
	//calculate the new Feel() state of this Guest
	feelingResult(health, alcohol, temperament)
	
	//load on partySackState[] this new feeling Guest parameter, alcohol index and timestamp.
 
 }
 
 function feelResult(unit _health, uint _alcohol, uint _temperament)internal pure returns(uint){
 
 uint=feeling;
 //mathematical fiction calc: (hlt/alc)*1/temp
 feeling = (_health/_alcohol)*_temperament;

 
 return feeling;
 
 }
 
 
  

}



/*
Poor: >28cm; Below average: 204-28cm; Average: 15.9–20.4cm; Above average: 7.5–15.9cm; and Excellent: <7.5cm (14)

Sweat Rate Formula
SR = [(pre BW - Post BW) + Fluid Consumed – Urine Volume] / Exercise Time (Hours)
SR = Sweat Rate Pre BW - Pre-exercise body weight Post BW - Post-exercise body weight

BAC calculator Formula:
   BAC% = (A × 5.14/W × r) - .015 × H 
Where:
   A: Total alcohol consumed, in ounces (oz)
   W: Body weight, in pounds (lbs)
   r: The alcohol distribution ratio, 0.73 for man, and 0.66 for women
   H: Time passed since drinking, in hours

Note:BAC can be measured by breath or blood test. The breath test will be translated into blood alcohol content (BAC).

*/